.global hash_crc32_asm

 hash_crc32_asm:
    cmp %rdi, 0x0
    je .end

    crc32q     (%rdi), %rax
    crc32q 0x08(%rdi), %rax 
    crc32q 0x10(%rdi), %rax 
    crc32q 0x18(%rdi), %rax

    .end:

    ret

