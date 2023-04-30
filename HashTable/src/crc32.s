.global hash8_crc32_assembler

 hash8_crc32_assembler:
    cmp $0x0, %rdi
    je .end

    crc32q     (%rdi), %rax
    crc32q 0x08(%rdi), %rax 
    crc32q 0x10(%rdi), %rax 
    crc32q 0x18(%rdi), %rax

    .end:

    ret

