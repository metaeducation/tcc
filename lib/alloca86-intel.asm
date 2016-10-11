PUBLIC _r3_tcc_alloca

_TEXT SEGMENT

_r3_tcc_alloca PROC
    pop     edx                    ;pop     %edx
    pop     eax                    ;pop     %eax
    add     eax,3                  ;add     $3,%eax
    and     eax,-4                 ;and     $-4,%eax
    jz      p3

p1:
    cmp     eax,4096               ;cmp     $4096,%eax
    jbe     p2
    test    [esp-4096],eax         ;test    %eax,-4096(%esp)
    sub     esp,4096               ;sub     $4096,%esp
    sub     eax,4096               ;sub     $4096,%eax
    jmp p1
p2:

    sub     esp,eax                ;sub     %eax,%esp
    mov     eax,esp                ;mov     %esp,%eax
p3:
    push    edx                    ;push    %edx
    push    edx                    ;push    %edx
    ret

_r3_tcc_alloca ENDP
_TEXT ENDS
END
