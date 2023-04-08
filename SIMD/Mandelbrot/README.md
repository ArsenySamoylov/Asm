### Пример множества Мандельброта, создаваемого программой
![Пример множества Мандельброта, создаваемый программой](examples/mandelbrot.png)

### Алгоритм рассчета точек
Множество Мандельброта - это математический объект, в суть которого мы погружаться не будем. В кратце: Есть исходные кординаты точек, с которыми на каждом шаге цикл происходят определенные преобразовнаия, котоорые, при определенном условии останавливаются. Колличество произведденных итераций преобразовнаий над исходной точкой явяется ключевой характеристкикой, которая определяет цвет, в который юудет окрашена точка. 

### Испоьзование SIMD инструкциий
такая задача хорошо показывает преимущество использования SIMD инструкции при вычислениях. Базовым типом для координат ялвяется int32. С ипользованием XMM и YMM регистров можно одновременно обрабатывпть 8 чисел типа int32

### Использование SIMD инструкций
Базыовый тип для храниения цвета одного пикселя - int32. AVX позволяет работать одновременно с 8-мью пикселями

### Примеры кода
Сразу заметно, что код, написсаный на intrinsic-ах заметно объемнее и менее читабельный. Так же, хорошо формулирующийся алгоритм быстро и понятно пишется при помощи стандартных методов, а код при использовании intrinsic-ов заметно дольше и тяжелее. Написание неоптимизированной функции у меня заняло около 20-30 минут (с учетом отладки), в то время как на оптимизированную версию с intrinsic-ами потребовалось несколько часов.

