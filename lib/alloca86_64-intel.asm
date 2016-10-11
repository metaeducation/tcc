PUBLIC r3_tcc_alloca
_TEXT SEGMENT

r3_tcc_alloca PROC
    pop     rdx                    ;pop     %rdx
    mov     rax,rcx                ;mov     %rcx,%rax
    add     rax,15                 ;add     $15,%rax
    and     rax,-16                ;and     $-16,%rax
    jz      p3

p1:
    cmp     rax,4096               ;cmp     $4096,%rax
    jbe     p2
    test    rax,[rsp-4096]         ;test    %rax,-4096(%rsp)
    sub     rsp,4096               ;sub     $4096,%rsp
    sub     rax,4096               ;sub     $4096,%rax
    jmp p1
p2:

    sub     rsp,rax                ;sub     %rax,%rsp
    mov     rax,rsp                ;mov     %rsp,%rax
    add     rax,32                 ;add     $32,%rax

p3:
    push    rdx                    ;push    %rdx
    ret

r3_tcc_alloca ENDP
_TEXT ENDS
END