#### Стандартная функция
```
int CalculateMandalbrot_not_optimized (pixel_color* color_array, unsigned screen_width, unsigned screen_height)
    {
    float x_delta = (X_MAX - X_MIN) / (float) screen_width;
    float y_delta = (Y_MAX - Y_MIN) / (float) screen_height;

    unsigned y_screen_coord = 0;
    unsigned x_screen_coord = 0;
    
    for (float y_coord = Y_MIN; y_screen_coord < screen_height; y_coord += y_delta, y_screen_coord++)
        {
        x_screen_coord = 0;
        
        for (float  x_coord = X_MIN; x_screen_coord < screen_width; x_coord += x_delta, x_screen_coord++)
            {
            pixel_color iteration = 0;

            float x = x_coord;
            float y = y_coord; 

            for(; iteration < MAX_ITERATION_TIMES; iteration++)
                {
                if (x*x + y*y >= R_MAX_SQR)
                    break;

                float temp_x = x*x - y*y + x_coord;
                float temp_y = 2*x*y     + y_coord;

                x = temp_x;
                y = temp_y;
                } 
            
            color_array[y_screen_coord * screen_width + x_screen_coord] = iteration; 
            }
        }
    
    return SUCCESS;
    }
```
#### С использованием AVX
```
int CalculateMandalbrot_optimized_avx (pixel_color* color_array, unsigned screen_width, unsigned screen_height)
    {
    float x_delta = (X_MAX - X_MIN) / (float) screen_width;
    float y_delta = (Y_MAX - Y_MIN) / (float) screen_height;

    __m256 temp = _mm256_set_ps (7*x_delta, 6*x_delta, 5*x_delta, 4*x_delta, 3*x_delta, 2*x_delta, 1*x_delta, 0);

    unsigned y_screen_coord = 0;
    unsigned x_screen_coord = 0;    

    __m256  r_max_sqr      = _mm256_set1_ps    (R_MAX_SQR);
    __m256i iteration_step = _mm256_set1_epi32 (1);

    for (float y_coord = Y_MIN; y_screen_coord < screen_height; y_coord += y_delta, y_screen_coord++)
        {
        x_screen_coord = 0;
        
        __m256 y_0 = _mm256_set1_ps(y_coord);

        for (float  x_coord = X_MIN; x_screen_coord < screen_width; x_coord += NUMBER_OF_PACKED_FLOATS * x_delta, x_screen_coord += NUMBER_OF_PACKED_FLOATS)
            {
            __m256 x_0  = _mm256_set1_ps(x_coord);
                   x_0  = _mm256_add_ps (temp, x_0);

            __m256 x = x_0;
            __m256 y = y_0;

            __m256i iteration = _mm256_set1_epi32 (0);

            for(int it = 0; it < MAX_ITERATION_TIMES; it++)
                {
                __m256 x_sqr = _mm256_mul_ps (x, x);
                __m256 y_sqr = _mm256_mul_ps (y, y);

                __m256 xy_2  = _mm256_mul_ps (x, y);
                       xy_2  = _mm256_add_ps (xy_2, xy_2);

                __m256i cmp = _mm256_castps_si256 (_mm256_cmp_ps (_mm256_add_ps (x_sqr, y_sqr), r_max_sqr, _CMP_LE_OQ));
                
                if (!_mm256_movemask_ps (_mm256_castsi256_ps(cmp)))
                    break;

                cmp       = _mm256_and_si256 (iteration_step, cmp);
                iteration = _mm256_add_epi32 (cmp, iteration);

                x = _mm256_add_ps (_mm256_sub_ps(x_sqr, y_sqr), x_0);
                y = _mm256_add_ps (xy_2, y_0);
                } 

               _mm256_storeu_si256 ((__m256i*)color_array, iteration);

            }
        }
    
    return SUCCESS;
    }
```
### Генерирующийся машинный код
Посмотрим какой машинный код сгенерировал компилятор для каждой из функций. Сразу можно заметить, что, если иcходные версии значительно отличались по объему кода, то колличестово машшиных команд в них примерное одинаковое. Это можно объяснить тем, что данные intrinsic-и посути являются ассемблерными командами. Следовательно написание кода с их помощью аналогично написанию ассемблерного кода. Этим хорошо объяснятеся большой объем исходного кода и сложноcть его написания. 
#### Обычный код
```
CalculateMandalbrot_not_optimized(unsigned char*, unsigned int, unsigned int):
        testq   %rdi, %rdi
        je      .L21
        vxorps  %xmm0, %xmm0, %xmm0
        movl    %esi, %eax
        vmovss  .LC5(%rip), %xmm7
        vmovss  .LC6(%rip), %xmm8
        vcvtsi2ssq      %rax, %xmm0, %xmm1
        movl    %edx, %eax
        vcvtsi2ssq      %rax, %xmm0, %xmm0
        vdivss  %xmm1, %xmm7, %xmm7
        vdivss  %xmm0, %xmm8, %xmm8
        testl   %edx, %edx
        je      .L8
        movq    %rdi, %r9
        movl    %esi, %r8d
        xorl    %r11d, %r11d
        xorl    %r10d, %r10d
        vmovss  .LC1(%rip), %xmm6
.L7:
        vmovss  .LC0(%rip), %xmm5
        movl    %r11d, %ecx
        testl   %esi, %esi
        je      .L11
.L12:
        vmovaps %xmm6, %xmm2
        vmovaps %xmm5, %xmm0
        xorl    %eax, %eax
        jmp     .L10
.L14:
        vmovaps %xmm1, %xmm0
.L10:
        vmulss  %xmm0, %xmm0, %xmm1
        vmulss  %xmm2, %xmm2, %xmm3
        vaddss  %xmm3, %xmm1, %xmm4
        vcomiss .LC7(%rip), %xmm4
        jnb     .L9
        vaddss  %xmm0, %xmm0, %xmm0
        vsubss  %xmm3, %xmm1, %xmm1
        addl    $1, %eax
        vmulss  %xmm2, %xmm0, %xmm2
        vaddss  %xmm5, %xmm1, %xmm1
        vaddss  %xmm6, %xmm2, %xmm2
        cmpb    $10, %al
        jne     .L14
.L9:
        movl    %ecx, %edi
        addl    $1, %ecx
        vaddss  %xmm7, %xmm5, %xmm5
        movb    %al, (%r9,%rdi)
        cmpl    %ecx, %r8d
        jne     .L12
.L11:
        addl    $1, %r10d
        vaddss  %xmm8, %xmm6, %xmm6
        addl    %esi, %r8d
        addl    %esi, %r11d
        cmpl    %r10d, %edx
        jne     .L7
.L8:
        xorl    %eax, %eax
        ret
```
#### Код с использованием SIMD инструкциий
```
CalculateMandalbrot_optimized_avx(unsigned char*, unsigned int, unsigned int):
        pushq   %rbp
        movq    %rsp, %rbp
        andq    $-32, %rsp
        subq    $32, %rsp
        movq    %rdi, %rcx
        testq   %rdi, %rdi
        je      .L20
        movl    %esi, %edi
        movl    %edx, %r9d
        vxorps  %xmm0, %xmm0, %xmm0
        movl    %esi, %eax
        vcvtsi2ssq      %rax, %xmm0, %xmm1
        vmovss  .LC5(%rip), %xmm12
        vdivss  %xmm1, %xmm12, %xmm12
        movl    %edx, %eax
        vcvtsi2ssq      %rax, %xmm0, %xmm0
        vmovss  .LC6(%rip), %xmm13
        vdivss  %xmm0, %xmm13, %xmm13
        vaddss  %xmm12, %xmm12, %xmm1
        vmulss  .LC5(%rip), %xmm12, %xmm3
        vmulss  .LC7(%rip), %xmm12, %xmm0
        vmulss  .LC8(%rip), %xmm12, %xmm4
        vmulss  .LC9(%rip), %xmm12, %xmm2
        vmulss  .LC10(%rip), %xmm12, %xmm5
        vunpcklps       %xmm5, %xmm2, %xmm2
        vunpcklps       %xmm4, %xmm0, %xmm0
        vmovlhps        %xmm2, %xmm0, %xmm0
        vunpcklps       %xmm3, %xmm1, %xmm1
        vxorps  %xmm9, %xmm9, %xmm9
        vunpcklps       %xmm12, %xmm9, %xmm9
        vmovlhps        %xmm1, %xmm9, %xmm9
        vinsertf128     $0x1, %xmm0, %ymm9, %ymm9
        testl   %edx, %edx
        je      .L7
        vmovss  .LC0(%rip), %xmm11
        movl    $0, %r8d
        vmovss  .LC12(%rip), %xmm14
        vpxor   %xmm10, %xmm10, %xmm10
        vbroadcastss    .LC7(%rip), %ymm6
        jmp     .L13
.L20:
        movl    $.LC2, %ecx
        movl    $35, %edx
        movl    $.LC3, %esi
        movl    $.LC4, %edi
        call    __assert_fail
.L14:
        movl    $0, %eax
.L11:
        movl    (%rsp,%rax,4), %edx
        movb    %dl, (%rcx,%rax)
        addq    $1, %rax
        cmpq    $8, %rax
        jne     .L11
        addq    $8, %rcx
        vaddss  %xmm8, %xmm7, %xmm7
        addl    $8, %esi
        cmpl    %edi, %esi
        jnb     .L8
.L12:
        vshufps $0, %xmm7, %xmm7, %xmm4
        vinsertf128     $1, %xmm4, %ymm4, %ymm4
        vaddps  %ymm9, %ymm4, %ymm4
        vmovdqa %ymm10, (%rsp)
        vmovaps %ymm5, %ymm1
        vmovaps %ymm4, %ymm0
        movl    $10, %eax
.L10:
        vmulps  %ymm0, %ymm0, %ymm2
        vmulps  %ymm1, %ymm1, %ymm3
        vmulps  %ymm1, %ymm0, %ymm0
        vaddps  %ymm0, %ymm0, %ymm1
        vaddps  %ymm3, %ymm2, %ymm0
        vcmpps  $18, %ymm6, %ymm0, %ymm0
        vmovmskps       %ymm0, %edx
        testl   %edx, %edx
        je      .L14
        vsubps  %ymm3, %ymm2, %ymm2
        vaddps  %ymm4, %ymm2, %ymm0
        vaddps  %ymm5, %ymm1, %ymm1
        subl    $1, %eax
        jne     .L10
        movl    $0, %eax
        jmp     .L11
.L8:
        vaddss  %xmm13, %xmm11, %xmm11
        addl    $1, %r8d
        cmpl    %r8d, %r9d
        je      .L7
.L13:
        vshufps $0, %xmm11, %xmm11, %xmm5
        vinsertf128     $1, %xmm5, %ymm5, %ymm5
        testl   %edi, %edi
        je      .L8
        vmulss  %xmm14, %xmm12, %xmm8
        vmovss  .LC1(%rip), %xmm7
        movl    $0, %esi
        jmp     .L12
.L7:
        movl    $0, %eax
        leave
        ret
```
