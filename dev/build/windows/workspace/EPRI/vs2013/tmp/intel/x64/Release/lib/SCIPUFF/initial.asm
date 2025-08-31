; mark_description "Intel(R) Visual Fortran Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.5.281 Bui";
; mark_description "ld 20190815";
; mark_description "/If90mod\\intel\\x64\\Release\\ /IU:\\scipuff\\Repository\\UNIX\\EPRIx64_OMP\\SCICHEM-3.2\\build\\windows\\w";
; mark_description "orkspace\\EPRI\\vs2013\\f90mod\\intel\\x64\\Release /IU:\\scipuff\\Repository\\UNIX\\EPRIx64_OMP\\SCICHEM-3.";
; mark_description "2\\build\\windows\\workspace\\EPRI\\vs2013\\f90mod\\intel\\x64\\Release /IU:\\scipuff\\Repository\\UNIX\\EPR";
; mark_description "Ix64_OMP\\SCICHEM-3.2\\build\\windows\\workspace\\EPRI\\vs2013\\f90mod\\intel\\x64\\Release /nologo /O2 /fpp";
; mark_description " /DKNAPPMILLER /recursive /Qopenmp /align:sequence /assume:byterecl /fp:source /names:uppercase /iface:cref ";
; mark_description "/iface:mixed_str_len_arg /module:f90mod\\intel\\x64\\Release\\ /object:tmp\\intel\\x64\\Release\\lib\\SCIPUF";
; mark_description "F/ /Fdlib\\intel\\x64\\Release\\SCIPUFFlib.pdb /Fatmp\\intel\\x64\\Release\\lib\\SCIPUFF/ /libs:static /thre";
; mark_description "ads /c /Qlocation,link,C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\VC\\\\bin\\amd64 /Qm64";
	OPTION DOTNAME
_TEXT	SEGMENT      'CODE'
TXTST0:
; -- Begin  CHECKPOLEFIELD
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC CHECKPOLEFIELD
; --- CHECKPOLEFIELD
CHECKPOLEFIELD	PROC 
; parameter 1: rcx
; parameter 2: rdx
.B1.1::                         ; Preds .B1.0
                                ; Execution count [0.00e+000]
L1::
                                                           ;1366.18
        push      rbx                                           ;1366.18
        push      rsi                                           ;1366.18
        push      rdi                                           ;1366.18
        push      r14                                           ;1366.18
        sub       rsp, 56                                       ;1366.18
        mov       r10, rdx                                      ;1366.18
        mov       rdi, rcx                                      ;1366.18
        lea       rcx, QWORD PTR [.2.52_2_kmpc_loc_struct_pack.12] ;1366.18
        mov       QWORD PTR [48+rsp], r10                       ;1366.18[spill]
        call      __kmpc_global_thread_num                      ;1366.18
                                ; LOE rbx rbp rsi rdi r12 r13 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.21::                        ; Preds .B1.1
                                ; Execution count [0.00e+000]
        mov       r8, QWORD PTR [.2.52_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1366.18
        mov       r10, QWORD PTR [48+rsp]                       ;[spill]
        test      r8, r8                                        ;1366.18
        je        .B1.3         ; Prob 50%                      ;1366.18
                                ; LOE rbx rbp rsi rdi r8 r10 r12 r13 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.2::                         ; Preds .B1.21
                                ; Execution count [0.00e+000]
        lea       ecx, DWORD PTR [rax*8]                        ;1366.18
        movsxd    rcx, ecx                                      ;1366.18
        mov       r14, QWORD PTR [r8+rcx]                       ;1366.18
        test      r14, r14                                      ;1366.18
        jne       .B1.5         ; Prob 50%                      ;1366.18
                                ; LOE rbx rbp rsi rdi r10 r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.3::                         ; Preds .B1.2 .B1.21
                                ; Execution count [0.00e+000]
        mov       r14, rsp                                      ;1366.18
        lea       rcx, QWORD PTR [.2.52_2_kmpc_loc_struct_pack.20] ;1366.18
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1366.18
        mov       edx, eax                                      ;1366.18
        lea       r11, QWORD PTR [.2.52_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1366.18
        mov       r9, QWORD PTR [.2.52_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28] ;1366.18
        mov       QWORD PTR [32+r14], r11                       ;1366.18
        mov       QWORD PTR [48+rsp], r10                       ;1366.18[spill]
        call      __kmpc_threadprivate_cached                   ;1366.18
                                ; LOE rax rbx rbp rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.22::                        ; Preds .B1.3
                                ; Execution count [0.00e+000]
        mov       r10, QWORD PTR [48+rsp]                       ;[spill]
        mov       r14, rax                                      ;1366.18
                                ; LOE rbx rbp rsi rdi r10 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.5::                         ; Preds .B1.22 .B1.2
                                ; Execution count [1.00e+000]
        test      BYTE PTR [rdi], 1                             ;1381.5
        je        .B1.13        ; Prob 60%                      ;1381.5
                                ; LOE rbx rbp rsi r10 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.6::                         ; Preds .B1.5
                                ; Execution count [4.00e-001]
        mov       edx, DWORD PTR [MET_FI_mp_NUMMET]             ;1383.3
        mov       edi, -1                                       ;1382.3
        test      edx, edx                                      ;1383.3
        jle       .B1.14        ; Prob 2%                       ;1383.3
                                ; LOE rbx rbp rsi r10 r12 r13 r14 r15 edx edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.7::                         ; Preds .B1.6
                                ; Execution count [3.92e-001]
        mov       eax, DWORD PTR [r10]                          ;1391.5
        mov       ebx, eax                                      ;1391.5
        mov       DWORD PTR [48+rsp], 1                         ;1383.3
        mov       esi, edx                                      ;1391.5
        jmp       .B1.8         ; Prob 100%                     ;1391.5
                                ; LOE rbp r12 r13 r14 r15 ebx esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.12::                        ; Preds .B1.11
                                ; Execution count [4.33e-001]
        mov       DWORD PTR [48+rsp], r8d                       ;1383.3
                                ; LOE rbp r12 r13 r14 r15 ebx esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.8::                         ; Preds .B1.12 .B1.7
                                ; Execution count [8.24e-001]
        lea       rcx, QWORD PTR [48+rsp]                       ;1384.11
        lea       rdx, QWORD PTR [52+rsp]                       ;1384.11
        call      SWIMGETGRIDTYPE                               ;1384.11
                                ; LOE rbp r12 r13 r14 r15 eax ebx esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.9::                         ; Preds .B1.8
                                ; Execution count [8.24e-001]
        cmp       eax, 1                                        ;1385.13
        jne       .B1.16        ; Prob 20%                      ;1385.13
                                ; LOE rbp r12 r13 r14 r15 ebx esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.10::                        ; Preds .B1.9
                                ; Execution count [6.59e-001]
        cmp       ebx, DWORD PTR [52+rsp]                       ;1391.15
        je        .B1.18        ; Prob 20%                      ;1391.15
                                ; LOE rbp r12 r13 r14 r15 ebx esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.11::                        ; Preds .B1.10
                                ; Execution count [5.28e-001]
        mov       r8d, DWORD PTR [48+rsp]                       ;1395.3
        inc       r8d                                           ;1395.3
        cmp       r8d, esi                                      ;1395.3
        jle       .B1.12        ; Prob 82%                      ;1395.3
        jmp       .B1.14        ; Prob 100%                     ;1395.3
                                ; LOE rbp r12 r13 r14 r15 ebx esi edi r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.13::                        ; Preds .B1.5
                                ; Execution count [6.00e-001]
        xor       edi, edi                                      ;1397.3
                                ; LOE rbx rbp rsi r12 r13 r15 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.14::                        ; Preds .B1.11 .B1.17 .B1.18 .B1.6 .B1.13
                                ;      
                                ; Execution count [1.00e+000]
        mov       eax, edi                                      ;1403.1
        add       rsp, 56                                       ;1403.1
        pop       r14                                           ;1403.1
        pop       rdi                                           ;1403.1
        pop       rsi                                           ;1403.1
        pop       rbx                                           ;1403.1
        ret                                                     ;1403.1
                                ; LOE
.B1.16::                        ; Preds .B1.9
                                ; Execution count [1.65e-001]: Infreq
        mov       r10, rsp                                      ;1387.7
        mov       rcx, r14                                      ;1387.7
        mov       edx, 80                                       ;1387.7
        lea       r8, QWORD PTR [__STRLITPACK_322]              ;1387.7
        mov       r9d, 14                                       ;1387.7
        mov       DWORD PTR [464+r14], 3                        ;1386.7
        mov       QWORD PTR [32+r10], 0                         ;1387.7
        call      for_cpystr                                    ;1387.7
                                ; LOE rbx rbp rsi r12 r13 r14 r15 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.17::                        ; Preds .B1.16
                                ; Execution count [1.65e-001]: Infreq
        mov       r10, rsp                                      ;1388.7
        add       r14, 80                                       ;1388.7
        mov       rcx, r14                                      ;1388.7
        mov       edx, 128                                      ;1388.7
        lea       r8, QWORD PTR [__STRLITPACK_321]              ;1388.7
        mov       r9d, 20                                       ;1388.7
        mov       QWORD PTR [32+r10], 0                         ;1388.7
        call      for_cpystr                                    ;1388.7
        jmp       .B1.14        ; Prob 100%                     ;1388.7
                                ; LOE rbx rbp rsi r12 r13 r15 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.18::                        ; Preds .B1.10
                                ; Execution count [1.32e-001]: Infreq
        mov       edi, DWORD PTR [48+rsp]                       ;1392.7
        jmp       .B1.14        ; Prob 100%                     ;1392.7
        ALIGN     16
                                ; LOE rbx rbp rsi r12 r13 r15 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.19::
; mark_end;
CHECKPOLEFIELD ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CHECKPOLEFIELD.B1_B18	DD	329985
	DD	3758449161
	DD	1610772483
	DD	12289
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CHECKPOLEFIELD.B1_B18	DD	imagerel .B1.1
	DD	imagerel .B1.19
	DD	imagerel .unwind.CHECKPOLEFIELD.B1_B18
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.52_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
.2.52_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28	DD	0000001d4H,000000000H
.2.52_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.52_2__kmpc_loc_pack.11
.2.52_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	80
	DB	79
	DB	76
	DB	69
	DB	70
	DB	73
	DB	69
	DB	76
	DB	68
	DB	59
	DB	49
	DB	51
	DB	54
	DB	54
	DB	59
	DB	49
	DB	51
	DB	54
	DB	54
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.52_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.52_2__kmpc_loc_pack.19
.2.52_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	80
	DB	79
	DB	76
	DB	69
	DB	70
	DB	73
	DB	69
	DB	76
	DB	68
	DB	59
	DB	49
	DB	51
	DB	54
	DB	54
	DB	59
	DB	49
	DB	52
	DB	48
	DB	51
	DB	59
	DB	59
_DATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  CHECKPOLEFIELD
_TEXT	SEGMENT      'CODE'
; -- Begin  PROCESS_SCN
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC PROCESS_SCN
; --- PROCESS_SCN
PROCESS_SCN	PROC 
; parameter 1: rcx
; parameter 2: rdx
.B2.1::                         ; Preds .B2.0
                                ; Execution count [0.00e+000]
L6::
                                                           ;897.12
        push      r13                                           ;897.12
        push      r14                                           ;897.12
        push      r15                                           ;897.12
        sub       rsp, 48                                       ;897.12
        mov       r14, rcx                                      ;897.12
        lea       rcx, QWORD PTR [.2.53_2_kmpc_loc_struct_pack.12] ;897.12
        mov       r15, rdx                                      ;897.12
        call      __kmpc_global_thread_num                      ;897.12
                                ; LOE rbx rbp rsi rdi r12 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.24::                        ; Preds .B2.1
                                ; Execution count [0.00e+000]
        mov       r9, QWORD PTR [.2.53_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;897.12
        test      r9, r9                                        ;897.12
        je        .B2.3         ; Prob 50%                      ;897.12
                                ; LOE rbx rbp rsi rdi r9 r12 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.2::                         ; Preds .B2.24
                                ; Execution count [0.00e+000]
        lea       r8d, DWORD PTR [rax*8]                        ;897.12
        movsxd    r8, r8d                                       ;897.12
        mov       r13, QWORD PTR [r8+r9]                        ;897.12
        test      r13, r13                                      ;897.12
        jne       .B2.5         ; Prob 50%                      ;897.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.3::                         ; Preds .B2.2 .B2.24
                                ; Execution count [0.00e+000]
        mov       r11, rsp                                      ;897.12
        lea       rcx, QWORD PTR [.2.53_2_kmpc_loc_struct_pack.20] ;897.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;897.12
        mov       edx, eax                                      ;897.12
        mov       r9, QWORD PTR [.2.53_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28] ;897.12
        lea       r10, QWORD PTR [.2.53_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;897.12
        mov       QWORD PTR [32+r11], r10                       ;897.12
        call      __kmpc_threadprivate_cached                   ;897.12
                                ; LOE rax rbx rbp rsi rdi r12 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.25::                        ; Preds .B2.3
                                ; Execution count [0.00e+000]
        mov       r13, rax                                      ;897.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.5::                         ; Preds .B2.25 .B2.2
                                ; Execution count [1.00e+000]
        call      UPDATE_SCN                                    ;911.6
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.6::                         ; Preds .B2.5
                                ; Execution count [1.00e+000]
        mov       eax, DWORD PTR [464+r13]                      ;912.1
        cmp       eax, 17                                       ;912.12
        je        .B2.21        ; Prob 0%                       ;912.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.7::                         ; Preds .B2.6
                                ; Execution count [9.90e-001]
        test      eax, eax                                      ;916.14
        jne       .B2.10        ; Prob 78%                      ;916.14
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.8::                         ; Preds .B2.7
                                ; Execution count [2.18e-001]
        mov       rcx, r15                                      ;921.6
        call      VALID_SCN                                     ;921.6
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.9::                         ; Preds .B2.8
                                ; Execution count [2.18e-001]
        cmp       DWORD PTR [464+r13], 0                        ;922.12
        je        .B2.11        ; Prob 5%                       ;922.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.10::                        ; Preds .B2.19 .B2.7 .B2.9 .B2.12
                                ; Execution count [1.00e+000]
        add       rsp, 48                                       ;946.1
        pop       r15                                           ;946.1
        pop       r14                                           ;946.1
        pop       r13                                           ;946.1
        ret                                                     ;946.1
                                ; LOE
.B2.11::                        ; Preds .B2.9
                                ; Execution count [1.09e-002]: Infreq
        mov       rcx, r15                                      ;926.6
        call      INIT_RANDOM_LOC                               ;926.6
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.12::                        ; Preds .B2.11
                                ; Execution count [1.09e-002]: Infreq
        cmp       DWORD PTR [464+r13], 0                        ;927.12
        jne       .B2.10        ; Prob 50%                      ;927.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.13::                        ; Preds .B2.12
                                ; Execution count [5.45e-003]: Infreq
        mov       eax, DWORD PTR [4+r15]                        ;931.11
        test      al, 2                                         ;931.5
        je        .B2.16        ; Prob 60%                      ;931.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.14::                        ; Preds .B2.13
                                ; Execution count [8.62e-004]: Infreq
        mov       rcx, r15                                      ;932.8
        mov       rdx, r14                                      ;932.8
        xor       r8d, r8d                                      ;932.8
        call      PROCESS_SCN_CONT                              ;932.8
        jmp       .B2.18        ; Prob 100%                     ;932.8
                                ; LOE rbx rbp rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.16::                        ; Preds .B2.13
                                ; Execution count [4.58e-003]: Infreq
        test      al, 1                                         ;933.10
        je        .B2.20        ; Prob 60%                      ;933.10
                                ; LOE rbx rbp rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.17::                        ; Preds .B2.16
                                ; Execution count [7.25e-004]: Infreq
        mov       rcx, r15                                      ;934.8
        lea       rdx, QWORD PTR [__NLITPACK_9.0.8]             ;934.8
        call      I_RELEASE                                     ;934.8
                                ; LOE rbx rbp rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.18::                        ; Preds .B2.14 .B2.17
                                ; Execution count [7.25e-004]: Infreq
        mov       eax, DWORD PTR [464+r13]                      ;936.1
                                ; LOE rbx rbp rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.19::                        ; Preds .B2.18
                                ; Execution count [2.70e-003]: Infreq
        test      eax, eax                                      ;936.12
        jne       .B2.10        ; Prob 78%                      ;936.12
                                ; LOE rbx rbp rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.20::                        ; Preds .B2.16 .B2.19
                                ; Execution count [1.20e-003]: Infreq
        add       rsp, 48                                       ;940.6
        pop       r15                                           ;940.6
        pop       r14                                           ;940.6
        pop       r13                                           ;940.6
        jmp       CLEAR_RANDOM_LOC                              ;940.6
                                ; LOE
.B2.21::                        ; Preds .B2.6
                                ; Execution count [9.93e-003]: Infreq
        add       rsp, 48                                       ;913.8
        pop       r15                                           ;913.8
        pop       r14                                           ;913.8
        pop       r13                                           ;913.8
        jmp       INIT_ERROR                                    ;913.8
        ALIGN     16
                                ; LOE
.B2.22::
; mark_end;
PROCESS_SCN ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.PROCESS_SCN.B1_B21	DD	264705
	DD	4026946058
	DD	3489849348
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.PROCESS_SCN.B1_B21	DD	imagerel .B2.1
	DD	imagerel .B2.22
	DD	imagerel .unwind.PROCESS_SCN.B1_B21
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.53_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DB 1 DUP ( 0H)	; pad
.2.53_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28	DD	0000001d4H,000000000H
.2.53_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.53_2__kmpc_loc_pack.11
.2.53_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	80
	DB	82
	DB	79
	DB	67
	DB	69
	DB	83
	DB	83
	DB	95
	DB	83
	DB	67
	DB	78
	DB	59
	DB	56
	DB	57
	DB	55
	DB	59
	DB	56
	DB	57
	DB	55
	DB	59
	DB	59
	DB 2 DUP ( 0H)	; pad
.2.53_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.53_2__kmpc_loc_pack.19
.2.53_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	80
	DB	82
	DB	79
	DB	67
	DB	69
	DB	83
	DB	83
	DB	95
	DB	83
	DB	67
	DB	78
	DB	59
	DB	56
	DB	57
	DB	55
	DB	59
	DB	57
	DB	52
	DB	54
	DB	59
	DB	59
_DATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  PROCESS_SCN
_TEXT	SEGMENT      'CODE'
; -- Begin  CHECK_SCN_TIME
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC CHECK_SCN_TIME
; --- CHECK_SCN_TIME
CHECK_SCN_TIME	PROC 
; parameter 1: rcx
.B3.1::                         ; Preds .B3.0
                                ; Execution count [1.00e+000]
L7::
                                                           ;815.18
        push      r12                                           ;815.18
        sub       rsp, 64                                       ;815.18
        mov       r12, rcx                                      ;815.18
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+12] ;826.8
        lea       rdx, QWORD PTR [__NLITPACK_7.0.6]             ;826.8
        movups    XMMWORD PTR [48+rsp], xmm15                   ;815.18[spill]
        call      SCALEREAL                                     ;826.8
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B3.10::                        ; Preds .B3.1
                                ; Execution count [1.00e+000]
        movaps    xmm15, xmm0                                   ;826.8
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B3.2::                         ; Preds .B3.10
                                ; Execution count [1.00e+000]
        mov       edx, DWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+4]  ;827.1
        test      dl, 2                                         ;827.5
        je        .B3.5         ; Prob 60%                      ;827.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B3.3::                         ; Preds .B3.2
                                ; Execution count [1.58e-001]
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC]    ;828.8
        lea       rdx, QWORD PTR [32+rsp]                       ;828.8
        call      GETRELEASEDURATION                            ;828.8
                                ; LOE rbx rbp rsi rdi r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B3.4::                         ; Preds .B3.3
                                ; Execution count [1.58e-001]
        movss     xmm0, DWORD PTR [32+rsp]                      ;829.3
        movss     xmm1, DWORD PTR [_2il0floatpacket.0]          ;829.30
        addss     xmm15, xmm0                                   ;829.14
        mulss     xmm1, xmm0                                    ;829.30
        subss     xmm15, DWORD PTR [TIME_FI_mp_T]               ;829.19
        cmpltss   xmm1, xmm15                                   ;829.3
        movss     xmm15, DWORD PTR [_2il0floatpacket.1]         ;829.46
        cmpeqss   xmm0, xmm15                                   ;829.3
        orps      xmm1, xmm0                                    ;829.3
        movd      eax, xmm1                                     ;829.3
        jmp       .B3.7         ; Prob 100%                     ;829.3
                                ; LOE rbx rbp rsi rdi r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B3.5::                         ; Preds .B3.2
                                ; Execution count [8.42e-001]
        test      dl, 1                                         ;830.10
        je        .B3.7         ; Prob 60%                      ;830.10
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B3.6::                         ; Preds .B3.5
                                ; Execution count [3.37e-001]
        movss     xmm0, DWORD PTR [r12]                         ;831.3
        cmpltss   xmm0, xmm15                                   ;831.3
        movd      eax, xmm0                                     ;831.3
                                ; LOE rbx rbp rsi rdi r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B3.7::                         ; Preds .B3.4 .B3.6 .B3.5
                                ; Execution count [1.00e+000]
        movups    xmm15, XMMWORD PTR [48+rsp]                   ;835.1[spill]
        add       rsp, 64                                       ;835.1
        pop       r12                                           ;835.1
        ret                                                     ;835.1
        ALIGN     16
                                ; LOE
.B3.8::
; mark_end;
CHECK_SCN_TIME ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CHECK_SCN_TIME.B1_B7	DD	269569
	DD	260125
	DD	3221385734
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CHECK_SCN_TIME.B1_B7	DD	imagerel .B3.1
	DD	imagerel .B3.8
	DD	imagerel .unwind.CHECK_SCN_TIME.B1_B7
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  CHECK_SCN_TIME
_TEXT	SEGMENT      'CODE'
; -- Begin  CHECKGLOBALMET
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC CHECKGLOBALMET
; --- CHECKGLOBALMET
CHECKGLOBALMET	PROC 
.B4.1::                         ; Preds .B4.0
                                ; Execution count [0.00e+000]
L10::
                                                          ;1407.12
        push      rsi                                           ;1407.12
        push      rdi                                           ;1407.12
        push      r12                                           ;1407.12
        push      r13                                           ;1407.12
        push      rbp                                           ;1407.12
        sub       rsp, 48                                       ;1407.12
        lea       rcx, QWORD PTR [.2.55_2_kmpc_loc_struct_pack.12] ;1407.12
        call      __kmpc_global_thread_num                      ;1407.12
                                ; LOE rbx r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.16::                        ; Preds .B4.1
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.55_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1407.12
        mov       edx, eax                                      ;1407.12
        test      rcx, rcx                                      ;1407.12
        je        .B4.3         ; Prob 50%                      ;1407.12
                                ; LOE rcx rbx r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.2::                         ; Preds .B4.16
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [rdx*8]                        ;1407.12
        cdqe                                                    ;1407.12
        mov       r13, QWORD PTR [rax+rcx]                      ;1407.12
        test      r13, r13                                      ;1407.12
        jne       .B4.5         ; Prob 50%                      ;1407.12
                                ; LOE rbx r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.3::                         ; Preds .B4.2 .B4.16
                                ; Execution count [0.00e+000]
        mov       rbp, rsp                                      ;1407.12
        lea       rcx, QWORD PTR [.2.55_2_kmpc_loc_struct_pack.20] ;1407.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1407.12
        lea       rax, QWORD PTR [.2.55_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1407.12
        mov       r9, QWORD PTR [.2.55_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28] ;1407.12
        mov       QWORD PTR [32+rbp], rax                       ;1407.12
        call      __kmpc_threadprivate_cached                   ;1407.12
                                ; LOE rax rbx r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.17::                        ; Preds .B4.3
                                ; Execution count [0.00e+000]
        mov       r13, rax                                      ;1407.12
                                ; LOE rbx r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.5::                         ; Preds .B4.17 .B4.2
                                ; Execution count [1.00e+000]
        mov       rax, rsp                                      ;1415.9
        lea       rcx, QWORD PTR [MET_FI_mp_MET_TYPE]           ;1415.9
        mov       edx, 80                                       ;1415.9
        lea       r8, QWORD PTR [__STRLITPACK_330]              ;1415.9
        mov       r9d, 7                                        ;1415.9
        mov       r12d, 2                                       ;1415.9
        mov       QWORD PTR [32+rax], r12                       ;1415.9
        call      for_cpstr                                     ;1415.9
                                ; LOE rax rbx r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.21::                        ; Preds .B4.5
                                ; Execution count [1.00e+000]
        mov       rdi, rax                                      ;1415.9
        mov       rax, rsp                                      ;1415.19
        lea       rcx, QWORD PTR [MET_FI_mp_MET_TYPE]           ;1415.19
        mov       edx, 80                                       ;1415.19
        lea       r8, QWORD PTR [__STRLITPACK_329]              ;1415.19
        mov       r9d, 5                                        ;1415.19
        mov       QWORD PTR [32+rax], r12                       ;1415.19
        call      for_cpstr                                     ;1415.19
                                ; LOE rax rbx rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.20::                        ; Preds .B4.21
                                ; Execution count [1.00e+000]
        mov       rsi, rax                                      ;1415.19
        mov       rax, rsp                                      ;1415.27
        lea       rcx, QWORD PTR [MET_FI_mp_MET_TYPE]           ;1415.27
        mov       edx, 80                                       ;1415.27
        lea       r8, QWORD PTR [__STRLITPACK_328]              ;1415.27
        mov       r9d, 3                                        ;1415.27
        mov       QWORD PTR [32+rax], r12                       ;1415.27
        call      for_cpstr                                     ;1415.27
                                ; LOE rax rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.19::                        ; Preds .B4.20
                                ; Execution count [1.00e+000]
        mov       rbp, rax                                      ;1415.27
        mov       rax, rsp                                      ;1415.33
        lea       rcx, QWORD PTR [MET_FI_mp_MET_TYPE]           ;1415.33
        mov       edx, 80                                       ;1415.33
        lea       r8, QWORD PTR [__STRLITPACK_327]              ;1415.33
        mov       r9d, 3                                        ;1415.33
        mov       QWORD PTR [32+rax], r12                       ;1415.33
        call      for_cpstr                                     ;1415.33
                                ; LOE rax rbx rbp rsi rdi r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.18::                        ; Preds .B4.19
                                ; Execution count [1.00e+000]
        test      edi, edi                                      ;1415.9
        jne       .B4.13        ; Prob 50%                      ;1415.9
                                ; LOE rax rbx rbp rsi r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.6::                         ; Preds .B4.18
                                ; Execution count [5.00e-001]
        test      esi, esi                                      ;1415.9
        jne       .B4.13        ; Prob 50%                      ;1415.9
                                ; LOE rax rbx rbp r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.7::                         ; Preds .B4.6
                                ; Execution count [2.50e-001]
        test      ebp, ebp                                      ;1415.9
        jne       .B4.13        ; Prob 50%                      ;1415.9
                                ; LOE rax rbx r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.8::                         ; Preds .B4.7
                                ; Execution count [1.25e-001]
        test      eax, eax                                      ;1415.9
        jne       .B4.13        ; Prob 50%                      ;1415.9
                                ; LOE rbx r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.9::                         ; Preds .B4.8
                                ; Execution count [6.25e-002]
        mov       rax, rsp                                      ;1418.5
        mov       rcx, r13                                      ;1418.5
        mov       edx, 80                                       ;1418.5
        lea       r8, QWORD PTR [__STRLITPACK_326]              ;1418.5
        mov       r9d, 14                                       ;1418.5
        mov       DWORD PTR [464+r13], 3                        ;1417.5
        mov       QWORD PTR [32+rax], 0                         ;1418.5
        call      for_cpystr                                    ;1418.5
                                ; LOE rbx r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.10::                        ; Preds .B4.9
                                ; Execution count [6.25e-002]
        mov       rax, rsp                                      ;1419.5
        lea       rcx, QWORD PTR [80+r13]                       ;1419.5
        mov       edx, 128                                      ;1419.5
        lea       r8, QWORD PTR [__STRLITPACK_325]              ;1419.5
        mov       r9d, 47                                       ;1419.5
        mov       QWORD PTR [32+rax], 0                         ;1419.5
        call      for_cpystr                                    ;1419.5
                                ; LOE rbx r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.11::                        ; Preds .B4.10
                                ; Execution count [6.25e-002]
        mov       rax, rsp                                      ;1420.5
        lea       rcx, QWORD PTR [208+r13]                      ;1420.5
        mov       edx, 128                                      ;1420.5
        lea       r8, QWORD PTR [__STRLITPACK_324]              ;1420.5
        mov       r9d, 32                                       ;1420.5
        mov       QWORD PTR [32+rax], 0                         ;1420.5
        call      for_cpystr                                    ;1420.5
                                ; LOE rbx r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.12::                        ; Preds .B4.11
                                ; Execution count [6.25e-002]
        mov       rax, rsp                                      ;1421.5
        add       r13, 336                                      ;1421.5
        mov       rcx, r13                                      ;1421.5
        mov       edx, 128                                      ;1421.5
        lea       r8, QWORD PTR [__STRLITPACK_323]              ;1421.5
        mov       r9d, 47                                       ;1421.5
        mov       QWORD PTR [32+rax], 0                         ;1421.5
        call      for_cpystr                                    ;1421.5
                                ; LOE rbx r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.13::                        ; Preds .B4.12 .B4.18 .B4.6 .B4.7 .B4.8
                                ;      
                                ; Execution count [1.00e+000]
        add       rsp, 48                                       ;1428.1
        pop       rbp                                           ;1428.1
        pop       r13                                           ;1428.1
        pop       r12                                           ;1428.1
        pop       rdi                                           ;1428.1
        pop       rsi                                           ;1428.1
        ret                                                     ;1428.1
        ALIGN     16
                                ; LOE
.B4.14::
; mark_end;
CHECKGLOBALMET ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CHECKGLOBALMET.B1_B13	DD	396033
	DD	1342657035
	DD	3221540870
	DD	1610706946
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CHECKGLOBALMET.B1_B13	DD	imagerel .B4.1
	DD	imagerel .B4.14
	DD	imagerel .unwind.CHECKGLOBALMET.B1_B13
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.55_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DB 2 DUP ( 0H)	; pad
.2.55_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28	DD	0000001d4H,000000000H
.2.55_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.55_2__kmpc_loc_pack.11
.2.55_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	71
	DB	76
	DB	79
	DB	66
	DB	65
	DB	76
	DB	77
	DB	69
	DB	84
	DB	59
	DB	49
	DB	52
	DB	48
	DB	55
	DB	59
	DB	49
	DB	52
	DB	48
	DB	55
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.55_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.55_2__kmpc_loc_pack.19
.2.55_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	71
	DB	76
	DB	79
	DB	66
	DB	65
	DB	76
	DB	77
	DB	69
	DB	84
	DB	59
	DB	49
	DB	52
	DB	48
	DB	55
	DB	59
	DB	49
	DB	52
	DB	50
	DB	56
	DB	59
	DB	59
_DATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  CHECKGLOBALMET
_TEXT	SEGMENT      'CODE'
; -- Begin  CHECKAMBDOMAIN
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC CHECKAMBDOMAIN
; --- CHECKAMBDOMAIN
CHECKAMBDOMAIN	PROC 
.B5.1::                         ; Preds .B5.0
                                ; Execution count [0.00e+000]
L11::
                                                          ;1481.12
        push      rbx                                           ;1481.12
        push      rsi                                           ;1481.12
        push      rdi                                           ;1481.12
        push      r12                                           ;1481.12
        push      r13                                           ;1481.12
        push      r14                                           ;1481.12
        push      r15                                           ;1481.12
        sub       rsp, 272                                      ;1481.12
        lea       rcx, QWORD PTR [.2.56_2_kmpc_loc_struct_pack.12] ;1481.12
        call      __kmpc_global_thread_num                      ;1481.12
                                ; LOE rbp rsi rdi r12 r13 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.41::                        ; Preds .B5.1
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.56_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_cache_0.27] ;1481.12
        mov       r14d, eax                                     ;1481.12
        test      rcx, rcx                                      ;1481.12
        je        .B5.3         ; Prob 50%                      ;1481.12
                                ; LOE rcx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.2::                         ; Preds .B5.41
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [r14*8]                        ;1481.12
        cdqe                                                    ;1481.12
        mov       rbx, QWORD PTR [rcx+rax]                      ;1481.12
        test      rbx, rbx                                      ;1481.12
        jne       .B5.5         ; Prob 50%                      ;1481.12
                                ; LOE rbx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.3::                         ; Preds .B5.41 .B5.2
                                ; Execution count [0.00e+000]
        mov       rbx, rsp                                      ;1481.12
        lea       rcx, QWORD PTR [.2.56_2_kmpc_loc_struct_pack.20] ;1481.12
        lea       r8, QWORD PTR [CHEM_FI_CMN]                   ;1481.12
        mov       edx, r14d                                     ;1481.12
        mov       r9, QWORD PTR [.2.56_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_size_0.28] ;1481.12
        lea       rax, QWORD PTR [.2.56_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_cache_0.27] ;1481.12
        mov       QWORD PTR [32+rbx], rax                       ;1481.12
        call      __kmpc_threadprivate_cached                   ;1481.12
                                ; LOE rax rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.42::                        ; Preds .B5.3
                                ; Execution count [0.00e+000]
        mov       rbx, rax                                      ;1481.12
                                ; LOE rbx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.5::                         ; Preds .B5.42 .B5.2
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.56_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_1.29] ;1481.12
        test      rcx, rcx                                      ;1481.12
        je        .B5.7         ; Prob 50%                      ;1481.12
                                ; LOE rcx rbx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.6::                         ; Preds .B5.5
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [r14*8]                        ;1481.12
        cdqe                                                    ;1481.12
        mov       rax, QWORD PTR [rcx+rax]                      ;1481.12
        test      rax, rax                                      ;1481.12
        jne       .B5.9         ; Prob 50%                      ;1481.12
                                ; LOE rax rbx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.7::                         ; Preds .B5.5 .B5.6
                                ; Execution count [0.00e+000]
        mov       r10, rsp                                      ;1481.12
        lea       rcx, QWORD PTR [.2.56_2_kmpc_loc_struct_pack.20] ;1481.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1481.12
        mov       edx, r14d                                     ;1481.12
        mov       r9, QWORD PTR [.2.56_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_1.30] ;1481.12
        lea       rax, QWORD PTR [.2.56_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_1.29] ;1481.12
        mov       QWORD PTR [32+r10], rax                       ;1481.12
        call      __kmpc_threadprivate_cached                   ;1481.12
                                ; LOE rax rbx rbp rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.9::                         ; Preds .B5.7 .B5.6
                                ; Execution count [1.00e+000]
        movsxd    r9, DWORD PTR [MATL_FI_mp_MAT_MC]             ;1500.1
        mov       r14d, 1                                       ;1500.1
        test      r9, r9                                        ;1500.1
        jle       .B5.14        ; Prob 2%                       ;1500.1
                                ; LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.10::                        ; Preds .B5.9
                                ; Execution count [9.79e-001]
        mov       r12, rbx                                      ;1521.11
        lea       rcx, QWORD PTR [80+rax]                       ;1519.11
        mov       rbx, rax                                      ;1521.11
        lea       r8, QWORD PTR [208+rax]                       ;1520.11
        mov       r15, rcx                                      ;1521.11
        lea       rdx, QWORD PTR [336+rax]                      ;1521.11
        mov       r13, rdx                                      ;1521.11
        mov       rdi, r8                                       ;1521.11
        mov       rsi, r9                                       ;1521.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.11::                        ; Preds .B5.12 .B5.10
                                ; Execution count [5.29e+000]
        mov       r11, r14                                      ;1502.7
        sub       r11, QWORD PTR [MATL_FI_mp_MAT_MC+72]         ;1502.7
        imul      r11, QWORD PTR [MATL_FI_mp_MAT_MC+64]         ;1502.7
        mov       r10, QWORD PTR [MATL_FI_mp_MAT_MC+8]          ;1502.3
        cmp       DWORD PTR [r10+r11], 1                        ;1502.23
        je        .B5.15        ; Prob 16%                      ;1502.23
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.12::                        ; Preds .B5.34 .B5.18 .B5.16 .B5.15 .B5.11
                                ;      
                                ; Execution count [5.26e+000]
        inc       r14                                           ;1544.1
        cmp       r14, rsi                                      ;1544.1
        jle       .B5.11        ; Prob 82%                      ;1544.1
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.14::                        ; Preds .B5.12 .B5.9
                                ; Execution count [1.00e+000]
        add       rsp, 272                                      ;1549.1
        pop       r15                                           ;1549.1
        pop       r14                                           ;1549.1
        pop       r13                                           ;1549.1
        pop       r12                                           ;1549.1
        pop       rdi                                           ;1549.1
        pop       rsi                                           ;1549.1
        pop       rbx                                           ;1549.1
        ret                                                     ;1549.1
                                ; LOE
.B5.15::                        ; Preds .B5.11
                                ; Execution count [8.46e-001]: Infreq
        mov       r11, r14                                      ;1504.5
        sub       r11, QWORD PTR [MATL_FI_mp_MAT_MC+144]        ;1504.5
        imul      r11, QWORD PTR [MATL_FI_mp_MAT_MC+136]        ;1504.5
        mov       r10, QWORD PTR [MATL_FI_mp_MAT_MC+80]         ;1504.5
        mov       rdx, QWORD PTR [CHEM_FI_mp_CHEMMC+64]         ;1505.5
        neg       rdx                                           ;1505.13
        movsxd    r10, DWORD PTR [r10+r11]                      ;1504.5
        add       rdx, r10                                      ;1505.13
        imul      rdx, rdx, 15120                               ;1505.13
        mov       rax, QWORD PTR [CHEM_FI_mp_CHEMMC+80]         ;1505.13
        mov       r10, QWORD PTR [CHEM_FI_mp_CHEMMC+88]         ;1505.13
        imul      r10, rax                                      ;1505.13
        mov       r11, QWORD PTR [CHEM_FI_mp_CHEMMC]            ;1505.5
        sub       r11, r10                                      ;1505.13
        add       r11, rax                                      ;1505.5
        add       rdx, r11                                      ;1505.13
        mov       QWORD PTR [568+r12], rdx                      ;1505.5
        test      BYTE PTR [2220+rdx], 1                        ;1507.9
        je        .B5.12        ; Prob 60%                      ;1507.9
                                ; LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.16::                        ; Preds .B5.15
                                ; Execution count [3.39e-001]: Infreq
        mov       r10d, DWORD PTR [2656+rdx]                    ;1508.11
        cmp       r10d, 2                                       ;1508.27
        jle       .B5.12        ; Prob 50%                      ;1508.27
                                ; LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 r10d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.17::                        ; Preds .B5.16
                                ; Execution count [1.69e-001]: Infreq
        mov       r11d, DWORD PTR [2660+rdx]                    ;1511.34
        dec       r10d                                          ;1513.25
        pxor      xmm1, xmm1                                    ;1513.25
        pxor      xmm4, xmm4                                    ;1514.25
        dec       r11d                                          ;1514.25
        lea       rcx, QWORD PTR [240+rsp]                      ;1516.13
        cvtsi2ss  xmm1, r10d                                    ;1513.25
        cvtsi2ss  xmm4, r11d                                    ;1514.25
        movss     xmm0, DWORD PTR [2672+rdx]                    ;1510.57
        mov       r11, rsp                                      ;1516.13
        movss     xmm3, DWORD PTR [2684+rdx]                    ;1511.57
        lea       r8, QWORD PTR [248+rsp]                       ;1516.13
        mulss     xmm1, xmm0                                    ;1513.37
        lea       r9, QWORD PTR [260+rsp]                       ;1516.13
        mulss     xmm4, xmm3                                    ;1514.37
        movss     xmm2, DWORD PTR [2668+rdx]                    ;1510.9
        lea       r10, QWORD PTR [244+rsp]                      ;1516.13
        movss     xmm5, DWORD PTR [2680+rdx]                    ;1511.9
        lea       rdx, QWORD PTR [256+rsp]                      ;1516.13
        movss     DWORD PTR [-16+rdx], xmm2                     ;1510.9
        addss     xmm2, xmm1                                    ;1513.9
        movss     DWORD PTR [-8+rdx], xmm5                      ;1511.9
        addss     xmm5, xmm4                                    ;1514.9
        mov       QWORD PTR [32+r11], r10                       ;1516.13
        lea       r10, QWORD PTR [252+rsp]                      ;1516.13
        mov       QWORD PTR [40+r11], r10                       ;1516.13
        lea       r10, QWORD PTR [264+rsp]                      ;1516.13
        mov       QWORD PTR [48+r11], r10                       ;1516.13
        lea       r10, QWORD PTR [268+rsp]                      ;1516.13
        movss     DWORD PTR [-12+rdx], xmm0                     ;1510.57
        movss     DWORD PTR [-4+rdx], xmm3                      ;1511.57
        movss     DWORD PTR [rdx], xmm2                         ;1513.9
        movss     DWORD PTR [4+rdx], xmm5                       ;1514.9
        mov       QWORD PTR [56+r11], r10                       ;1516.13
        call      CHECKDOMAINOVERLAP                            ;1516.13
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.18::                        ; Preds .B5.17
                                ; Execution count [1.69e-001]: Infreq
        test      al, 1                                         ;1516.13
        je        .B5.12        ; Prob 60%                      ;1516.13
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.19::                        ; Preds .B5.18
                                ; Execution count [6.77e-002]: Infreq
        mov       r10, rsp                                      ;1518.11
        mov       rcx, rbx                                      ;1518.11
        mov       edx, 80                                       ;1518.11
        lea       r8, QWORD PTR [__STRLITPACK_341]              ;1518.11
        mov       r9d, 48                                       ;1518.11
        mov       DWORD PTR [464+rbx], 13                       ;1517.11
        mov       QWORD PTR [32+r10], 0                         ;1518.11
        call      for_cpystr                                    ;1518.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.20::                        ; Preds .B5.19
                                ; Execution count [6.77e-002]: Infreq
        mov       r10, rsp                                      ;1519.11
        mov       rcx, r15                                      ;1519.11
        mov       edx, 128                                      ;1519.11
        lea       r8, QWORD PTR [__STRLITPACK_340]              ;1519.11
        mov       r9d, 62                                       ;1519.11
        mov       QWORD PTR [32+r10], 0                         ;1519.11
        call      for_cpystr                                    ;1519.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.21::                        ; Preds .B5.20
                                ; Execution count [6.77e-002]: Infreq
        lea       r10, QWORD PTR [__STRLITPACK_336]             ;1520.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1520.11
        mov       QWORD PTR [72+rcx], r10                       ;1520.11
        mov       r10, rsp                                      ;1520.11
        mov       rdx, 01208384ff00H                            ;1520.11
        lea       r8, QWORD PTR [__STRLITPACK_342.0.15]         ;1520.11
        lea       r11, QWORD PTR [CHECKAMBDOMAIN$format_pack.0.15] ;1520.11
        lea       r9, QWORD PTR [112+rsp]                       ;1520.11
        mov       QWORD PTR [rcx], 0                            ;1520.11
        mov       QWORD PTR [48+rcx], 128                       ;1520.11
        mov       QWORD PTR [56+rcx], rdi                       ;1520.11
        mov       QWORD PTR [64+rcx], 17                        ;1520.11
        mov       QWORD PTR [32+r10], r11                       ;1520.11
        call      for_write_int_fmt                             ;1520.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.22::                        ; Preds .B5.21
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [240+rsp]                     ;1520.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1520.11
        lea       rdx, QWORD PTR [__STRLITPACK_343.0.15]        ;1520.11
        lea       r8, QWORD PTR [176+rsp]                       ;1520.11
        mov       DWORD PTR [112+rcx], r10d                     ;1520.11
        call      for_write_int_fmt_xmit                        ;1520.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.23::                        ; Preds .B5.22
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [256+rsp]                     ;1520.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1520.11
        lea       rdx, QWORD PTR [__STRLITPACK_344.0.15]        ;1520.11
        lea       r8, QWORD PTR [184+rsp]                       ;1520.11
        mov       DWORD PTR [120+rcx], r10d                     ;1520.11
        call      for_write_int_fmt_xmit                        ;1520.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.24::                        ; Preds .B5.23
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [248+rsp]                     ;1520.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1520.11
        lea       rdx, QWORD PTR [__STRLITPACK_345.0.15]        ;1520.11
        lea       r8, QWORD PTR [192+rsp]                       ;1520.11
        mov       DWORD PTR [128+rcx], r10d                     ;1520.11
        call      for_write_int_fmt_xmit                        ;1520.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.25::                        ; Preds .B5.24
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [260+rsp]                     ;1520.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1520.11
        lea       rdx, QWORD PTR [__STRLITPACK_346.0.15]        ;1520.11
        lea       r8, QWORD PTR [200+rsp]                       ;1520.11
        mov       DWORD PTR [136+rcx], r10d                     ;1520.11
        call      for_write_int_fmt_xmit                        ;1520.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.26::                        ; Preds .B5.25
                                ; Execution count [6.77e-002]: Infreq
        lea       r10, QWORD PTR [__STRLITPACK_332]             ;1521.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1521.11
        mov       QWORD PTR [104+rcx], r10                      ;1521.11
        mov       r10, rsp                                      ;1521.11
        mov       rdx, 01208384ff00H                            ;1521.11
        lea       r8, QWORD PTR [__STRLITPACK_347.0.15]         ;1521.11
        lea       r11, QWORD PTR [CHECKAMBDOMAIN$format_pack.0.15+24] ;1521.11
        lea       r9, QWORD PTR [144+rsp]                       ;1521.11
        mov       QWORD PTR [rcx], 0                            ;1521.11
        mov       QWORD PTR [80+rcx], 128                       ;1521.11
        mov       QWORD PTR [88+rcx], r13                       ;1521.11
        mov       QWORD PTR [96+rcx], 17                        ;1521.11
        mov       QWORD PTR [32+r10], r11                       ;1521.11
        call      for_write_int_fmt                             ;1521.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.27::                        ; Preds .B5.26
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [GRID_FI_mp_XMIN]             ;1521.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1521.11
        lea       rdx, QWORD PTR [__STRLITPACK_348.0.15]        ;1521.11
        lea       r8, QWORD PTR [208+rsp]                       ;1521.11
        mov       DWORD PTR [144+rcx], r10d                     ;1521.11
        call      for_write_int_fmt_xmit                        ;1521.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.28::                        ; Preds .B5.27
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [GRID_FI_mp_XMAX]             ;1521.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1521.11
        lea       rdx, QWORD PTR [__STRLITPACK_349.0.15]        ;1521.11
        lea       r8, QWORD PTR [216+rsp]                       ;1521.11
        mov       DWORD PTR [152+rcx], r10d                     ;1521.11
        call      for_write_int_fmt_xmit                        ;1521.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.29::                        ; Preds .B5.28
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [GRID_FI_mp_YMIN]             ;1521.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1521.11
        lea       rdx, QWORD PTR [__STRLITPACK_350.0.15]        ;1521.11
        lea       r8, QWORD PTR [224+rsp]                       ;1521.11
        mov       DWORD PTR [160+rcx], r10d                     ;1521.11
        call      for_write_int_fmt_xmit                        ;1521.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.30::                        ; Preds .B5.29
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [GRID_FI_mp_YMAX]             ;1521.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1521.11
        lea       rdx, QWORD PTR [__STRLITPACK_351.0.15]        ;1521.11
        lea       r8, QWORD PTR [232+rsp]                       ;1521.11
        mov       DWORD PTR [168+rcx], r10d                     ;1521.11
        call      for_write_int_fmt_xmit                        ;1521.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.31::                        ; Preds .B5.30
                                ; Execution count [6.77e-002]: Infreq
        lea       rcx, QWORD PTR [__NLITPACK_12.0.15]           ;1522.16
        call      WARNINGMESSAGE                                ;1522.16
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.32::                        ; Preds .B5.31
                                ; Execution count [6.77e-002]: Infreq
        cmp       DWORD PTR [464+rbx], 0                        ;1523.22
        jne       .B5.37        ; Prob 20%                      ;1523.22
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.33::                        ; Preds .B5.32
                                ; Execution count [5.42e-002]: Infreq
        movss     xmm0, DWORD PTR [GRID_FI_mp_XMIN]             ;1527.13
        movss     xmm1, DWORD PTR [GRID_FI_mp_XMAX]             ;1528.13
        movss     xmm2, DWORD PTR [GRID_FI_mp_YMIN]             ;1529.13
        movss     xmm3, DWORD PTR [GRID_FI_mp_YMAX]             ;1530.13
        maxss     xmm0, DWORD PTR [240+rsp]                     ;1527.13
        minss     xmm1, DWORD PTR [256+rsp]                     ;1528.13
        maxss     xmm2, DWORD PTR [248+rsp]                     ;1529.13
        minss     xmm3, DWORD PTR [260+rsp]                     ;1530.13
        comiss    xmm0, xmm1                                    ;1531.22
        movss     DWORD PTR [GRID_FI_mp_XMIN], xmm0             ;1527.13
        movss     DWORD PTR [GRID_FI_mp_XMAX], xmm1             ;1528.13
        movss     DWORD PTR [GRID_FI_mp_YMIN], xmm2             ;1529.13
        movss     DWORD PTR [GRID_FI_mp_YMAX], xmm3             ;1530.13
        ja        .B5.35        ; Prob 20%                      ;1531.22
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.34::                        ; Preds .B5.33
                                ; Execution count [4.33e-002]: Infreq
        comiss    xmm2, xmm3                                    ;1531.39
        jbe       .B5.12        ; Prob 80%                      ;1531.39
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.35::                        ; Preds .B5.33 .B5.34
                                ; Execution count [8.67e-003]: Infreq
        mov       rax, rbx                                      ;
        mov       rcx, r15                                      ;
                                ; LOE rax rcx rbp rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.36::                        ; Preds .B5.35
                                ; Execution count [1.95e-002]: Infreq
        mov       DWORD PTR [464+rax], 13                       ;1532.15
        mov       rax, rsp                                      ;1533.15
        mov       edx, 128                                      ;1533.15
        lea       r8, QWORD PTR [__STRLITPACK_331]              ;1533.15
        mov       r9d, 42                                       ;1533.15
        mov       QWORD PTR [32+rax], 0                         ;1533.15
        call      for_cpystr                                    ;1533.15
        add       rsp, 272                                      ;1533.15
        pop       r15                                           ;1533.15
        pop       r14                                           ;1533.15
        pop       r13                                           ;1533.15
        pop       r12                                           ;1533.15
        pop       rdi                                           ;1533.15
        pop       rsi                                           ;1533.15
        pop       rbx                                           ;1533.15
        ret                                                     ;1533.15
                                ; LOE rbp rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.37::                        ; Preds .B5.32
                                ; Execution count [1.35e-002]: Infreq
        call      INIT_ERROR                                    ;1524.18
        add       rsp, 272                                      ;1524.18
        pop       r15                                           ;1524.18
        pop       r14                                           ;1524.18
        pop       r13                                           ;1524.18
        pop       r12                                           ;1524.18
        pop       rdi                                           ;1524.18
        pop       rsi                                           ;1524.18
        pop       rbx                                           ;1524.18
        ret                                                     ;1524.18
        ALIGN     16
                                ; LOE rbp rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.39::
; mark_end;
CHECKAMBDOMAIN ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CHECKAMBDOMAIN.B1_B37	DD	594433
	DD	2228498
	DD	3758747659
	DD	3221606407
	DD	1610772483
	DD	12289
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CHECKAMBDOMAIN.B1_B37	DD	imagerel .B5.1
	DD	imagerel .B5.39
	DD	imagerel .unwind.CHECKAMBDOMAIN.B1_B37
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.56_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_cache_0.27	DD 2 DUP (?)	; pad
.2.56_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_1.29	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DB 1 DUP ( 0H)	; pad
.2.56_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_size_0.28	DD	000000510H,000000000H
.2.56_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_1.30	DD	0000001d4H,000000000H
.2.56_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.56_2__kmpc_loc_pack.11
.2.56_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	65
	DB	77
	DB	66
	DB	68
	DB	79
	DB	77
	DB	65
	DB	73
	DB	78
	DB	59
	DB	49
	DB	52
	DB	56
	DB	49
	DB	59
	DB	49
	DB	52
	DB	56
	DB	49
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.56_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.56_2__kmpc_loc_pack.19
.2.56_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	65
	DB	77
	DB	66
	DB	68
	DB	79
	DB	77
	DB	65
	DB	73
	DB	78
	DB	59
	DB	49
	DB	52
	DB	56
	DB	49
	DB	59
	DB	49
	DB	53
	DB	52
	DB	57
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
CHECKAMBDOMAIN$format_pack.0.15	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	33
	DB	0
	DB	0
	DB	2
	DB	4
	DB	0
	DB	0
	DB	0
	DB	10
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	33
	DB	0
	DB	0
	DB	2
	DB	4
	DB	0
	DB	0
	DB	0
	DB	10
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
__STRLITPACK_342.0.15	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_343.0.15	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_344.0.15	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_345.0.15	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_346.0.15	DD	65818
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_347.0.15	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_348.0.15	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_349.0.15	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_350.0.15	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_351.0.15	DD	65818
	DB	2
	DB 3 DUP ( 0H)	; pad
__NLITPACK_12.0.15	DD	0
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  CHECKAMBDOMAIN
_TEXT	SEGMENT      'CODE'
; -- Begin  CHECKSFLUXDOMAIN
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC CHECKSFLUXDOMAIN
; --- CHECKSFLUXDOMAIN
CHECKSFLUXDOMAIN	PROC 
.B6.1::                         ; Preds .B6.0
                                ; Execution count [0.00e+000]
L12::
                                                          ;1553.12
        push      rbx                                           ;1553.12
        push      rsi                                           ;1553.12
        push      rdi                                           ;1553.12
        push      r12                                           ;1553.12
        push      r13                                           ;1553.12
        push      r14                                           ;1553.12
        push      r15                                           ;1553.12
        sub       rsp, 272                                      ;1553.12
        lea       rcx, QWORD PTR [.2.57_2_kmpc_loc_struct_pack.12] ;1553.12
        call      __kmpc_global_thread_num                      ;1553.12
                                ; LOE rbp rsi rdi r12 r13 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.41::                        ; Preds .B6.1
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.57_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_cache_0.27] ;1553.12
        mov       r14d, eax                                     ;1553.12
        test      rcx, rcx                                      ;1553.12
        je        .B6.3         ; Prob 50%                      ;1553.12
                                ; LOE rcx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.2::                         ; Preds .B6.41
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [r14*8]                        ;1553.12
        cdqe                                                    ;1553.12
        mov       rbx, QWORD PTR [rcx+rax]                      ;1553.12
        test      rbx, rbx                                      ;1553.12
        jne       .B6.5         ; Prob 50%                      ;1553.12
                                ; LOE rbx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.3::                         ; Preds .B6.41 .B6.2
                                ; Execution count [0.00e+000]
        mov       rbx, rsp                                      ;1553.12
        lea       rcx, QWORD PTR [.2.57_2_kmpc_loc_struct_pack.20] ;1553.12
        lea       r8, QWORD PTR [CHEM_FI_CMN]                   ;1553.12
        mov       edx, r14d                                     ;1553.12
        mov       r9, QWORD PTR [.2.57_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_size_0.28] ;1553.12
        lea       rax, QWORD PTR [.2.57_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_cache_0.27] ;1553.12
        mov       QWORD PTR [32+rbx], rax                       ;1553.12
        call      __kmpc_threadprivate_cached                   ;1553.12
                                ; LOE rax rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.42::                        ; Preds .B6.3
                                ; Execution count [0.00e+000]
        mov       rbx, rax                                      ;1553.12
                                ; LOE rbx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.5::                         ; Preds .B6.42 .B6.2
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.57_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_1.29] ;1553.12
        test      rcx, rcx                                      ;1553.12
        je        .B6.7         ; Prob 50%                      ;1553.12
                                ; LOE rcx rbx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.6::                         ; Preds .B6.5
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [r14*8]                        ;1553.12
        cdqe                                                    ;1553.12
        mov       rax, QWORD PTR [rcx+rax]                      ;1553.12
        test      rax, rax                                      ;1553.12
        jne       .B6.9         ; Prob 50%                      ;1553.12
                                ; LOE rax rbx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.7::                         ; Preds .B6.5 .B6.6
                                ; Execution count [0.00e+000]
        mov       r10, rsp                                      ;1553.12
        lea       rcx, QWORD PTR [.2.57_2_kmpc_loc_struct_pack.20] ;1553.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1553.12
        mov       edx, r14d                                     ;1553.12
        mov       r9, QWORD PTR [.2.57_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_1.30] ;1553.12
        lea       rax, QWORD PTR [.2.57_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_1.29] ;1553.12
        mov       QWORD PTR [32+r10], rax                       ;1553.12
        call      __kmpc_threadprivate_cached                   ;1553.12
                                ; LOE rax rbx rbp rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.9::                         ; Preds .B6.7 .B6.6
                                ; Execution count [1.00e+000]
        movsxd    r9, DWORD PTR [MATL_FI_mp_MAT_MC]             ;1572.1
        mov       r14d, 1                                       ;1572.1
        test      r9, r9                                        ;1572.1
        jle       .B6.14        ; Prob 2%                       ;1572.1
                                ; LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.10::                        ; Preds .B6.9
                                ; Execution count [9.79e-001]
        mov       r12, rbx                                      ;1594.11
        lea       rcx, QWORD PTR [80+rax]                       ;1592.11
        mov       rbx, rax                                      ;1594.11
        lea       r8, QWORD PTR [208+rax]                       ;1593.11
        mov       r15, rcx                                      ;1594.11
        lea       rdx, QWORD PTR [336+rax]                      ;1594.11
        mov       r13, rdx                                      ;1594.11
        mov       rdi, r8                                       ;1594.11
        mov       rsi, r9                                       ;1594.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.11::                        ; Preds .B6.12 .B6.10
                                ; Execution count [5.29e+000]
        mov       r11, r14                                      ;1574.7
        sub       r11, QWORD PTR [MATL_FI_mp_MAT_MC+72]         ;1574.7
        imul      r11, QWORD PTR [MATL_FI_mp_MAT_MC+64]         ;1574.7
        mov       r10, QWORD PTR [MATL_FI_mp_MAT_MC+8]          ;1574.3
        cmp       DWORD PTR [r10+r11], 1                        ;1574.23
        je        .B6.15        ; Prob 16%                      ;1574.23
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.12::                        ; Preds .B6.34 .B6.18 .B6.16 .B6.15 .B6.11
                                ;      
                                ; Execution count [5.26e+000]
        inc       r14                                           ;1617.1
        cmp       r14, rsi                                      ;1617.1
        jle       .B6.11        ; Prob 82%                      ;1617.1
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.14::                        ; Preds .B6.12 .B6.9
                                ; Execution count [1.00e+000]
        add       rsp, 272                                      ;1622.1
        pop       r15                                           ;1622.1
        pop       r14                                           ;1622.1
        pop       r13                                           ;1622.1
        pop       r12                                           ;1622.1
        pop       rdi                                           ;1622.1
        pop       rsi                                           ;1622.1
        pop       rbx                                           ;1622.1
        ret                                                     ;1622.1
                                ; LOE
.B6.15::                        ; Preds .B6.11
                                ; Execution count [8.46e-001]: Infreq
        mov       r11, r14                                      ;1576.5
        sub       r11, QWORD PTR [MATL_FI_mp_MAT_MC+144]        ;1576.5
        imul      r11, QWORD PTR [MATL_FI_mp_MAT_MC+136]        ;1576.5
        mov       r10, QWORD PTR [MATL_FI_mp_MAT_MC+80]         ;1576.5
        mov       rdx, QWORD PTR [CHEM_FI_mp_CHEMMC+64]         ;1577.5
        neg       rdx                                           ;1577.13
        movsxd    r10, DWORD PTR [r10+r11]                      ;1576.5
        add       rdx, r10                                      ;1577.13
        imul      rdx, rdx, 15120                               ;1577.13
        mov       rax, QWORD PTR [CHEM_FI_mp_CHEMMC+80]         ;1577.13
        mov       r10, QWORD PTR [CHEM_FI_mp_CHEMMC+88]         ;1577.13
        imul      r10, rax                                      ;1577.13
        mov       r11, QWORD PTR [CHEM_FI_mp_CHEMMC]            ;1577.5
        sub       r11, r10                                      ;1577.13
        add       r11, rax                                      ;1577.5
        add       rdx, r11                                      ;1577.13
        mov       QWORD PTR [568+r12], rdx                      ;1577.5
        test      BYTE PTR [1544+rdx], 1                        ;1579.9
        je        .B6.12        ; Prob 60%                      ;1579.9
                                ; LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.16::                        ; Preds .B6.15
                                ; Execution count [3.39e-001]: Infreq
        mov       r10d, DWORD PTR [1968+rdx]                    ;1581.11
        cmp       r10d, 2                                       ;1581.25
        jle       .B6.12        ; Prob 50%                      ;1581.25
                                ; LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 r10d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.17::                        ; Preds .B6.16
                                ; Execution count [1.69e-001]: Infreq
        mov       r11d, DWORD PTR [1972+rdx]                    ;1584.32
        dec       r10d                                          ;1586.25
        pxor      xmm1, xmm1                                    ;1586.25
        pxor      xmm4, xmm4                                    ;1587.25
        dec       r11d                                          ;1587.25
        lea       rcx, QWORD PTR [240+rsp]                      ;1589.13
        cvtsi2ss  xmm1, r10d                                    ;1586.25
        cvtsi2ss  xmm4, r11d                                    ;1587.25
        movss     xmm0, DWORD PTR [1984+rdx]                    ;1583.53
        mov       r11, rsp                                      ;1589.13
        movss     xmm3, DWORD PTR [1996+rdx]                    ;1584.53
        lea       r8, QWORD PTR [248+rsp]                       ;1589.13
        mulss     xmm1, xmm0                                    ;1586.37
        lea       r9, QWORD PTR [260+rsp]                       ;1589.13
        mulss     xmm4, xmm3                                    ;1587.37
        movss     xmm2, DWORD PTR [1980+rdx]                    ;1583.9
        lea       r10, QWORD PTR [244+rsp]                      ;1589.13
        movss     xmm5, DWORD PTR [1992+rdx]                    ;1584.9
        lea       rdx, QWORD PTR [256+rsp]                      ;1589.13
        movss     DWORD PTR [-16+rdx], xmm2                     ;1583.9
        addss     xmm2, xmm1                                    ;1586.9
        movss     DWORD PTR [-8+rdx], xmm5                      ;1584.9
        addss     xmm5, xmm4                                    ;1587.9
        mov       QWORD PTR [32+r11], r10                       ;1589.13
        lea       r10, QWORD PTR [252+rsp]                      ;1589.13
        mov       QWORD PTR [40+r11], r10                       ;1589.13
        lea       r10, QWORD PTR [264+rsp]                      ;1589.13
        mov       QWORD PTR [48+r11], r10                       ;1589.13
        lea       r10, QWORD PTR [268+rsp]                      ;1589.13
        movss     DWORD PTR [-12+rdx], xmm0                     ;1583.53
        movss     DWORD PTR [-4+rdx], xmm3                      ;1584.53
        movss     DWORD PTR [rdx], xmm2                         ;1586.9
        movss     DWORD PTR [4+rdx], xmm5                       ;1587.9
        mov       QWORD PTR [56+r11], r10                       ;1589.13
        call      CHECKDOMAINOVERLAP                            ;1589.13
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.18::                        ; Preds .B6.17
                                ; Execution count [1.69e-001]: Infreq
        test      al, 1                                         ;1589.13
        je        .B6.12        ; Prob 60%                      ;1589.13
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.19::                        ; Preds .B6.18
                                ; Execution count [6.77e-002]: Infreq
        mov       r10, rsp                                      ;1591.11
        mov       rcx, rbx                                      ;1591.11
        mov       edx, 80                                       ;1591.11
        lea       r8, QWORD PTR [__STRLITPACK_362]              ;1591.11
        mov       r9d, 46                                       ;1591.11
        mov       DWORD PTR [464+rbx], 13                       ;1590.11
        mov       QWORD PTR [32+r10], 0                         ;1591.11
        call      for_cpystr                                    ;1591.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.20::                        ; Preds .B6.19
                                ; Execution count [6.77e-002]: Infreq
        mov       r10, rsp                                      ;1592.11
        mov       rcx, r15                                      ;1592.11
        mov       edx, 128                                      ;1592.11
        lea       r8, QWORD PTR [__STRLITPACK_361]              ;1592.11
        mov       r9d, 62                                       ;1592.11
        mov       QWORD PTR [32+r10], 0                         ;1592.11
        call      for_cpystr                                    ;1592.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.21::                        ; Preds .B6.20
                                ; Execution count [6.77e-002]: Infreq
        lea       r10, QWORD PTR [__STRLITPACK_357]             ;1593.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1593.11
        mov       QWORD PTR [72+rcx], r10                       ;1593.11
        mov       r10, rsp                                      ;1593.11
        mov       rdx, 01208384ff00H                            ;1593.11
        lea       r8, QWORD PTR [__STRLITPACK_363.0.16]         ;1593.11
        lea       r11, QWORD PTR [CHECKSFLUXDOMAIN$format_pack.0.16] ;1593.11
        lea       r9, QWORD PTR [112+rsp]                       ;1593.11
        mov       QWORD PTR [rcx], 0                            ;1593.11
        mov       QWORD PTR [48+rcx], 128                       ;1593.11
        mov       QWORD PTR [56+rcx], rdi                       ;1593.11
        mov       QWORD PTR [64+rcx], 17                        ;1593.11
        mov       QWORD PTR [32+r10], r11                       ;1593.11
        call      for_write_int_fmt                             ;1593.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.22::                        ; Preds .B6.21
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [240+rsp]                     ;1593.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1593.11
        lea       rdx, QWORD PTR [__STRLITPACK_364.0.16]        ;1593.11
        lea       r8, QWORD PTR [176+rsp]                       ;1593.11
        mov       DWORD PTR [112+rcx], r10d                     ;1593.11
        call      for_write_int_fmt_xmit                        ;1593.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.23::                        ; Preds .B6.22
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [256+rsp]                     ;1593.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1593.11
        lea       rdx, QWORD PTR [__STRLITPACK_365.0.16]        ;1593.11
        lea       r8, QWORD PTR [184+rsp]                       ;1593.11
        mov       DWORD PTR [120+rcx], r10d                     ;1593.11
        call      for_write_int_fmt_xmit                        ;1593.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.24::                        ; Preds .B6.23
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [248+rsp]                     ;1593.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1593.11
        lea       rdx, QWORD PTR [__STRLITPACK_366.0.16]        ;1593.11
        lea       r8, QWORD PTR [192+rsp]                       ;1593.11
        mov       DWORD PTR [128+rcx], r10d                     ;1593.11
        call      for_write_int_fmt_xmit                        ;1593.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.25::                        ; Preds .B6.24
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [260+rsp]                     ;1593.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1593.11
        lea       rdx, QWORD PTR [__STRLITPACK_367.0.16]        ;1593.11
        lea       r8, QWORD PTR [200+rsp]                       ;1593.11
        mov       DWORD PTR [136+rcx], r10d                     ;1593.11
        call      for_write_int_fmt_xmit                        ;1593.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.26::                        ; Preds .B6.25
                                ; Execution count [6.77e-002]: Infreq
        lea       r10, QWORD PTR [__STRLITPACK_353]             ;1594.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1594.11
        mov       QWORD PTR [104+rcx], r10                      ;1594.11
        mov       r10, rsp                                      ;1594.11
        mov       rdx, 01208384ff00H                            ;1594.11
        lea       r8, QWORD PTR [__STRLITPACK_368.0.16]         ;1594.11
        lea       r11, QWORD PTR [CHECKSFLUXDOMAIN$format_pack.0.16+24] ;1594.11
        lea       r9, QWORD PTR [144+rsp]                       ;1594.11
        mov       QWORD PTR [rcx], 0                            ;1594.11
        mov       QWORD PTR [80+rcx], 128                       ;1594.11
        mov       QWORD PTR [88+rcx], r13                       ;1594.11
        mov       QWORD PTR [96+rcx], 17                        ;1594.11
        mov       QWORD PTR [32+r10], r11                       ;1594.11
        call      for_write_int_fmt                             ;1594.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.27::                        ; Preds .B6.26
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [GRID_FI_mp_XMIN]             ;1594.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1594.11
        lea       rdx, QWORD PTR [__STRLITPACK_369.0.16]        ;1594.11
        lea       r8, QWORD PTR [208+rsp]                       ;1594.11
        mov       DWORD PTR [144+rcx], r10d                     ;1594.11
        call      for_write_int_fmt_xmit                        ;1594.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.28::                        ; Preds .B6.27
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [GRID_FI_mp_XMAX]             ;1594.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1594.11
        lea       rdx, QWORD PTR [__STRLITPACK_370.0.16]        ;1594.11
        lea       r8, QWORD PTR [216+rsp]                       ;1594.11
        mov       DWORD PTR [152+rcx], r10d                     ;1594.11
        call      for_write_int_fmt_xmit                        ;1594.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.29::                        ; Preds .B6.28
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [GRID_FI_mp_YMIN]             ;1594.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1594.11
        lea       rdx, QWORD PTR [__STRLITPACK_371.0.16]        ;1594.11
        lea       r8, QWORD PTR [224+rsp]                       ;1594.11
        mov       DWORD PTR [160+rcx], r10d                     ;1594.11
        call      for_write_int_fmt_xmit                        ;1594.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.30::                        ; Preds .B6.29
                                ; Execution count [6.77e-002]: Infreq
        mov       r10d, DWORD PTR [GRID_FI_mp_YMAX]             ;1594.11
        lea       rcx, QWORD PTR [64+rsp]                       ;1594.11
        lea       rdx, QWORD PTR [__STRLITPACK_372.0.16]        ;1594.11
        lea       r8, QWORD PTR [232+rsp]                       ;1594.11
        mov       DWORD PTR [168+rcx], r10d                     ;1594.11
        call      for_write_int_fmt_xmit                        ;1594.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.31::                        ; Preds .B6.30
                                ; Execution count [6.77e-002]: Infreq
        lea       rcx, QWORD PTR [__NLITPACK_13.0.16]           ;1595.16
        call      WARNINGMESSAGE                                ;1595.16
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.32::                        ; Preds .B6.31
                                ; Execution count [6.77e-002]: Infreq
        cmp       DWORD PTR [464+rbx], 0                        ;1596.22
        jne       .B6.37        ; Prob 20%                      ;1596.22
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.33::                        ; Preds .B6.32
                                ; Execution count [5.42e-002]: Infreq
        movss     xmm0, DWORD PTR [GRID_FI_mp_XMIN]             ;1600.13
        movss     xmm1, DWORD PTR [GRID_FI_mp_XMAX]             ;1601.13
        movss     xmm2, DWORD PTR [GRID_FI_mp_YMIN]             ;1602.13
        movss     xmm3, DWORD PTR [GRID_FI_mp_YMAX]             ;1603.13
        maxss     xmm0, DWORD PTR [240+rsp]                     ;1600.13
        minss     xmm1, DWORD PTR [256+rsp]                     ;1601.13
        maxss     xmm2, DWORD PTR [248+rsp]                     ;1602.13
        minss     xmm3, DWORD PTR [260+rsp]                     ;1603.13
        comiss    xmm0, xmm1                                    ;1604.22
        movss     DWORD PTR [GRID_FI_mp_XMIN], xmm0             ;1600.13
        movss     DWORD PTR [GRID_FI_mp_XMAX], xmm1             ;1601.13
        movss     DWORD PTR [GRID_FI_mp_YMIN], xmm2             ;1602.13
        movss     DWORD PTR [GRID_FI_mp_YMAX], xmm3             ;1603.13
        ja        .B6.35        ; Prob 20%                      ;1604.22
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.34::                        ; Preds .B6.33
                                ; Execution count [4.33e-002]: Infreq
        comiss    xmm2, xmm3                                    ;1604.39
        jbe       .B6.12        ; Prob 80%                      ;1604.39
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.35::                        ; Preds .B6.33 .B6.34
                                ; Execution count [8.67e-003]: Infreq
        mov       rax, rbx                                      ;
        mov       rcx, r15                                      ;
                                ; LOE rax rcx rbp rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.36::                        ; Preds .B6.35
                                ; Execution count [1.95e-002]: Infreq
        mov       DWORD PTR [464+rax], 13                       ;1605.15
        mov       rax, rsp                                      ;1606.15
        mov       edx, 128                                      ;1606.15
        lea       r8, QWORD PTR [__STRLITPACK_352]              ;1606.15
        mov       r9d, 40                                       ;1606.15
        mov       QWORD PTR [32+rax], 0                         ;1606.15
        call      for_cpystr                                    ;1606.15
        add       rsp, 272                                      ;1606.15
        pop       r15                                           ;1606.15
        pop       r14                                           ;1606.15
        pop       r13                                           ;1606.15
        pop       r12                                           ;1606.15
        pop       rdi                                           ;1606.15
        pop       rsi                                           ;1606.15
        pop       rbx                                           ;1606.15
        ret                                                     ;1606.15
                                ; LOE rbp rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.37::                        ; Preds .B6.32
                                ; Execution count [1.35e-002]: Infreq
        call      INIT_ERROR                                    ;1597.18
        add       rsp, 272                                      ;1597.18
        pop       r15                                           ;1597.18
        pop       r14                                           ;1597.18
        pop       r13                                           ;1597.18
        pop       r12                                           ;1597.18
        pop       rdi                                           ;1597.18
        pop       rsi                                           ;1597.18
        pop       rbx                                           ;1597.18
        ret                                                     ;1597.18
        ALIGN     16
                                ; LOE rbp rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.39::
; mark_end;
CHECKSFLUXDOMAIN ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CHECKSFLUXDOMAIN.B1_B37	DD	594433
	DD	2228498
	DD	3758747659
	DD	3221606407
	DD	1610772483
	DD	12289
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CHECKSFLUXDOMAIN.B1_B37	DD	imagerel .B6.1
	DD	imagerel .B6.39
	DD	imagerel .unwind.CHECKSFLUXDOMAIN.B1_B37
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.57_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_cache_0.27	DD 2 DUP (?)	; pad
.2.57_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_1.29	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
.2.57_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_size_0.28	DD	000000510H,000000000H
.2.57_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_1.30	DD	0000001d4H,000000000H
.2.57_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.57_2__kmpc_loc_pack.11
.2.57_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	83
	DB	70
	DB	76
	DB	85
	DB	88
	DB	68
	DB	79
	DB	77
	DB	65
	DB	73
	DB	78
	DB	59
	DB	49
	DB	53
	DB	53
	DB	51
	DB	59
	DB	49
	DB	53
	DB	53
	DB	51
	DB	59
	DB	59
	DB 3 DUP ( 0H)	; pad
.2.57_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.57_2__kmpc_loc_pack.19
.2.57_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	83
	DB	70
	DB	76
	DB	85
	DB	88
	DB	68
	DB	79
	DB	77
	DB	65
	DB	73
	DB	78
	DB	59
	DB	49
	DB	53
	DB	53
	DB	51
	DB	59
	DB	49
	DB	54
	DB	50
	DB	50
	DB	59
	DB	59
	DB 3 DUP ( 0H)	; pad
CHECKSFLUXDOMAIN$format_pack.0.16	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	33
	DB	0
	DB	0
	DB	2
	DB	4
	DB	0
	DB	0
	DB	0
	DB	10
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	33
	DB	0
	DB	0
	DB	2
	DB	4
	DB	0
	DB	0
	DB	0
	DB	10
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
__STRLITPACK_363.0.16	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_364.0.16	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_365.0.16	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_366.0.16	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_367.0.16	DD	65818
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_368.0.16	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_369.0.16	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_370.0.16	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_371.0.16	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_372.0.16	DD	65818
	DB	2
	DB 3 DUP ( 0H)	; pad
__NLITPACK_13.0.16	DD	0
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  CHECKSFLUXDOMAIN
_TEXT	SEGMENT      'CODE'
; -- Begin  CREATE_SURFACE
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC CREATE_SURFACE
; --- CREATE_SURFACE
CREATE_SURFACE	PROC 
.B7.1::                         ; Preds .B7.0
                                ; Execution count [0.00e+000]
L13::
                                                          ;1625.12
        push      rbx                                           ;1625.12
        push      rsi                                           ;1625.12
        push      rdi                                           ;1625.12
        push      r12                                           ;1625.12
        push      r13                                           ;1625.12
        push      r14                                           ;1625.12
        push      r15                                           ;1625.12
        push      rbp                                           ;1625.12
        sub       rsp, 1672                                     ;1625.12
        lea       rcx, QWORD PTR [.2.58_2_kmpc_loc_struct_pack.12] ;1625.12
        call      __kmpc_global_thread_num                      ;1625.12
                                ; LOE eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.250::                       ; Preds .B7.1
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.58_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1625.12
        mov       esi, eax                                      ;1625.12
        test      rcx, rcx                                      ;1625.12
        je        .B7.3         ; Prob 50%                      ;1625.12
                                ; LOE rcx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.2::                         ; Preds .B7.250
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [rsi*8]                        ;1625.12
        cdqe                                                    ;1625.12
        mov       r12, QWORD PTR [rcx+rax]                      ;1625.12
        test      r12, r12                                      ;1625.12
        jne       .B7.5         ; Prob 50%                      ;1625.12
                                ; LOE r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.3::                         ; Preds .B7.250 .B7.2
                                ; Execution count [0.00e+000]
        mov       rbx, rsp                                      ;1625.12
        lea       rcx, QWORD PTR [.2.58_2_kmpc_loc_struct_pack.20] ;1625.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1625.12
        mov       edx, esi                                      ;1625.12
        mov       r9, QWORD PTR [.2.58_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28] ;1625.12
        lea       rax, QWORD PTR [.2.58_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1625.12
        mov       QWORD PTR [32+rbx], rax                       ;1625.12
        call      __kmpc_threadprivate_cached                   ;1625.12
                                ; LOE rax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.251::                       ; Preds .B7.3
                                ; Execution count [0.00e+000]
        mov       r12, rax                                      ;1625.12
                                ; LOE r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.5::                         ; Preds .B7.251 .B7.2
                                ; Execution count [0.00e+000]
        mov       rbx, QWORD PTR [.2.58_2_kmpv_CREATE_SURFACE$BLK.SRFAUX_FI_mp_IBAUX_SRF_V$34b9_cache_1.29] ;1625.12
        test      rbx, rbx                                      ;1625.12
        je        .B7.7         ; Prob 50%                      ;1625.12
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.6::                         ; Preds .B7.5
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [rsi*8]                        ;1625.12
        cdqe                                                    ;1625.12
        mov       rdi, QWORD PTR [rbx+rax]                      ;1625.12
        test      rdi, rdi                                      ;1625.12
        jne       .B7.9         ; Prob 50%                      ;1625.12
                                ; LOE rdi r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.7::                         ; Preds .B7.5 .B7.6
                                ; Execution count [0.00e+000]
        mov       rbx, rsp                                      ;1625.12
        lea       rcx, QWORD PTR [.2.58_2_kmpc_loc_struct_pack.20] ;1625.12
        lea       r8, QWORD PTR [SRFAUX_FI_CMN]                 ;1625.12
        mov       edx, esi                                      ;1625.12
        mov       r9, QWORD PTR [.2.58_2_kmpv_CREATE_SURFACE$BLK.SRFAUX_FI_mp_IBAUX_SRF_V$34b9_size_1.30] ;1625.12
        lea       rax, QWORD PTR [.2.58_2_kmpv_CREATE_SURFACE$BLK.SRFAUX_FI_mp_IBAUX_SRF_V$34b9_cache_1.29] ;1625.12
        mov       QWORD PTR [32+rbx], rax                       ;1625.12
        call      __kmpc_threadprivate_cached                   ;1625.12
                                ; LOE rax r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.252::                       ; Preds .B7.7
                                ; Execution count [0.00e+000]
        mov       rdi, rax                                      ;1625.12
                                ; LOE rdi r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.9::                         ; Preds .B7.252 .B7.6
                                ; Execution count [0.00e+000]
        mov       rbx, QWORD PTR [.2.58_2_kmpv_SURFACE_FI_mp_SRFDOS_V$3503_cache_2.31] ;1625.12
        test      rbx, rbx                                      ;1625.12
        je        .B7.11        ; Prob 50%                      ;1625.12
                                ; LOE rbx rdi r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.10::                        ; Preds .B7.9
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [rsi*8]                        ;1625.12
        cdqe                                                    ;1625.12
        mov       rbx, QWORD PTR [rbx+rax]                      ;1625.12
        test      rbx, rbx                                      ;1625.12
        jne       .B7.13        ; Prob 50%                      ;1625.12
                                ; LOE rbx rdi r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.11::                        ; Preds .B7.10 .B7.9
                                ; Execution count [0.00e+000]
        mov       rbx, rsp                                      ;1625.12
        lea       rcx, QWORD PTR [.2.58_2_kmpc_loc_struct_pack.20] ;1625.12
        lea       r8, QWORD PTR [SURFACE_FI_mp_SRFDOS]          ;1625.12
        mov       edx, esi                                      ;1625.12
        mov       r9, QWORD PTR [.2.58_2_kmpv_SURFACE_FI_mp_SRFDOS_V$3503_size_2.32] ;1625.12
        lea       rax, QWORD PTR [.2.58_2_kmpv_SURFACE_FI_mp_SRFDOS_V$3503_cache_2.31] ;1625.12
        mov       QWORD PTR [32+rbx], rax                       ;1625.12
        call      __kmpc_threadprivate_cached                   ;1625.12
                                ; LOE rax rdi r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.253::                       ; Preds .B7.11
                                ; Execution count [0.00e+000]
        mov       rbx, rax                                      ;1625.12
                                ; LOE rbx rdi r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.13::                        ; Preds .B7.253 .B7.10
                                ; Execution count [0.00e+000]
        mov       rbp, QWORD PTR [.2.58_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_cache_3.33] ;1625.12
        test      rbp, rbp                                      ;1625.12
        je        .B7.15        ; Prob 50%                      ;1625.12
                                ; LOE rbx rbp rdi r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.14::                        ; Preds .B7.13
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [rsi*8]                        ;1625.12
        cdqe                                                    ;1625.12
        mov       rbp, QWORD PTR [rbp+rax]                      ;1625.12
        test      rbp, rbp                                      ;1625.12
        jne       .B7.17        ; Prob 50%                      ;1625.12
                                ; LOE rbx rbp rdi r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.15::                        ; Preds .B7.13 .B7.14
                                ; Execution count [0.00e+000]
        mov       rbp, rsp                                      ;1625.12
        lea       rcx, QWORD PTR [.2.58_2_kmpc_loc_struct_pack.20] ;1625.12
        lea       r8, QWORD PTR [CHEM_FI_CMN]                   ;1625.12
        mov       edx, esi                                      ;1625.12
        mov       r9, QWORD PTR [.2.58_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_size_3.34] ;1625.12
        lea       rax, QWORD PTR [.2.58_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_cache_3.33] ;1625.12
        mov       QWORD PTR [32+rbp], rax                       ;1625.12
        call      __kmpc_threadprivate_cached                   ;1625.12
                                ; LOE rax rbx rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.254::                       ; Preds .B7.15
                                ; Execution count [0.00e+000]
        mov       rbp, rax                                      ;1625.12
                                ; LOE rbx rbp rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.17::                        ; Preds .B7.254 .B7.14
                                ; Execution count [1.00e+000]
        movups    xmm0, XMMWORD PTR [.T6913_.0.17]              ;1644.45
        movups    xmm1, XMMWORD PTR [.T6913_.0.17+16]           ;1644.45
        movups    xmm2, XMMWORD PTR [.T6913_.0.17+32]           ;1644.45
        movups    xmm3, XMMWORD PTR [.T6913_.0.17+48]           ;1644.45
        mov       rax, QWORD PTR [.T6913_.0.17+64]              ;1644.45
        movups    XMMWORD PTR [1424+rsp], xmm0                  ;1644.45
        movups    XMMWORD PTR [1440+rsp], xmm1                  ;1644.45
        movups    XMMWORD PTR [1456+rsp], xmm2                  ;1644.45
        movups    XMMWORD PTR [1472+rsp], xmm3                  ;1644.45
        mov       QWORD PTR [1488+rsp], rax                     ;1644.45
                                ; LOE rbx rbp rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.18::                        ; Preds .B7.17
                                ; Execution count [1.00e+000]
        movups    xmm0, XMMWORD PTR [.T6923_.0.17]              ;1643.51
        movups    xmm1, XMMWORD PTR [.T6923_.0.17+16]           ;1643.51
        movups    xmm2, XMMWORD PTR [.T6923_.0.17+32]           ;1643.51
        movups    xmm3, XMMWORD PTR [.T6923_.0.17+48]           ;1643.51
        mov       rax, QWORD PTR [.T6923_.0.17+64]              ;1643.51
        movups    XMMWORD PTR [1504+rsp], xmm0                  ;1643.51
        movups    XMMWORD PTR [1520+rsp], xmm1                  ;1643.51
        movups    XMMWORD PTR [1536+rsp], xmm2                  ;1643.51
        movups    XMMWORD PTR [1552+rsp], xmm3                  ;1643.51
        mov       QWORD PTR [1568+rsp], rax                     ;1643.51
                                ; LOE rax rbx rbp rdi r12 xmm0 xmm1 xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.19::                        ; Preds .B7.18
                                ; Execution count [1.00e+000]
        movups    XMMWORD PTR [1584+rsp], xmm0                  ;1643.45
        movups    XMMWORD PTR [1600+rsp], xmm1                  ;1643.45
        movups    XMMWORD PTR [1616+rsp], xmm2                  ;1643.45
        movups    XMMWORD PTR [1632+rsp], xmm3                  ;1643.45
        mov       QWORD PTR [1648+rsp], rax                     ;1643.45
                                ; LOE rbx rbp rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.20::                        ; Preds .B7.19
                                ; Execution count [1.00e+000]
        mov       rax, rsp                                      ;1656.1
        lea       rcx, QWORD PTR [1040+rsp]                     ;1656.1
        mov       edx, 128                                      ;1656.1
        lea       r8, QWORD PTR [1656+rsp]                      ;1656.1
        mov       r9d, 1                                        ;1656.1
        mov       BYTE PTR [616+rcx], 0                         ;1656.9
        mov       QWORD PTR [32+rax], 0                         ;1656.1
        call      for_cpystr                                    ;1656.1
                                ; LOE rbx rbp rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.21::                        ; Preds .B7.20
                                ; Execution count [1.00e+000]
        mov       rax, rsp                                      ;1657.1
        lea       rcx, QWORD PTR [1168+rsp]                     ;1657.1
        mov       edx, 128                                      ;1657.1
        lea       r8, QWORD PTR [1660+rsp]                      ;1657.1
        mov       r9d, 1                                        ;1657.1
        mov       BYTE PTR [492+rcx], 0                         ;1657.9
        mov       QWORD PTR [32+rax], 0                         ;1657.1
        call      for_cpystr                                    ;1657.1
                                ; LOE rbx rbp rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.22::                        ; Preds .B7.21
                                ; Execution count [1.00e+000]
        mov       rax, rsp                                      ;1658.1
        lea       r14, QWORD PTR [1296+rsp]                     ;1658.1
        mov       rcx, r14                                      ;1658.1
        mov       edx, 128                                      ;1658.1
        lea       r8, QWORD PTR [__STRLITPACK_415]              ;1658.1
        mov       r9d, 29                                       ;1658.1
        mov       QWORD PTR [32+rax], 0                         ;1658.1
        call      for_cpystr                                    ;1658.1
                                ; LOE rbx rbp rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.23::                        ; Preds .B7.22
                                ; Execution count [1.00e+000]
        mov       rax, rsp                                      ;1659.6
        mov       edx, 128                                      ;1659.6
        mov       r9, rdx                                       ;1659.6
        lea       rcx, QWORD PTR [1040+rsp]                     ;1659.6
        lea       r8, QWORD PTR [1168+rsp]                      ;1659.6
        mov       QWORD PTR [32+rax], r14                       ;1659.6
        mov       QWORD PTR [40+rax], 128                       ;1659.6
        call      WRITE_PROGRESS                                ;1659.6
                                ; LOE rbx rbp rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.24::                        ; Preds .B7.23
                                ; Execution count [1.00e+000]
        lea       rcx, QWORD PTR [MATL_FI_mp_NTYPM]             ;1663.6
        call      INIT_SRF_BLOCKS                               ;1663.6
                                ; LOE rbx rbp rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.25::                        ; Preds .B7.24
                                ; Execution count [1.00e+000]
        cmp       DWORD PTR [464+r12], 0                        ;1664.12
        jne       .B7.53        ; Prob 50%                      ;1664.12
                                ; LOE rbx rbp rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.27::                        ; Preds .B7.25
                                ; Execution count [5.00e-001]
        xor       esi, esi                                      ;1666.1
        mov       QWORD PTR [8+rdi], rsi                        ;1666.1
        mov       QWORD PTR [32+rdi], rsi                       ;1666.1
        mov       QWORD PTR [80+rdi], rsi                       ;1667.1
        mov       QWORD PTR [104+rdi], rsi                      ;1667.1
        mov       QWORD PTR [152+rdi], rsi                      ;1668.1
        mov       QWORD PTR [176+rdi], rsi                      ;1668.1
        test      BYTE PTR [FLAGS_FI_mp_SURFACE], 1             ;1672.5
        jne       .B7.45        ; Prob 40%                      ;1672.5
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.28::                        ; Preds .B7.244 .B7.27
                                ; Execution count [3.00e-001]
        test      BYTE PTR [FLAGS_FI_mp_DOSE], 1                ;1738.5
        je        .B7.53        ; Prob 60%                      ;1738.5
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.29::                        ; Preds .B7.28
                                ; Execution count [1.20e-001]
        mov       rax, rsp                                      ;1740.3
        lea       rcx, QWORD PTR [1040+rsp]                     ;1740.3
        mov       edx, 128                                      ;1740.3
        lea       r8, QWORD PTR [1496+rsp]                      ;1740.3
        mov       r9d, 1                                        ;1740.3
        mov       BYTE PTR [456+rcx], 0                         ;1740.11
        mov       QWORD PTR [32+rax], 0                         ;1740.3
        call      for_cpystr                                    ;1740.3
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.30::                        ; Preds .B7.29
                                ; Execution count [1.20e-001]
        mov       rax, rsp                                      ;1741.3
        lea       rcx, QWORD PTR [1168+rsp]                     ;1741.3
        mov       edx, 128                                      ;1741.3
        lea       r8, QWORD PTR [1500+rsp]                      ;1741.3
        mov       r9d, 1                                        ;1741.3
        mov       BYTE PTR [332+rcx], 0                         ;1741.11
        mov       QWORD PTR [32+rax], 0                         ;1741.3
        call      for_cpystr                                    ;1741.3
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.31::                        ; Preds .B7.30
                                ; Execution count [1.20e-001]
        mov       rax, rsp                                      ;1742.3
        mov       rcx, r14                                      ;1742.3
        mov       edx, 128                                      ;1742.3
        lea       r8, QWORD PTR [__STRLITPACK_405]              ;1742.3
        mov       r9d, 28                                       ;1742.3
        mov       QWORD PTR [32+rax], 0                         ;1742.3
        call      for_cpystr                                    ;1742.3
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.32::                        ; Preds .B7.31
                                ; Execution count [1.20e-001]
        mov       rax, rsp                                      ;1743.8
        mov       edx, 128                                      ;1743.8
        mov       r9, rdx                                       ;1743.8
        lea       rcx, QWORD PTR [1040+rsp]                     ;1743.8
        lea       r8, QWORD PTR [1168+rsp]                      ;1743.8
        mov       QWORD PTR [32+rax], r14                       ;1743.8
        mov       QWORD PTR [40+rax], 128                       ;1743.8
        call      WRITE_PROGRESS                                ;1743.8
                                ; LOE rbx rbp rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.33::                        ; Preds .B7.32
                                ; Execution count [1.20e-001]
        test      DWORD PTR [FLAGS_FI_mp_RUN_MODE], 128         ;1745.7
        je        .B7.39        ; Prob 60%                      ;1745.7
                                ; LOE rbx rbp rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.34::                        ; Preds .B7.33
                                ; Execution count [8.43e-002]
        mov       r8d, DWORD PTR [SURFACE_FI_mp_NSRF_BLOCKS]    ;1747.5
        sub       r8d, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]    ;1747.5
        mov       DWORD PTR [236+rsp], r8d                      ;1747.5
        cmp       r8d, 999                                      ;1748.21
        jle       .B7.67        ; Prob 5%                       ;1748.21
                                ; LOE rsi r12 r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.35::                        ; Preds .B7.34
                                ; Execution count [8.01e-002]
        mov       rax, rsp                                      ;1750.7
        mov       rcx, r12                                      ;1750.7
        mov       edx, 80                                       ;1750.7
        lea       r8, QWORD PTR [__STRLITPACK_404]              ;1750.7
        mov       r9d, 14                                       ;1750.7
        mov       DWORD PTR [464+r12], 99                       ;1749.7
        mov       QWORD PTR [32+rax], 0                         ;1750.7
        call      for_cpystr                                    ;1750.7
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.36::                        ; Preds .B7.35
                                ; Execution count [8.01e-002]
        mov       rax, rsp                                      ;1751.7
        lea       rcx, QWORD PTR [80+r12]                       ;1751.7
        mov       edx, 128                                      ;1751.7
        lea       r8, QWORD PTR [__STRLITPACK_403]              ;1751.7
        mov       r9d, 26                                       ;1751.7
        mov       QWORD PTR [32+rax], 0                         ;1751.7
        call      for_cpystr                                    ;1751.7
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.37::                        ; Preds .B7.36
                                ; Execution count [8.01e-002]
        mov       rax, rsp                                      ;1752.7
        add       r12, 208                                      ;1752.7
        mov       rcx, r12                                      ;1752.7
        mov       edx, 128                                      ;1752.7
        lea       r8, QWORD PTR [__STRLITPACK_402]              ;1752.7
        mov       r9d, 39                                       ;1752.7
        mov       QWORD PTR [32+rax], 0                         ;1752.7
        call      for_cpystr                                    ;1752.7
        jmp       .B7.53        ; Prob 100%                     ;1752.7
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.39::                        ; Preds .B7.33
                                ; Execution count [3.57e-002]
        mov       rcx, rbx                                      ;1820.9
        call      SAG_NEWGRDSTR                                 ;1820.9
                                ; LOE rbx rbp rsi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.40::                        ; Preds .B7.39
                                ; Execution count [3.57e-002]
        test      eax, eax                                      ;1821.11
        je        .B7.123       ; Prob 5%                       ;1821.11
                                ; LOE rbx rbp rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.41::                        ; Preds .B7.40
                                ; Execution count [3.39e-002]
        mov       rax, rsp                                      ;1823.5
        mov       rcx, r12                                      ;1823.5
        mov       edx, 80                                       ;1823.5
        lea       r8, QWORD PTR [__STRLITPACK_386]              ;1823.5
        mov       r9d, 14                                       ;1823.5
        mov       DWORD PTR [464+r12], 99                       ;1822.5
        mov       QWORD PTR [32+rax], 0                         ;1823.5
        call      for_cpystr                                    ;1823.5
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.42::                        ; Preds .B7.41
                                ; Execution count [3.39e-002]
        mov       rax, rsp                                      ;1824.5
        add       r12, 80                                       ;1824.5
        mov       rcx, r12                                      ;1824.5
        mov       edx, 128                                      ;1824.5
        lea       r8, QWORD PTR [__STRLITPACK_385]              ;1824.5
        mov       r9d, 32                                       ;1824.5
        mov       QWORD PTR [32+rax], 0                         ;1824.5
        call      for_cpystr                                    ;1824.5
        jmp       .B7.53        ; Prob 100%                     ;1824.5
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.45::                        ; Preds .B7.27
                                ; Execution count [2.00e-001]
        mov       rax, rsp                                      ;1674.3
        lea       rcx, QWORD PTR [1040+rsp]                     ;1674.3
        mov       edx, 128                                      ;1674.3
        lea       r8, QWORD PTR [1576+rsp]                      ;1674.3
        mov       r9d, 1                                        ;1674.3
        mov       BYTE PTR [536+rcx], 0                         ;1674.11
        mov       QWORD PTR [32+rax], 0                         ;1674.3
        call      for_cpystr                                    ;1674.3
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.46::                        ; Preds .B7.45
                                ; Execution count [2.00e-001]
        mov       rax, rsp                                      ;1675.3
        lea       rcx, QWORD PTR [1168+rsp]                     ;1675.3
        mov       edx, 128                                      ;1675.3
        lea       r8, QWORD PTR [1580+rsp]                      ;1675.3
        mov       r9d, 1                                        ;1675.3
        mov       BYTE PTR [412+rcx], 0                         ;1675.11
        mov       QWORD PTR [32+rax], 0                         ;1675.3
        call      for_cpystr                                    ;1675.3
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.47::                        ; Preds .B7.46
                                ; Execution count [2.00e-001]
        mov       rax, rsp                                      ;1676.3
        mov       rcx, r14                                      ;1676.3
        mov       edx, 128                                      ;1676.3
        lea       r8, QWORD PTR [__STRLITPACK_414]              ;1676.3
        mov       r9d, 32                                       ;1676.3
        mov       QWORD PTR [32+rax], 0                         ;1676.3
        call      for_cpystr                                    ;1676.3
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.48::                        ; Preds .B7.47
                                ; Execution count [2.00e-001]
        mov       rax, rsp                                      ;1677.8
        mov       edx, 128                                      ;1677.8
        mov       r9, rdx                                       ;1677.8
        lea       rcx, QWORD PTR [1040+rsp]                     ;1677.8
        lea       r8, QWORD PTR [1168+rsp]                      ;1677.8
        mov       QWORD PTR [32+rax], r14                       ;1677.8
        mov       QWORD PTR [40+rax], 128                       ;1677.8
        call      WRITE_PROGRESS                                ;1677.8
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.49::                        ; Preds .B7.48
                                ; Execution count [2.00e-001]
        lea       rcx, QWORD PTR [SURFACE_FI_mp_SRFDEP]         ;1679.9
        call      SAG_NEWGRDSTR                                 ;1679.9
                                ; LOE rbx rbp rsi r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.50::                        ; Preds .B7.49
                                ; Execution count [2.00e-001]
        test      eax, eax                                      ;1680.11
        je        .B7.204       ; Prob 5%                       ;1680.11
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.51::                        ; Preds .B7.50
                                ; Execution count [1.90e-001]
        mov       rax, rsp                                      ;1682.5
        mov       rcx, r12                                      ;1682.5
        mov       edx, 80                                       ;1682.5
        lea       r8, QWORD PTR [__STRLITPACK_413]              ;1682.5
        mov       r9d, 14                                       ;1682.5
        mov       DWORD PTR [464+r12], 99                       ;1681.5
        mov       QWORD PTR [32+rax], 0                         ;1682.5
        call      for_cpystr                                    ;1682.5
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.52::                        ; Preds .B7.51
                                ; Execution count [1.90e-001]
        mov       rax, rsp                                      ;1683.5
        add       r12, 80                                       ;1683.5
        mov       rcx, r12                                      ;1683.5
        mov       edx, 128                                      ;1683.5
        lea       r8, QWORD PTR [__STRLITPACK_412]              ;1683.5
        mov       r9d, 38                                       ;1683.5
        mov       QWORD PTR [32+rax], 0                         ;1683.5
        call      for_cpystr                                    ;1683.5
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.53::                        ; Preds .B7.240 .B7.234 .B7.219 .B7.207 .B7.190
                                ;       .B7.180 .B7.175 .B7.171 .B7.164 .B7.154
                                ;       .B7.149 .B7.138 .B7.126 .B7.116 .B7.113
                                ;       .B7.109 .B7.91 .B7.104 .B7.73 .B7.28
                                ;       .B7.42 .B7.37 .B7.25 .B7.52
                                ; Execution count [1.90e-001]
        mov       rdi, QWORD PTR [1608+rsp]                     ;1933.5
        mov       rbp, QWORD PTR [1528+rsp]                     ;1934.5
        mov       rsi, QWORD PTR [1448+rsp]                     ;1932.5
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.54::                        ; Preds .B7.99 .B7.101 .B7.53
                                ; Execution count [1.00e+000]
        test      esi, 1                                        ;1932.5
        je        .B7.57        ; Prob 60%                      ;1932.5
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.55::                        ; Preds .B7.54
                                ; Execution count [3.39e-002]
        mov       rax, rsi                                      ;1932.25
        mov       r8, rsi                                       ;1932.25
        and       rax, 2                                        ;1932.25
        and       r8, -2048                                     ;1932.25
        mov       r9, rsi                                       ;1932.25
        mov       ebx, esi                                      ;1932.25
        shr       rax, 1                                        ;1932.25
        and       r9, -256                                      ;1932.25
        shr       r8, 11                                        ;1932.25
        and       ebx, 1                                        ;1932.25
        shr       r9, 8                                         ;1932.25
        lea       edx, DWORD PTR [1+rax*4]                      ;1932.25
        add       ebx, ebx                                      ;1932.25
        and       r8d, 1                                        ;1932.25
        mov       r10, 0f000000000H                             ;1932.25
        or        edx, ebx                                      ;1932.25
        shl       r8d, 8                                        ;1932.25
        and       r9d, 1                                        ;1932.25
        and       r10, rsi                                      ;1932.25
        or        edx, r8d                                      ;1932.25
        shl       r9d, 21                                       ;1932.25
        shr       r10, 36                                       ;1932.25
        or        edx, r9d                                      ;1932.25
        and       edx, -31457281                                ;1932.25
        shl       r10d, 21                                      ;1932.25
        or        edx, r10d                                     ;1932.25
        add       edx, 262144                                   ;1932.25
        mov       rcx, QWORD PTR [1424+rsp]                     ;1932.25
        call      for_dealloc_allocatable                       ;1932.25
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.56::                        ; Preds .B7.55
                                ; Execution count [3.39e-002]
        mov       rax, 0ffffff0ffffff7feH                       ;1932.25
        and       rsi, rax                                      ;1932.25
        mov       QWORD PTR [1424+rsp], 0                       ;1932.25
        mov       QWORD PTR [1448+rsp], rsi                     ;1932.25
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.57::                        ; Preds .B7.56 .B7.54
                                ; Execution count [1.00e+000]
        test      edi, 1                                        ;1933.5
        je        .B7.60        ; Prob 60%                      ;1933.5
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.58::                        ; Preds .B7.57
                                ; Execution count [3.39e-002]
        mov       rax, rdi                                      ;1933.25
        mov       r8, rdi                                       ;1933.25
        and       rax, 2                                        ;1933.25
        and       r8, -2048                                     ;1933.25
        mov       r9, rdi                                       ;1933.25
        mov       ebx, edi                                      ;1933.25
        shr       rax, 1                                        ;1933.25
        and       r9, -256                                      ;1933.25
        shr       r8, 11                                        ;1933.25
        and       ebx, 1                                        ;1933.25
        shr       r9, 8                                         ;1933.25
        lea       edx, DWORD PTR [1+rax*4]                      ;1933.25
        add       ebx, ebx                                      ;1933.25
        and       r8d, 1                                        ;1933.25
        mov       r10, 0f000000000H                             ;1933.25
        or        edx, ebx                                      ;1933.25
        shl       r8d, 8                                        ;1933.25
        and       r9d, 1                                        ;1933.25
        and       r10, rdi                                      ;1933.25
        or        edx, r8d                                      ;1933.25
        shl       r9d, 21                                       ;1933.25
        shr       r10, 36                                       ;1933.25
        or        edx, r9d                                      ;1933.25
        and       edx, -31457281                                ;1933.25
        shl       r10d, 21                                      ;1933.25
        or        edx, r10d                                     ;1933.25
        add       edx, 262144                                   ;1933.25
        mov       rcx, QWORD PTR [1584+rsp]                     ;1933.25
        call      for_dealloc_allocatable                       ;1933.25
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.59::                        ; Preds .B7.58
                                ; Execution count [3.39e-002]
        mov       rax, 0ffffff0ffffff7feH                       ;1933.25
        and       rdi, rax                                      ;1933.25
        mov       QWORD PTR [1584+rsp], 0                       ;1933.25
        mov       QWORD PTR [1608+rsp], rdi                     ;1933.25
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.60::                        ; Preds .B7.59 .B7.57
                                ; Execution count [1.00e+000]
        test      ebp, 1                                        ;1934.5
        je        .B7.63        ; Prob 60%                      ;1934.5
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.61::                        ; Preds .B7.60
                                ; Execution count [3.39e-002]
        mov       rax, rbp                                      ;1934.25
        mov       r8, rbp                                       ;1934.25
        and       rax, 2                                        ;1934.25
        and       r8, -2048                                     ;1934.25
        mov       r9, rbp                                       ;1934.25
        mov       ebx, ebp                                      ;1934.25
        shr       rax, 1                                        ;1934.25
        and       r9, -256                                      ;1934.25
        shr       r8, 11                                        ;1934.25
        and       ebx, 1                                        ;1934.25
        shr       r9, 8                                         ;1934.25
        lea       edx, DWORD PTR [1+rax*4]                      ;1934.25
        add       ebx, ebx                                      ;1934.25
        and       r8d, 1                                        ;1934.25
        mov       r10, 0f000000000H                             ;1934.25
        or        edx, ebx                                      ;1934.25
        shl       r8d, 8                                        ;1934.25
        and       r9d, 1                                        ;1934.25
        and       r10, rbp                                      ;1934.25
        or        edx, r8d                                      ;1934.25
        shl       r9d, 21                                       ;1934.25
        shr       r10, 36                                       ;1934.25
        or        edx, r9d                                      ;1934.25
        and       edx, -31457281                                ;1934.25
        shl       r10d, 21                                      ;1934.25
        or        edx, r10d                                     ;1934.25
        add       edx, 262144                                   ;1934.25
        mov       rcx, QWORD PTR [1504+rsp]                     ;1934.25
        call      for_dealloc_allocatable                       ;1934.25
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.62::                        ; Preds .B7.61
                                ; Execution count [3.39e-002]
        mov       rax, 0ffffff0ffffff7feH                       ;1934.25
        and       rbp, rax                                      ;1934.25
        mov       QWORD PTR [1504+rsp], 0                       ;1934.25
        mov       QWORD PTR [1528+rsp], rbp                     ;1934.25
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.63::                        ; Preds .B7.62 .B7.60
                                ; Execution count [1.00e+000]
        test      rdi, 1                                        ;1937.1
        jne       .B7.202       ; Prob 3%                       ;1937.1
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.64::                        ; Preds .B7.63 .B7.203
                                ; Execution count [1.00e+000]
        test      rbp, 1                                        ;1937.1
        jne       .B7.200       ; Prob 3%                       ;1937.1
                                ; LOE rbp rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.65::                        ; Preds .B7.64 .B7.201
                                ; Execution count [1.00e+000]
        test      rsi, 1                                        ;1937.1
        jne       .B7.198       ; Prob 3%                       ;1937.1
                                ; LOE rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.66::                        ; Preds .B7.65
                                ; Execution count [1.00e+000]
        add       rsp, 1672                                     ;1937.1
        pop       rbp                                           ;1937.1
        pop       r15                                           ;1937.1
        pop       r14                                           ;1937.1
        pop       r13                                           ;1937.1
        pop       r12                                           ;1937.1
        pop       rdi                                           ;1937.1
        pop       rsi                                           ;1937.1
        pop       rbx                                           ;1937.1
        ret                                                     ;1937.1
                                ; LOE
.B7.67::                        ; Preds .B7.34
                                ; Execution count [4.22e-003]: Infreq
        movsxd    r8, r8d                                       ;1756.5
        lea       rcx, QWORD PTR [1032+rsp]                     ;1756.5
        test      r8, r8                                        ;1756.5
        cmovle    r8, rsi                                       ;1756.5
        mov       edx, 2                                        ;1756.5
        mov       r9d, 4                                        ;1756.5
        call      for_check_mult_overflow64                     ;1756.5
                                ; LOE rsi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.68::                        ; Preds .B7.67
                                ; Execution count [4.22e-003]: Infreq
        mov       rbx, 0fffffff00fffffffH                       ;1756.5
        and       eax, 1                                        ;1756.5
        and       rbx, QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+24]   ;1756.5
        lea       rdx, QWORD PTR [SURFACE_FI_mp_SRFDOSADJ]      ;1756.5
        add       rbx, 1073741824                               ;1756.5
        mov       r13d, ebx                                     ;1756.5
        and       r13d, 1                                       ;1756.5
        shl       eax, 4                                        ;1756.5
        mov       QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+24], rbx   ;1756.5
        mov       rcx, QWORD PTR [1032+rsp]                     ;1756.5
        lea       r8d, DWORD PTR [1+r13+r13]                    ;1756.5
        mov       r13, 0f000000000H                             ;1756.5
        or        r8d, eax                                      ;1756.5
        mov       rax, rbx                                      ;1756.5
        and       rax, -256                                     ;1756.5
        and       rbx, r13                                      ;1756.5
        shr       rax, 8                                        ;1756.5
        shr       rbx, 36                                       ;1756.5
        and       eax, 1                                        ;1756.5
        shl       eax, 21                                       ;1756.5
        or        r8d, eax                                      ;1756.5
        shl       ebx, 21                                       ;1756.5
        and       r8d, -31457281                                ;1756.5
        or        r8d, ebx                                      ;1756.5
        add       r8d, 262144                                   ;1756.5
        call      for_alloc_allocatable                         ;1756.5
                                ; LOE rax rsi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.258::                       ; Preds .B7.68
                                ; Execution count [4.22e-003]: Infreq
        mov       rbx, rax                                      ;1756.5
                                ; LOE rbx rsi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.69::                        ; Preds .B7.258
                                ; Execution count [4.22e-003]: Infreq
        test      rbx, rbx                                      ;1756.5
        jne       .B7.71        ; Prob 50%                      ;1756.5
                                ; LOE rbx rsi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.70::                        ; Preds .B7.69
                                ; Execution count [2.11e-003]: Infreq
        mov       rbp, QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+24]   ;1756.5
        mov       rdi, rbp                                      ;1756.5
        and       rdi, -256                                     ;1756.5
        and       rbp, r13                                      ;1756.5
        shr       rdi, 8                                        ;1756.5
        mov       rax, 0ffffff0fffffffffH                       ;1756.5
        shl       rdi, 63                                       ;1756.5
        mov       r14d, 4                                       ;1756.5
        movsxd    r11, DWORD PTR [236+rsp]                      ;1756.5
        test      r11, r11                                      ;1756.5
        mov       QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+16], rsi   ;1756.5
        lea       rcx, QWORD PTR [1024+rsp]                     ;1756.5
        cmovg     rsi, r11                                      ;1756.5
        mov       edx, 2                                        ;1756.5
        shr       rdi, 55                                       ;1756.5
        mov       r8, rsi                                       ;1756.5
        shr       rbp, 36                                       ;1756.5
        add       rdi, 133                                      ;1756.5
        shl       rbp, 60                                       ;1756.5
        and       rdi, rax                                      ;1756.5
        shr       rbp, 24                                       ;1756.5
        mov       r9, r14                                       ;1756.5
        or        rdi, rbp                                      ;1756.5
        mov       r10d, 1                                       ;1756.5
        mov       QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+24], rdi   ;1756.5
        mov       QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+8], r14    ;1756.5
        mov       QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+32], r10   ;1756.5
        mov       QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+64], r10   ;1756.5
        mov       QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+48], rsi   ;1756.5
        mov       QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+56], r14   ;1756.5
        call      for_check_mult_overflow64                     ;1756.5
                                ; LOE rbx r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.71::                        ; Preds .B7.70 .B7.69
                                ; Execution count [4.22e-003]: Infreq
        test      ebx, ebx                                      ;1758.13
        je        .B7.75        ; Prob 5%                       ;1758.13
                                ; LOE r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.72::                        ; Preds .B7.77 .B7.71
                                ; Execution count [4.01e-003]: Infreq
        mov       rax, rsp                                      ;1761.7
        mov       rcx, r12                                      ;1761.7
        mov       edx, 80                                       ;1761.7
        lea       r8, QWORD PTR [__STRLITPACK_401]              ;1761.7
        mov       r9d, 14                                       ;1761.7
        mov       DWORD PTR [464+r12], 99                       ;1760.7
        mov       QWORD PTR [32+rax], 0                         ;1761.7
        call      for_cpystr                                    ;1761.7
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.73::                        ; Preds .B7.72
                                ; Execution count [4.01e-003]: Infreq
        mov       rax, rsp                                      ;1762.7
        add       r12, 80                                       ;1762.7
        mov       rcx, r12                                      ;1762.7
        mov       edx, 128                                      ;1762.7
        lea       r8, QWORD PTR [__STRLITPACK_400]              ;1762.7
        mov       r9d, 40                                       ;1762.7
        mov       QWORD PTR [32+rax], 0                         ;1762.7
        call      for_cpystr                                    ;1762.7
        jmp       .B7.53        ; Prob 100%                     ;1762.7
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.75::                        ; Preds .B7.71
                                ; Execution count [2.11e-004]: Infreq
        mov       rbp, 0fffffff00fffffffH                       ;1758.19
        mov       ecx, 4                                        ;1758.19
        and       rbp, QWORD PTR [1608+rsp]                     ;1758.19
        lea       rdx, QWORD PTR [1584+rsp]                     ;1758.19
        add       rbp, 1073741824                               ;1758.19
        mov       eax, ebp                                      ;1758.19
        mov       rbx, rbp                                      ;1758.19
        and       eax, 1                                        ;1758.19
        and       rbx, -256                                     ;1758.19
        shr       rbx, 8                                        ;1758.19
        mov       QWORD PTR [24+rdx], rbp                       ;1758.19
        and       rbp, r13                                      ;1758.19
        and       ebx, 1                                        ;1758.19
        shl       ebx, 21                                       ;1758.19
        lea       r8d, DWORD PTR [1+rax+rax]                    ;1758.19
        shr       rbp, 36                                       ;1758.19
        or        r8d, ebx                                      ;1758.19
        and       r8d, -31457281                                ;1758.19
        shl       ebp, 21                                       ;1758.19
        or        r8d, ebp                                      ;1758.19
        add       r8d, 262144                                   ;1758.19
        call      for_alloc_allocatable                         ;1758.19
                                ; LOE rax r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.76::                        ; Preds .B7.75
                                ; Execution count [2.11e-004]: Infreq
        test      rax, rax                                      ;1758.19
        je        .B7.118       ; Prob 5%                       ;1758.19
                                ; LOE rax r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.77::                        ; Preds .B7.122 .B7.121 .B7.119 .B7.76
                                ; Execution count [2.11e-004]: Infreq
        test      eax, eax                                      ;1759.13
        jne       .B7.72        ; Prob 95%                      ;1759.13
                                ; LOE r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.78::                        ; Preds .B7.77
                                ; Execution count [2.11e-004]: Infreq
        movsxd    rbp, DWORD PTR [236+rsp]                      ;1766.5
        mov       esi, 1                                        ;1766.5
        mov       edi, 4                                        ;1766.5
        mov       ebx, 84                                       ;1766.5
        test      rbp, rbp                                      ;1766.5
        jle       .B7.96        ; Prob 0%                       ;1766.5
                                ; LOE rbx rbp rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.80::                        ; Preds .B7.78 .B7.94
                                ; Execution count [2.88e-004]: Infreq
        mov       rax, QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+64]   ;1768.13
        shl       rax, 2                                        ;1768.13
        mov       rcx, QWORD PTR [SURFACE_FI_mp_SRFDOSADJ]      ;1768.13
        sub       rcx, rax                                      ;1768.13
        add       rcx, rdi                                      ;1768.13
        call      SAG_NEWGRDSTR                                 ;1768.13
                                ; LOE rbx rbp rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.81::                        ; Preds .B7.80
                                ; Execution count [2.88e-004]: Infreq
        test      eax, eax                                      ;1769.15
        jne       .B7.115       ; Prob 20%                      ;1769.15
                                ; LOE rbx rbp rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.82::                        ; Preds .B7.81
                                ; Execution count [2.30e-004]: Infreq
        mov       edx, 256                                      ;1776.37
        lea       r13, QWORD PTR [608+rsp]                      ;1776.37
        mov       rcx, r13                                      ;1776.37
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_DOS]          ;1776.37
        mov       r9, rdx                                       ;1776.37
        call      for_trim                                      ;1776.37
                                ; LOE rbx rbp rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.83::                        ; Preds .B7.82
                                ; Execution count [2.30e-004]: Infreq
        mov       r11, rsp                                      ;1776.7
        lea       rcx, QWORD PTR [880+rsp]                      ;1776.7
        mov       rdx, 01208384ff00H                            ;1776.7
        lea       r8, QWORD PTR [__STRLITPACK_416.0.17]         ;1776.7
        movsxd    rax, eax                                      ;1776.37
        lea       r9, QWORD PTR [944+rsp]                       ;1776.7
        lea       r10, QWORD PTR [CREATE_SURFACE$format_pack.0.17] ;1776.7
        lea       r15, QWORD PTR [344+rsp]                      ;1776.7
        mov       QWORD PTR [rcx], 0                            ;1776.7
        mov       QWORD PTR [64+rcx], 256                       ;1776.7
        mov       QWORD PTR [72+rcx], r15                       ;1776.7
        mov       QWORD PTR [80+rcx], rax                       ;1776.7
        mov       QWORD PTR [88+rcx], r13                       ;1776.7
        mov       QWORD PTR [32+r11], r10                       ;1776.7
        call      for_write_int_fmt                             ;1776.7
                                ; LOE rbx rbp rsi rdi r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.84::                        ; Preds .B7.83
                                ; Execution count [2.30e-004]: Infreq
        lea       rdx, QWORD PTR [__STRLITPACK_417.0.17]        ;1776.7
        lea       rcx, QWORD PTR [880+rsp]                      ;1776.7
        mov       r14d, esi                                     ;1776.7
        lea       r8, QWORD PTR [992+rsp]                       ;1776.7
        mov       DWORD PTR [112+rcx], r14d                     ;1776.7
        call      for_write_int_fmt_xmit                        ;1776.7
                                ; LOE rbx rbp rsi rdi r12 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.85::                        ; Preds .B7.84
                                ; Execution count [2.30e-004]: Infreq
        mov       r11, rsp                                      ;1778.13
        mov       rcx, r15                                      ;1778.13
        mov       rax, QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+64]   ;1778.13
        mov       edx, 256                                      ;1778.13
        shl       rax, 2                                        ;1778.13
        lea       r8, QWORD PTR [FILES_FI_mp_LUN_DOS]           ;1778.13
        mov       r10, QWORD PTR [SURFACE_FI_mp_SRFDOSADJ]      ;1778.13
        lea       r9, QWORD PTR [__NLITPACK_14.0.17]            ;1778.13
        sub       r10, rax                                      ;1778.13
        lea       r13, QWORD PTR [SURFACE_FI_mp_MAXSG]          ;1778.13
        mov       QWORD PTR [32+r11], r13                       ;1778.13
        lea       r13, QWORD PTR [__NLITPACK_15.0.17]           ;1778.13
        add       r10, rdi                                      ;1778.13
        mov       QWORD PTR [40+r11], r13                       ;1778.13
        mov       QWORD PTR [48+r11], r13                       ;1778.13
        mov       QWORD PTR [56+r11], r10                       ;1778.13
        call      SAG_INITGRIDID                                ;1778.13
                                ; LOE rbx rbp rsi rdi r12 r13 r15 eax r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.86::                        ; Preds .B7.85
                                ; Execution count [2.30e-004]: Infreq
        test      eax, eax                                      ;1780.15
        jne       .B7.111       ; Prob 20%                      ;1780.15
                                ; LOE rbx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.87::                        ; Preds .B7.86
                                ; Execution count [1.84e-004]: Infreq
        mov       r9, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK+64]    ;1788.7
        neg       r9                                            ;1788.7
        mov       rax, QWORD PTR [1488+rsp]                     ;1788.7
        movsxd    rdx, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]    ;1788.7
        add       r9, rdx                                       ;1788.7
        shl       rax, 6                                        ;1788.7
        mov       rcx, QWORD PTR [1424+rsp]                     ;1788.7
        sub       rcx, rax                                      ;1788.7
        imul      rax, r9, 84                                   ;1788.7
        mov       r10, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK]      ;1788.7
        lea       r11, QWORD PTR [20+rbx+r10]                   ;1788.7
        movups    xmm0, XMMWORD PTR [r11+rax]                   ;1788.7
        movups    XMMWORD PTR [64+rcx], xmm0                    ;1788.7
        movups    xmm1, XMMWORD PTR [16+r11+rax]                ;1788.7
        movups    XMMWORD PTR [80+rcx], xmm1                    ;1788.7
        movups    xmm2, XMMWORD PTR [32+r11+rax]                ;1788.7
        movups    XMMWORD PTR [96+rcx], xmm2                    ;1788.7
        movups    xmm3, XMMWORD PTR [48+r11+rax]                ;1788.7
        movups    XMMWORD PTR [112+rcx], xmm3                   ;1788.7
                                ; LOE rbx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.88::                        ; Preds .B7.87
                                ; Execution count [1.84e-004]: Infreq
        imul      r10, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK+64], -84 ;1789.7
        movsxd    rdx, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]    ;1789.7
        lea       r14d, DWORD PTR [-3+r14+r14*2]                ;1792.13
        add       rdx, rsi                                      ;1789.7
        mov       r8, r13                                       ;1792.13
        imul      rdx, rdx, 84                                  ;1789.20
        mov       r9, QWORD PTR [1648+rsp]                      ;1789.20
        shl       r9, 2                                         ;1789.7
        neg       r9                                            ;1789.7
        mov       rax, QWORD PTR [1584+rsp]                     ;1789.20
        add       r9, rax                                       ;1789.7
        add       r10, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK]      ;1789.7
        mov       rcx, QWORD PTR [SURFACE_FI_mp_SRFDOSADJ]      ;1792.13
        mov       r11d, DWORD PTR [4+r10+rdx]                   ;1789.7
        mov       DWORD PTR [4+r9], r11d                        ;1789.7
        mov       r9, QWORD PTR [1568+rsp]                      ;1790.20
        shl       r9, 2                                         ;1790.7
        neg       r9                                            ;1790.7
        mov       r11, QWORD PTR [1504+rsp]                     ;1790.20
        add       r9, r11                                       ;1790.7
        mov       r10d, DWORD PTR [16+r10+rdx]                  ;1790.7
        mov       rdx, QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+64]   ;1792.13
        shl       rdx, 2                                        ;1792.13
        mov       DWORD PTR [4+r9], r10d                        ;1790.7
        mov       r10, rsp                                      ;1792.13
        sub       rcx, rdx                                      ;1792.13
        mov       edx, DWORD PTR [TYPE_FI_mp_NTYPS]             ;1792.13
        add       rcx, rdi                                      ;1792.13
        mov       QWORD PTR [32+r10], rax                       ;1792.13
        mov       rax, QWORD PTR [1424+rsp]                     ;1792.13
        lea       r9d, DWORD PTR [1+r14+rdx]                    ;1792.13
        mov       QWORD PTR [48+r10], rax                       ;1792.13
        lea       rdx, QWORD PTR [__NLITPACK_16.0.17]           ;1792.13
        mov       rax, QWORD PTR [SURFACE_FI_mp_SRFNAM+64]      ;1792.13
        movsxd    r9, r9d                                       ;1792.13
        neg       rax                                           ;1792.13
        add       rax, r9                                       ;1792.13
        lea       r9, QWORD PTR [PROJECT_FI_mp_IVERSION]        ;1792.13
        mov       QWORD PTR [40+r10], r11                       ;1792.13
        mov       r11, QWORD PTR [SURFACE_FI_mp_SRFNAM]         ;1792.13
        mov       QWORD PTR [56+r10], 64                        ;1792.13
        mov       QWORD PTR [72+r10], 4                         ;1792.13
        lea       rax, QWORD PTR [r11+rax*4]                    ;1792.13
        mov       QWORD PTR [64+r10], rax                       ;1792.13
        call      SAG_INITGRIDFILEID                            ;1792.13
                                ; LOE rbx rbp rsi rdi r12 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.89::                        ; Preds .B7.88
                                ; Execution count [1.84e-004]: Infreq
        test      eax, eax                                      ;1794.15
        jne       .B7.107       ; Prob 20%                      ;1794.15
                                ; LOE rbx rbp rsi rdi r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.90::                        ; Preds .B7.89
                                ; Execution count [1.47e-004]: Infreq
        mov       rax, QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+64]   ;1802.12
        shl       rax, 2                                        ;1802.12
        mov       rcx, QWORD PTR [SURFACE_FI_mp_SRFDOSADJ]      ;1802.12
        sub       rcx, rax                                      ;1802.12
        add       rcx, rdi                                      ;1802.12
        call      CREATE_IT                                     ;1802.12
                                ; LOE rbx rbp rsi rdi r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.91::                        ; Preds .B7.90
                                ; Execution count [1.47e-004]: Infreq
        cmp       DWORD PTR [464+r12], 0                        ;1803.18
        jne       .B7.53        ; Prob 20%                      ;1803.18
                                ; LOE rbx rbp rsi rdi r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.92::                        ; Preds .B7.91
                                ; Execution count [1.18e-004]: Infreq
        mov       rax, QWORD PTR [SURFACE_FI_mp_SRFDOSADJ+64]   ;1805.13
        shl       rax, 2                                        ;1805.13
        mov       rcx, QWORD PTR [SURFACE_FI_mp_SRFDOSADJ]      ;1805.13
        sub       rcx, rax                                      ;1805.13
        add       rcx, rdi                                      ;1805.13
        call      SAG_CLOSEID                                   ;1805.13
                                ; LOE rbx rbp rsi rdi r12 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.93::                        ; Preds .B7.92
                                ; Execution count [1.18e-004]: Infreq
        test      eax, eax                                      ;1806.15
        jne       .B7.102       ; Prob 20%                      ;1806.15
                                ; LOE rbx rbp rsi rdi r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.94::                        ; Preds .B7.93
                                ; Execution count [9.44e-005]: Infreq
        inc       rsi                                           ;1814.5
        add       rdi, 4                                        ;1814.5
        add       rbx, 84                                       ;1814.5
        cmp       rsi, rbp                                      ;1814.5
        jle       .B7.80        ; Prob 82%                      ;1814.5
                                ; LOE rbx rbp rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.95::                        ; Preds .B7.94
                                ; Execution count [1.70e-005]: Infreq
        mov       r13, 0f000000000H                             ;
                                ; LOE r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.96::                        ; Preds .B7.95 .B7.78
                                ; Execution count [1.72e-005]: Infreq
        mov       rsi, QWORD PTR [1448+rsp]                     ;1816.5
        mov       rax, rsi                                      ;1816.5
        mov       rbp, rsi                                      ;1816.5
        and       rax, 2                                        ;1816.5
        and       rbp, -2048                                    ;1816.5
        mov       rdi, rsi                                      ;1816.5
        mov       ebx, esi                                      ;1816.5
        and       rdi, -256                                     ;1816.5
        shr       rax, 1                                        ;1816.5
        and       ebx, 1                                        ;1816.5
        shr       rbp, 11                                       ;1816.5
        lea       edx, DWORD PTR [1+rax*4]                      ;1816.5
        shr       rdi, 8                                        ;1816.5
        add       ebx, ebx                                      ;1816.5
        and       ebp, 1                                        ;1816.5
        mov       r8, r13                                       ;1816.5
        shl       ebp, 8                                        ;1816.5
        or        edx, ebx                                      ;1816.5
        and       edi, 1                                        ;1816.5
        and       r8, rsi                                       ;1816.5
        shl       edi, 21                                       ;1816.5
        or        edx, ebp                                      ;1816.5
        shr       r8, 36                                        ;1816.5
        or        edx, edi                                      ;1816.5
        and       edx, -31457281                                ;1816.5
        shl       r8d, 21                                       ;1816.5
        or        edx, r8d                                      ;1816.5
        add       edx, 262144                                   ;1816.5
        mov       rcx, QWORD PTR [1424+rsp]                     ;1816.5
        call      for_dealloc_allocatable                       ;1816.5
                                ; LOE rsi r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.97::                        ; Preds .B7.96
                                ; Execution count [1.72e-005]: Infreq
        mov       rdi, QWORD PTR [1608+rsp]                     ;1817.5
        mov       rax, rdi                                      ;1817.5
        mov       r8, rdi                                       ;1817.5
        and       rax, 2                                        ;1817.5
        and       r8, -2048                                     ;1817.5
        mov       r9, rdi                                       ;1817.5
        mov       ebx, edi                                      ;1817.5
        and       r9, -256                                      ;1817.5
        shr       rax, 1                                        ;1817.5
        and       ebx, 1                                        ;1817.5
        shr       r8, 11                                        ;1817.5
        lea       edx, DWORD PTR [1+rax*4]                      ;1817.5
        shr       r9, 8                                         ;1817.5
        add       ebx, ebx                                      ;1817.5
        and       r8d, 1                                        ;1817.5
        mov       r10, r13                                      ;1817.5
        shl       r8d, 8                                        ;1817.5
        or        edx, ebx                                      ;1817.5
        and       r9d, 1                                        ;1817.5
        and       r10, rdi                                      ;1817.5
        shl       r9d, 21                                       ;1817.5
        or        edx, r8d                                      ;1817.5
        shr       r10, 36                                       ;1817.5
        or        edx, r9d                                      ;1817.5
        and       edx, -31457281                                ;1817.5
        mov       rbp, 0ffffff0ffffff7feH                       ;1816.5
        shl       r10d, 21                                      ;1817.5
        and       rsi, rbp                                      ;1816.5
        or        edx, r10d                                     ;1817.5
        add       edx, 262144                                   ;1817.5
        mov       rcx, QWORD PTR [1584+rsp]                     ;1817.5
        mov       QWORD PTR [1424+rsp], 0                       ;1816.5
        mov       QWORD PTR [1448+rsp], rsi                     ;1816.5
        call      for_dealloc_allocatable                       ;1817.5
                                ; LOE rax rbp rsi rdi r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.98::                        ; Preds .B7.97
                                ; Execution count [1.72e-005]: Infreq
        and       rdi, rbp                                      ;1817.5
        mov       QWORD PTR [1584+rsp], 0                       ;1817.5
        mov       QWORD PTR [1608+rsp], rdi                     ;1817.5
        test      rax, rax                                      ;1817.5
        je        .B7.100       ; Prob 5%                       ;1817.5
                                ; LOE rbp rsi rdi r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.99::                        ; Preds .B7.98
                                ; Execution count [1.64e-005]: Infreq
        mov       rbp, QWORD PTR [1528+rsp]                     ;1934.5
        jmp       .B7.54        ; Prob 100%                     ;1934.5
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.100::                       ; Preds .B7.98
                                ; Execution count [8.61e-007]: Infreq
        mov       rbx, QWORD PTR [1528+rsp]                     ;1817.5
        mov       rax, rbx                                      ;1817.5
        mov       r9, rbx                                       ;1817.5
        and       rax, 2                                        ;1817.5
        and       r9, -2048                                     ;1817.5
        mov       r10, rbx                                      ;1817.5
        mov       r8d, ebx                                      ;1817.5
        and       r10, -256                                     ;1817.5
        shr       rax, 1                                        ;1817.5
        and       r8d, 1                                        ;1817.5
        shr       r9, 11                                        ;1817.5
        lea       edx, DWORD PTR [1+rax*4]                      ;1817.5
        shr       r10, 8                                        ;1817.5
        add       r8d, r8d                                      ;1817.5
        and       r9d, 1                                        ;1817.5
        or        edx, r8d                                      ;1817.5
        shl       r9d, 8                                        ;1817.5
        and       r10d, 1                                       ;1817.5
        and       r13, rbx                                      ;1817.5
        or        edx, r9d                                      ;1817.5
        shl       r10d, 21                                      ;1817.5
        shr       r13, 36                                       ;1817.5
        or        edx, r10d                                     ;1817.5
        and       edx, -31457281                                ;1817.5
        shl       r13d, 21                                      ;1817.5
        or        edx, r13d                                     ;1817.5
        add       edx, 262144                                   ;1817.5
        mov       rcx, QWORD PTR [1504+rsp]                     ;1817.5
        call      for_dealloc_allocatable                       ;1817.5
                                ; LOE rbx rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.101::                       ; Preds .B7.100
                                ; Execution count [8.61e-007]: Infreq
        and       rbp, rbx                                      ;1817.5
        mov       QWORD PTR [1504+rsp], 0                       ;1817.5
        mov       QWORD PTR [1528+rsp], rbp                     ;1817.5
        jmp       .B7.54        ; Prob 100%                     ;1817.5
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.102::                       ; Preds .B7.93
                                ; Execution count [2.36e-005]: Infreq
        mov       rax, rsp                                      ;1808.9
        mov       rcx, r12                                      ;1808.9
        mov       edx, 80                                       ;1808.9
        lea       r8, QWORD PTR [__STRLITPACK_389]              ;1808.9
        mov       r9d, 14                                       ;1808.9
        mov       DWORD PTR [464+r12], 99                       ;1807.9
        mov       QWORD PTR [32+rax], 0                         ;1808.9
        call      for_cpystr                                    ;1808.9
                                ; LOE r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.103::                       ; Preds .B7.102
                                ; Execution count [2.36e-005]: Infreq
        mov       rax, rsp                                      ;1809.9
        lea       rcx, QWORD PTR [80+r12]                       ;1809.9
        mov       edx, 128                                      ;1809.9
        lea       r8, QWORD PTR [__STRLITPACK_388]              ;1809.9
        mov       r9d, 32                                       ;1809.9
        mov       QWORD PTR [32+rax], 0                         ;1809.9
        call      for_cpystr                                    ;1809.9
                                ; LOE r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.104::                       ; Preds .B7.103
                                ; Execution count [2.36e-005]: Infreq
        mov       rax, rsp                                      ;1810.14
        add       r12, 208                                      ;1810.14
        mov       rcx, r12                                      ;1810.14
        mov       edx, 128                                      ;1810.14
        lea       r8, QWORD PTR [__STRLITPACK_387]              ;1810.14
        mov       r9d, 5                                        ;1810.14
        mov       QWORD PTR [32+rax], r15                       ;1810.14
        mov       QWORD PTR [40+rax], 256                       ;1810.14
        call      REPORTFILENAME                                ;1810.14
        jmp       .B7.53        ; Prob 100%                     ;1810.14
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.107::                       ; Preds .B7.89
                                ; Execution count [3.69e-005]: Infreq
        mov       rax, rsp                                      ;1796.9
        mov       rcx, r12                                      ;1796.9
        mov       edx, 80                                       ;1796.9
        lea       r8, QWORD PTR [__STRLITPACK_392]              ;1796.9
        mov       r9d, 14                                       ;1796.9
        mov       DWORD PTR [464+r12], 99                       ;1795.9
        mov       QWORD PTR [32+rax], 0                         ;1796.9
        call      for_cpystr                                    ;1796.9
                                ; LOE r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.108::                       ; Preds .B7.107
                                ; Execution count [3.69e-005]: Infreq
        mov       rax, rsp                                      ;1797.9
        lea       rcx, QWORD PTR [80+r12]                       ;1797.9
        mov       edx, 128                                      ;1797.9
        lea       r8, QWORD PTR [__STRLITPACK_391]              ;1797.9
        mov       r9d, 33                                       ;1797.9
        mov       QWORD PTR [32+rax], 0                         ;1797.9
        call      for_cpystr                                    ;1797.9
                                ; LOE r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.109::                       ; Preds .B7.108
                                ; Execution count [3.69e-005]: Infreq
        mov       rax, rsp                                      ;1798.14
        add       r12, 208                                      ;1798.14
        mov       rcx, r12                                      ;1798.14
        mov       edx, 128                                      ;1798.14
        lea       r8, QWORD PTR [__STRLITPACK_390]              ;1798.14
        mov       r9d, 5                                        ;1798.14
        mov       QWORD PTR [32+rax], r15                       ;1798.14
        mov       QWORD PTR [40+rax], 256                       ;1798.14
        call      REPORTFILENAME                                ;1798.14
        jmp       .B7.53        ; Prob 100%                     ;1798.14
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.111::                       ; Preds .B7.86
                                ; Execution count [4.61e-005]: Infreq
        mov       rax, rsp                                      ;1782.9
        mov       rcx, r12                                      ;1782.9
        mov       edx, 80                                       ;1782.9
        lea       r8, QWORD PTR [__STRLITPACK_395]              ;1782.9
        mov       r9d, 14                                       ;1782.9
        mov       DWORD PTR [464+r12], 99                       ;1781.9
        mov       QWORD PTR [32+rax], 0                         ;1782.9
        call      for_cpystr                                    ;1782.9
                                ; LOE r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.112::                       ; Preds .B7.111
                                ; Execution count [4.61e-005]: Infreq
        mov       rax, rsp                                      ;1783.9
        lea       rcx, QWORD PTR [80+r12]                       ;1783.9
        mov       edx, 128                                      ;1783.9
        lea       r8, QWORD PTR [__STRLITPACK_394]              ;1783.9
        mov       r9d, 32                                       ;1783.9
        mov       QWORD PTR [32+rax], 0                         ;1783.9
        call      for_cpystr                                    ;1783.9
                                ; LOE r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.113::                       ; Preds .B7.112
                                ; Execution count [4.61e-005]: Infreq
        mov       rax, rsp                                      ;1784.14
        add       r12, 208                                      ;1784.14
        mov       rcx, r12                                      ;1784.14
        mov       edx, 128                                      ;1784.14
        lea       r8, QWORD PTR [__STRLITPACK_393]              ;1784.14
        mov       r9d, 5                                        ;1784.14
        mov       QWORD PTR [32+rax], r15                       ;1784.14
        mov       QWORD PTR [40+rax], 256                       ;1784.14
        call      REPORTFILENAME                                ;1784.14
        jmp       .B7.53        ; Prob 100%                     ;1784.14
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.115::                       ; Preds .B7.81
                                ; Execution count [5.76e-005]: Infreq
        mov       rax, rsp                                      ;1771.9
        mov       rcx, r12                                      ;1771.9
        mov       edx, 80                                       ;1771.9
        lea       r8, QWORD PTR [__STRLITPACK_399]              ;1771.9
        mov       r9d, 14                                       ;1771.9
        mov       DWORD PTR [464+r12], 99                       ;1770.9
        mov       QWORD PTR [32+rax], 0                         ;1771.9
        call      for_cpystr                                    ;1771.9
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.116::                       ; Preds .B7.115
                                ; Execution count [5.76e-005]: Infreq
        mov       rax, rsp                                      ;1772.9
        add       r12, 80                                       ;1772.9
        mov       rcx, r12                                      ;1772.9
        mov       edx, 128                                      ;1772.9
        lea       r8, QWORD PTR [__STRLITPACK_398]              ;1772.9
        mov       r9d, 32                                       ;1772.9
        mov       QWORD PTR [32+rax], 0                         ;1772.9
        call      for_cpystr                                    ;1772.9
        jmp       .B7.53        ; Prob 100%                     ;1772.9
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.118::                       ; Preds .B7.76
                                ; Execution count [1.05e-005]: Infreq
        mov       r9, 0fffffff00fffffffH                        ;1758.19
        mov       rsi, 0ffffff0fffffffffH                       ;1758.19
        and       r9, QWORD PTR [1528+rsp]                      ;1758.19
        lea       rdx, QWORD PTR [1504+rsp]                     ;1758.19
        add       r9, 1073741824                                ;1758.19
        mov       eax, r9d                                      ;1758.19
        mov       rdi, r9                                       ;1758.19
        mov       rbx, QWORD PTR [104+rdx]                      ;1758.19
        mov       rbp, rbx                                      ;1758.19
        and       eax, 1                                        ;1758.19
        and       rdi, -256                                     ;1758.19
        and       rbp, -256                                     ;1758.19
        and       rbx, r13                                      ;1758.19
        shr       rdi, 8                                        ;1758.19
        shr       rbp, 8                                        ;1758.19
        shl       rbp, 63                                       ;1758.19
        and       edi, 1                                        ;1758.19
        mov       QWORD PTR [24+rdx], r9                        ;1758.19
        and       r9, r13                                       ;1758.19
        shr       rbp, 55                                       ;1758.19
        lea       r8d, DWORD PTR [1+rax+rax]                    ;1758.19
        shr       rbx, 36                                       ;1758.19
        add       rbp, 133                                      ;1758.19
        shl       edi, 21                                       ;1758.19
        and       rbp, rsi                                      ;1758.19
        shr       r9, 36                                        ;1758.19
        or        r8d, edi                                      ;1758.19
        shl       rbx, 60                                       ;1758.19
        and       r8d, -31457281                                ;1758.19
        shr       rbx, 24                                       ;1758.19
        shl       r9d, 21                                       ;1758.19
        or        rbp, rbx                                      ;1758.19
        or        r8d, r9d                                      ;1758.19
        mov       ebx, 1                                        ;1758.19
        mov       QWORD PTR [104+rdx], rbp                      ;1758.19
        mov       ebp, 4                                        ;1758.19
        add       r8d, 262144                                   ;1758.19
        mov       rcx, rbp                                      ;1758.19
        mov       QWORD PTR [88+rdx], rbp                       ;1758.19
        mov       QWORD PTR [112+rdx], rbx                      ;1758.19
        mov       QWORD PTR [96+rdx], 0                         ;1758.19
        mov       QWORD PTR [144+rdx], rbx                      ;1758.19
        mov       QWORD PTR [128+rdx], rbx                      ;1758.19
        mov       QWORD PTR [136+rdx], rbp                      ;1758.19
        call      for_alloc_allocatable                         ;1758.19
                                ; LOE rax rbx rbp rsi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.119::                       ; Preds .B7.118
                                ; Execution count [1.05e-005]: Infreq
        test      rax, rax                                      ;1758.19
        jne       .B7.77        ; Prob 95%                      ;1758.19
                                ; LOE rax rbx rbp rsi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.120::                       ; Preds .B7.119
                                ; Execution count [5.27e-007]: Infreq
        mov       r10, 0fffffff00fffffffH                       ;1758.19
        mov       ecx, 64                                       ;1758.19
        and       r10, QWORD PTR [1448+rsp]                     ;1758.19
        lea       rdx, QWORD PTR [1424+rsp]                     ;1758.19
        add       r10, 1073741824                               ;1758.19
        mov       QWORD PTR [88+rdx], rbp                       ;1758.19
        mov       r9, r10                                       ;1758.19
        mov       QWORD PTR [136+rdx], rbp                      ;1758.19
        mov       ebp, r10d                                     ;1758.19
        and       ebp, 1                                        ;1758.19
        and       r9, -256                                      ;1758.19
        mov       rax, QWORD PTR [104+rdx]                      ;1758.19
        mov       rdi, rax                                      ;1758.19
        shr       r9, 8                                         ;1758.19
        and       rdi, -256                                     ;1758.19
        mov       QWORD PTR [24+rdx], r10                       ;1758.19
        and       r10, r13                                      ;1758.19
        and       r9d, 1                                        ;1758.19
        lea       r8d, DWORD PTR [1+rbp+rbp]                    ;1758.19
        shr       rdi, 8                                        ;1758.19
        and       rax, r13                                      ;1758.19
        shl       r9d, 21                                       ;1758.19
        shr       r10, 36                                       ;1758.19
        or        r8d, r9d                                      ;1758.19
        shl       rdi, 63                                       ;1758.19
        and       r8d, -31457281                                ;1758.19
        shr       rdi, 55                                       ;1758.19
        shr       rax, 36                                       ;1758.19
        add       rdi, 133                                      ;1758.19
        shl       r10d, 21                                      ;1758.19
        and       rdi, rsi                                      ;1758.19
        shl       rax, 60                                       ;1758.19
        or        r8d, r10d                                     ;1758.19
        shr       rax, 24                                       ;1758.19
        add       r8d, 262144                                   ;1758.19
        or        rdi, rax                                      ;1758.19
        mov       QWORD PTR [104+rdx], rdi                      ;1758.19
        mov       QWORD PTR [112+rdx], rbx                      ;1758.19
        mov       QWORD PTR [96+rdx], 0                         ;1758.19
        mov       QWORD PTR [144+rdx], rbx                      ;1758.19
        mov       QWORD PTR [128+rdx], rbx                      ;1758.19
        call      for_alloc_allocatable                         ;1758.19
                                ; LOE rax rbx rsi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.121::                       ; Preds .B7.120
                                ; Execution count [5.27e-007]: Infreq
        test      rax, rax                                      ;1758.19
        jne       .B7.77        ; Prob 50%                      ;1758.19
                                ; LOE rax rbx rsi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.122::                       ; Preds .B7.121
                                ; Execution count [2.64e-007]: Infreq
        mov       rdx, QWORD PTR [1448+rsp]                     ;1758.19
        mov       rbp, rdx                                      ;1758.19
        and       rbp, -256                                     ;1758.19
        and       rdx, r13                                      ;1758.19
        shr       rbp, 8                                        ;1758.19
        shl       rbp, 63                                       ;1758.19
        shr       rbp, 55                                       ;1758.19
        shr       rdx, 36                                       ;1758.19
        add       rbp, 133                                      ;1758.19
        shl       rdx, 60                                       ;1758.19
        and       rbp, rsi                                      ;1758.19
        shr       rdx, 24                                       ;1758.19
        mov       esi, 64                                       ;1758.19
        or        rbp, rdx                                      ;1758.19
        mov       QWORD PTR [1448+rsp], rbp                     ;1758.19
        mov       QWORD PTR [1432+rsp], rsi                     ;1758.19
        mov       QWORD PTR [1456+rsp], rbx                     ;1758.19
        mov       QWORD PTR [1440+rsp], 0                       ;1758.19
        mov       QWORD PTR [1488+rsp], rbx                     ;1758.19
        mov       QWORD PTR [1472+rsp], rbx                     ;1758.19
        mov       QWORD PTR [1480+rsp], rsi                     ;1758.19
        jmp       .B7.77        ; Prob 100%                     ;1758.19
                                ; LOE rax r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.123::                       ; Preds .B7.40
                                ; Execution count [1.78e-003]: Infreq
        mov       rax, rsp                                      ;1828.9
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_DOS]         ;1828.9
        mov       edx, 256                                      ;1828.9
        lea       r8, QWORD PTR [FILES_FI_mp_LUN_DOS]           ;1828.9
        lea       r9, QWORD PTR [__NLITPACK_14.0.17]            ;1828.9
        lea       r14, QWORD PTR [SURFACE_FI_mp_MAXSG]          ;1828.9
        mov       QWORD PTR [32+rax], r14                       ;1828.9
        lea       r14, QWORD PTR [TYPE_FI_mp_NTYPD]             ;1828.9
        mov       QWORD PTR [40+rax], r14                       ;1828.9
        mov       QWORD PTR [48+rax], r14                       ;1828.9
        mov       QWORD PTR [56+rax], rbx                       ;1828.9
        call      SAG_INITGRIDID                                ;1828.9
                                ; LOE rbx rbp rsi r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.124::                       ; Preds .B7.123
                                ; Execution count [1.78e-003]: Infreq
        test      eax, eax                                      ;1830.11
        je        .B7.128       ; Prob 5%                       ;1830.11
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.125::                       ; Preds .B7.124
                                ; Execution count [1.69e-003]: Infreq
        mov       rax, rsp                                      ;1832.5
        mov       rcx, r12                                      ;1832.5
        mov       edx, 80                                       ;1832.5
        lea       r8, QWORD PTR [__STRLITPACK_384]              ;1832.5
        mov       r9d, 14                                       ;1832.5
        mov       DWORD PTR [464+r12], 99                       ;1831.5
        mov       QWORD PTR [32+rax], 0                         ;1832.5
        call      for_cpystr                                    ;1832.5
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.126::                       ; Preds .B7.125
                                ; Execution count [1.69e-003]: Infreq
        mov       rax, rsp                                      ;1833.5
        add       r12, 80                                       ;1833.5
        mov       rcx, r12                                      ;1833.5
        mov       edx, 128                                      ;1833.5
        lea       r8, QWORD PTR [__STRLITPACK_383]              ;1833.5
        mov       r9d, 32                                       ;1833.5
        mov       QWORD PTR [32+rax], 0                         ;1833.5
        call      for_cpystr                                    ;1833.5
        jmp       .B7.53        ; Prob 100%                     ;1833.5
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.128::                       ; Preds .B7.124
                                ; Execution count [8.92e-005]: Infreq
        mov       r8d, DWORD PTR [SURFACE_FI_mp_NSRF_BLOCKS]    ;1837.3
        lea       rcx, QWORD PTR [976+rsp]                      ;1839.3
        sub       r8d, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]    ;1837.3
        mov       edx, 2                                        ;1839.3
        mov       DWORD PTR [-740+rcx], r8d                     ;1837.3
        mov       r9d, 4                                        ;1839.3
        movsxd    r8, r8d                                       ;1839.3
        test      r8, r8                                        ;1839.3
        cmovle    r8, rsi                                       ;1839.3
        call      for_check_mult_overflow64                     ;1839.3
                                ; LOE rbx rbp rsi r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.269::                       ; Preds .B7.128
                                ; Execution count [8.92e-005]: Infreq
        mov       edi, eax                                      ;1839.3
                                ; LOE rbx rbp rsi r12 r14 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.129::                       ; Preds .B7.269
                                ; Execution count [8.92e-005]: Infreq
        mov       r10, 0fffffff00fffffffH                       ;1839.3
        and       edi, 1                                        ;1839.3
        and       r10, QWORD PTR [1608+rsp]                     ;1839.3
        mov       r9, 0f000000000H                              ;1839.3
        add       r10, 1073741824                               ;1839.3
        lea       rdx, QWORD PTR [1584+rsp]                     ;1839.3
        mov       eax, r10d                                     ;1839.3
        and       eax, 1                                        ;1839.3
        shl       edi, 4                                        ;1839.3
        mov       QWORD PTR [24+rdx], r10                       ;1839.3
        mov       rcx, QWORD PTR [-608+rdx]                     ;1839.3
        lea       r8d, DWORD PTR [1+rax+rax]                    ;1839.3
        or        r8d, edi                                      ;1839.3
        mov       rdi, r10                                      ;1839.3
        and       rdi, -256                                     ;1839.3
        and       r10, r9                                       ;1839.3
        shr       rdi, 8                                        ;1839.3
        shr       r10, 36                                       ;1839.3
        and       edi, 1                                        ;1839.3
        shl       edi, 21                                       ;1839.3
        or        r8d, edi                                      ;1839.3
        shl       r10d, 21                                      ;1839.3
        and       r8d, -31457281                                ;1839.3
        or        r8d, r10d                                     ;1839.3
        add       r8d, 262144                                   ;1839.3
        call      for_alloc_allocatable                         ;1839.3
                                ; LOE rax rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.270::                       ; Preds .B7.129
                                ; Execution count [8.92e-005]: Infreq
        mov       r15, rax                                      ;1839.3
                                ; LOE rbx rbp rsi r12 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.130::                       ; Preds .B7.270
                                ; Execution count [8.92e-005]: Infreq
        test      r15, r15                                      ;1839.3
        jne       .B7.136       ; Prob 50%                      ;1839.3
                                ; LOE rbx rbp rsi r12 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.131::                       ; Preds .B7.130
                                ; Execution count [4.46e-005]: Infreq
        mov       rax, QWORD PTR [1608+rsp]                     ;1839.3
        mov       r10, rax                                      ;1839.3
        and       r10, -256                                     ;1839.3
        mov       rdi, 0f000000000H                             ;1839.3
        shr       r10, 8                                        ;1839.3
        and       rax, rdi                                      ;1839.3
        shl       r10, 63                                       ;1839.3
        mov       r13, 0ffffff0fffffffffH                       ;1839.3
        shr       r10, 55                                       ;1839.3
        lea       rcx, QWORD PTR [928+rsp]                      ;1839.3
        shr       rax, 36                                       ;1839.3
        add       r10, 133                                      ;1839.3
        movsxd    r8, DWORD PTR [-692+rcx]                      ;1839.3
        test      r8, r8                                        ;1839.3
        cmovle    r8, rsi                                       ;1839.3
        mov       edx, 2                                        ;1839.3
        mov       edi, 1                                        ;1839.3
        and       r10, r13                                      ;1839.3
        shl       rax, 60                                       ;1839.3
        mov       r13d, 4                                       ;1839.3
        shr       rax, 24                                       ;1839.3
        mov       r9, r13                                       ;1839.3
        or        r10, rax                                      ;1839.3
        mov       QWORD PTR [680+rcx], r10                      ;1839.3
        mov       QWORD PTR [664+rcx], r13                      ;1839.3
        mov       QWORD PTR [688+rcx], rdi                      ;1839.3
        mov       QWORD PTR [672+rcx], rsi                      ;1839.3
        mov       QWORD PTR [720+rcx], rdi                      ;1839.3
        mov       QWORD PTR [704+rcx], r8                       ;1839.3
        mov       QWORD PTR [712+rcx], r13                      ;1839.3
        call      for_check_mult_overflow64                     ;1839.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.132::                       ; Preds .B7.131
                                ; Execution count [4.46e-005]: Infreq
        movsxd    r8, DWORD PTR [236+rsp]                       ;1839.3
        test      r8, r8                                        ;1839.3
        lea       rcx, QWORD PTR [936+rsp]                      ;1839.3
        cmovle    r8, rsi                                       ;1839.3
        mov       edx, 2                                        ;1839.3
        mov       r9d, 4                                        ;1839.3
        call      for_check_mult_overflow64                     ;1839.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.271::                       ; Preds .B7.132
                                ; Execution count [4.46e-005]: Infreq
        mov       r9d, eax                                      ;1839.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r9d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.133::                       ; Preds .B7.271
                                ; Execution count [4.46e-005]: Infreq
        mov       r11, 0fffffff00fffffffH                       ;1839.3
        and       r9d, 1                                        ;1839.3
        and       r11, QWORD PTR [1528+rsp]                     ;1839.3
        mov       r10, 0f000000000H                             ;1839.3
        add       r11, 1073741824                               ;1839.3
        lea       rdx, QWORD PTR [1504+rsp]                     ;1839.3
        mov       eax, r11d                                     ;1839.3
        and       eax, 1                                        ;1839.3
        shl       r9d, 4                                        ;1839.3
        mov       QWORD PTR [24+rdx], r11                       ;1839.3
        mov       rcx, QWORD PTR [-568+rdx]                     ;1839.3
        lea       r8d, DWORD PTR [1+rax+rax]                    ;1839.3
        or        r8d, r9d                                      ;1839.3
        mov       r9, r11                                       ;1839.3
        and       r9, -256                                      ;1839.3
        and       r11, r10                                      ;1839.3
        shr       r9, 8                                         ;1839.3
        shr       r11, 36                                       ;1839.3
        and       r9d, 1                                        ;1839.3
        shl       r9d, 21                                       ;1839.3
        or        r8d, r9d                                      ;1839.3
        shl       r11d, 21                                      ;1839.3
        and       r8d, -31457281                                ;1839.3
        or        r8d, r11d                                     ;1839.3
        add       r8d, 262144                                   ;1839.3
        call      for_alloc_allocatable                         ;1839.3
                                ; LOE rax rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.272::                       ; Preds .B7.133
                                ; Execution count [4.46e-005]: Infreq
        mov       r15, rax                                      ;1839.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.134::                       ; Preds .B7.272
                                ; Execution count [4.46e-005]: Infreq
        test      r15, r15                                      ;1839.3
        jne       .B7.136       ; Prob 50%                      ;1839.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.135::                       ; Preds .B7.134
                                ; Execution count [2.23e-005]: Infreq
        mov       r11, QWORD PTR [1528+rsp]                     ;1839.3
        mov       r9, r11                                       ;1839.3
        and       r9, -256                                      ;1839.3
        mov       rax, 0f000000000H                             ;1839.3
        shr       r9, 8                                         ;1839.3
        and       r11, rax                                      ;1839.3
        shl       r9, 63                                        ;1839.3
        mov       r10, 0ffffff0fffffffffH                       ;1839.3
        shr       r9, 55                                        ;1839.3
        lea       rcx, QWORD PTR [864+rsp]                      ;1839.3
        shr       r11, 36                                       ;1839.3
        add       r9, 133                                       ;1839.3
        shl       r11, 60                                       ;1839.3
        and       r9, r10                                       ;1839.3
        movsxd    r8, DWORD PTR [-628+rcx]                      ;1839.3
        test      r8, r8                                        ;1839.3
        cmovle    r8, rsi                                       ;1839.3
        mov       edx, 2                                        ;1839.3
        shr       r11, 24                                       ;1839.3
        or        r9, r11                                       ;1839.3
        mov       QWORD PTR [664+rcx], r9                       ;1839.3
        mov       r9d, 4                                        ;1839.3
        mov       QWORD PTR [648+rcx], r13                      ;1839.3
        mov       QWORD PTR [672+rcx], rdi                      ;1839.3
        mov       QWORD PTR [656+rcx], rsi                      ;1839.3
        mov       QWORD PTR [704+rcx], rdi                      ;1839.3
        mov       QWORD PTR [688+rcx], r8                       ;1839.3
        mov       QWORD PTR [696+rcx], r13                      ;1839.3
        call      for_check_mult_overflow64                     ;1839.3
                                ; LOE rbx rbp rsi r12 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.136::                       ; Preds .B7.135 .B7.134 .B7.130
                                ; Execution count [8.92e-005]: Infreq
        test      r15d, r15d                                    ;1840.11
        je        .B7.140       ; Prob 5%                       ;1840.11
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.137::                       ; Preds .B7.144 .B7.136
                                ; Execution count [4.46e-005]: Infreq
        mov       rax, rsp                                      ;1843.5
        mov       rcx, r12                                      ;1843.5
        mov       edx, 80                                       ;1843.5
        lea       r8, QWORD PTR [__STRLITPACK_382]              ;1843.5
        mov       r9d, 14                                       ;1843.5
        mov       DWORD PTR [464+r12], 99                       ;1842.5
        mov       QWORD PTR [32+rax], 0                         ;1843.5
        call      for_cpystr                                    ;1843.5
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.138::                       ; Preds .B7.137
                                ; Execution count [4.46e-005]: Infreq
        mov       rax, rsp                                      ;1844.5
        add       r12, 80                                       ;1844.5
        mov       rcx, r12                                      ;1844.5
        mov       edx, 128                                      ;1844.5
        lea       r8, QWORD PTR [__STRLITPACK_381]              ;1844.5
        mov       r9d, 40                                       ;1844.5
        mov       QWORD PTR [32+rax], 0                         ;1844.5
        call      for_cpystr                                    ;1844.5
        jmp       .B7.53        ; Prob 100%                     ;1844.5
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.140::                       ; Preds .B7.136
                                ; Execution count [4.46e-006]: Infreq
        movsxd    r8, DWORD PTR [236+rsp]                       ;1840.17
        test      r8, r8                                        ;1840.17
        lea       rcx, QWORD PTR [336+rsp]                      ;1840.17
        cmovle    r8, rsi                                       ;1840.17
        mov       edx, 2                                        ;1840.17
        mov       r9d, 64                                       ;1840.17
        call      for_check_mult_overflow64                     ;1840.17
                                ; LOE rbx rbp rsi r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.273::                       ; Preds .B7.140
                                ; Execution count [4.46e-006]: Infreq
        mov       edi, eax                                      ;1840.17
                                ; LOE rbx rbp rsi r12 r14 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.141::                       ; Preds .B7.273
                                ; Execution count [4.46e-006]: Infreq
        mov       r10, 0fffffff00fffffffH                       ;1840.17
        and       edi, 1                                        ;1840.17
        and       r10, QWORD PTR [1448+rsp]                     ;1840.17
        mov       r9, 0f000000000H                              ;1840.17
        add       r10, 1073741824                               ;1840.17
        lea       rdx, QWORD PTR [1424+rsp]                     ;1840.17
        mov       eax, r10d                                     ;1840.17
        and       eax, 1                                        ;1840.17
        shl       edi, 4                                        ;1840.17
        mov       QWORD PTR [24+rdx], r10                       ;1840.17
        mov       rcx, QWORD PTR [-1088+rdx]                    ;1840.17
        lea       r8d, DWORD PTR [1+rax+rax]                    ;1840.17
        or        r8d, edi                                      ;1840.17
        mov       rdi, r10                                      ;1840.17
        and       rdi, -256                                     ;1840.17
        and       r10, r9                                       ;1840.17
        shr       rdi, 8                                        ;1840.17
        shr       r10, 36                                       ;1840.17
        and       edi, 1                                        ;1840.17
        shl       edi, 21                                       ;1840.17
        or        r8d, edi                                      ;1840.17
        shl       r10d, 21                                      ;1840.17
        and       r8d, -31457281                                ;1840.17
        or        r8d, r10d                                     ;1840.17
        add       r8d, 262144                                   ;1840.17
        call      for_alloc_allocatable                         ;1840.17
                                ; LOE rax rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.274::                       ; Preds .B7.141
                                ; Execution count [4.46e-006]: Infreq
        mov       rdi, rax                                      ;1840.17
                                ; LOE rbx rbp rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.142::                       ; Preds .B7.274
                                ; Execution count [4.46e-006]: Infreq
        test      rdi, rdi                                      ;1840.17
        jne       .B7.144       ; Prob 50%                      ;1840.17
                                ; LOE rbx rbp rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.143::                       ; Preds .B7.142
                                ; Execution count [2.23e-006]: Infreq
        mov       r11, QWORD PTR [1448+rsp]                     ;1840.17
        mov       r13, r11                                      ;1840.17
        and       r13, -256                                     ;1840.17
        mov       rax, 0f000000000H                             ;1840.17
        shr       r13, 8                                        ;1840.17
        mov       r15d, 1                                       ;1840.17
        shl       r13, 63                                       ;1840.17
        and       r11, rax                                      ;1840.17
        mov       QWORD PTR [1456+rsp], r15                     ;1840.17
        mov       r10, 0ffffff0fffffffffH                       ;1840.17
        mov       QWORD PTR [1488+rsp], r15                     ;1840.17
        mov       eax, 64                                       ;1840.17
        movsxd    r15, DWORD PTR [236+rsp]                      ;1840.17
        test      r15, r15                                      ;1840.17
        mov       QWORD PTR [1440+rsp], rsi                     ;1840.17
        lea       rcx, QWORD PTR [328+rsp]                      ;1840.17
        cmovg     rsi, r15                                      ;1840.17
        mov       edx, 2                                        ;1840.17
        shr       r13, 55                                       ;1840.17
        mov       r8, rsi                                       ;1840.17
        shr       r11, 36                                       ;1840.17
        add       r13, 133                                      ;1840.17
        shl       r11, 60                                       ;1840.17
        and       r13, r10                                      ;1840.17
        shr       r11, 24                                       ;1840.17
        mov       r9, rax                                       ;1840.17
        or        r13, r11                                      ;1840.17
        mov       QWORD PTR [1120+rcx], r13                     ;1840.17
        mov       QWORD PTR [1104+rcx], rax                     ;1840.17
        mov       QWORD PTR [1144+rcx], rsi                     ;1840.17
        mov       QWORD PTR [1152+rcx], rax                     ;1840.17
        call      for_check_mult_overflow64                     ;1840.17
                                ; LOE rbx rbp rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.144::                       ; Preds .B7.143 .B7.142
                                ; Execution count [4.46e-006]: Infreq
        test      edi, edi                                      ;1841.11
        jne       .B7.137       ; Prob 50%                      ;1841.11
                                ; LOE rbx rbp r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.145::                       ; Preds .B7.144
                                ; Execution count [4.46e-005]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_MULTICOMP], 1           ;1847.7
        je        .B7.156       ; Prob 7%                       ;1847.7
                                ; LOE rbx rbp r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.146::                       ; Preds .B7.145
                                ; Execution count [4.13e-005]: Infreq
        lea       rcx, QWORD PTR [SURFACE_FI_mp_SRFADOS]        ;1849.11
        call      SAG_NEWGRDSTR                                 ;1849.11
                                ; LOE rbx rbp r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.147::                       ; Preds .B7.146
                                ; Execution count [4.13e-005]: Infreq
        test      eax, eax                                      ;1850.13
        je        .B7.151       ; Prob 5%                       ;1850.13
                                ; LOE rbx rbp r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.148::                       ; Preds .B7.147
                                ; Execution count [3.93e-005]: Infreq
        mov       rax, rsp                                      ;1852.7
        mov       rcx, r12                                      ;1852.7
        mov       edx, 80                                       ;1852.7
        lea       r8, QWORD PTR [__STRLITPACK_380]              ;1852.7
        mov       r9d, 14                                       ;1852.7
        mov       DWORD PTR [464+r12], 99                       ;1851.7
        mov       QWORD PTR [32+rax], 0                         ;1852.7
        call      for_cpystr                                    ;1852.7
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.149::                       ; Preds .B7.148
                                ; Execution count [3.93e-005]: Infreq
        mov       rax, rsp                                      ;1853.7
        add       r12, 80                                       ;1853.7
        mov       rcx, r12                                      ;1853.7
        mov       edx, 128                                      ;1853.7
        lea       r8, QWORD PTR [__STRLITPACK_379]              ;1853.7
        mov       r9d, 40                                       ;1853.7
        mov       QWORD PTR [32+rax], 0                         ;1853.7
        call      for_cpystr                                    ;1853.7
        jmp       .B7.53        ; Prob 100%                     ;1853.7
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.151::                       ; Preds .B7.147
                                ; Execution count [2.07e-006]: Infreq
        mov       rdi, rsp                                      ;1857.11
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_ADOS]        ;1857.11
        mov       edx, 256                                      ;1857.11
        lea       r8, QWORD PTR [FILES_FI_mp_LUN_ADOS]          ;1857.11
        lea       r9, QWORD PTR [__NLITPACK_14.0.17]            ;1857.11
        lea       rax, QWORD PTR [SURFACE_FI_mp_MAXSG]          ;1857.11
        lea       rsi, QWORD PTR [SURFACE_FI_mp_SRFADOS]        ;1857.11
        mov       QWORD PTR [32+rdi], rax                       ;1857.11
        mov       QWORD PTR [40+rdi], r14                       ;1857.11
        mov       QWORD PTR [48+rdi], r14                       ;1857.11
        mov       QWORD PTR [56+rdi], rsi                       ;1857.11
        call      SAG_INITGRIDID                                ;1857.11
                                ; LOE rbx rbp r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.152::                       ; Preds .B7.151
                                ; Execution count [2.07e-006]: Infreq
        test      eax, eax                                      ;1859.13
        je        .B7.156       ; Prob 5%                       ;1859.13
                                ; LOE rbx rbp r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.153::                       ; Preds .B7.152
                                ; Execution count [1.96e-006]: Infreq
        mov       rax, rsp                                      ;1861.7
        mov       rcx, r12                                      ;1861.7
        mov       edx, 80                                       ;1861.7
        lea       r8, QWORD PTR [__STRLITPACK_378]              ;1861.7
        mov       r9d, 14                                       ;1861.7
        mov       DWORD PTR [464+r12], 99                       ;1860.7
        mov       QWORD PTR [32+rax], 0                         ;1861.7
        call      for_cpystr                                    ;1861.7
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.154::                       ; Preds .B7.153
                                ; Execution count [1.96e-006]: Infreq
        mov       rax, rsp                                      ;1862.7
        add       r12, 80                                       ;1862.7
        mov       rcx, r12                                      ;1862.7
        mov       edx, 128                                      ;1862.7
        lea       r8, QWORD PTR [__STRLITPACK_377]              ;1862.7
        mov       r9d, 40                                       ;1862.7
        mov       QWORD PTR [32+rax], 0                         ;1862.7
        call      for_cpystr                                    ;1862.7
        jmp       .B7.53        ; Prob 100%                     ;1862.7
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.156::                       ; Preds .B7.152 .B7.145
                                ; Execution count [3.37e-006]: Infreq
        movsxd    r10, DWORD PTR [236+rsp]                      ;1866.3
        mov       r15d, 1                                       ;1866.3
        mov       r11d, 64                                      ;1866.3
        test      r10, r10                                      ;1866.3
        jle       .B7.197       ; Prob 2%                       ;1866.3
                                ; LOE rbx rbp r10 r11 r12 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.157::                       ; Preds .B7.156
                                ; Execution count [3.30e-006]: Infreq
        imul      r13, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK+64], -84 ;1867.18
        add       r13, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK]      ;1867.18
        movsxd    r9, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]     ;1867.5
                                ; LOE rbx rbp r9 r10 r11 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.158::                       ; Preds .B7.159 .B7.157
                                ; Execution count [1.83e-005]: Infreq
        add       r9, r15                                       ;1867.5
        imul      r9, r9, 84                                    ;1867.5
        mov       rax, QWORD PTR [1488+rsp]                     ;1867.5
        shl       rax, 6                                        ;1867.5
        mov       rsi, QWORD PTR [1424+rsp]                     ;1867.5
        sub       rsi, rax                                      ;1867.5
        movups    xmm0, XMMWORD PTR [20+r13+r9]                 ;1867.5
        movups    XMMWORD PTR [rsi+r11], xmm0                   ;1867.5
        movups    xmm1, XMMWORD PTR [36+r13+r9]                 ;1867.5
        movups    XMMWORD PTR [16+rsi+r11], xmm1                ;1867.5
        movups    xmm2, XMMWORD PTR [52+r13+r9]                 ;1867.5
        movups    XMMWORD PTR [32+rsi+r11], xmm2                ;1867.5
        movups    xmm3, XMMWORD PTR [68+r13+r9]                 ;1867.5
        movups    XMMWORD PTR [48+rsi+r11], xmm3                ;1867.5
                                ; LOE rbx rbp r10 r11 r12 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.159::                       ; Preds .B7.158
                                ; Execution count [1.83e-005]: Infreq
        movsxd    r9, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]     ;1868.5
        add       r11, 64                                       ;1870.3
        imul      r13, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK+64], -84 ;1868.5
        mov       rdx, QWORD PTR [1648+rsp]                     ;1868.18
        lea       rax, QWORD PTR [r15+r9]                       ;1868.5
        imul      rsi, rax, 84                                  ;1868.18
        shl       rdx, 2                                        ;1868.5
        neg       rdx                                           ;1868.5
        add       r13, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK]      ;1868.5
        mov       r8, QWORD PTR [1568+rsp]                      ;1869.18
        shl       r8, 2                                         ;1869.5
        mov       rdi, QWORD PTR [1584+rsp]                     ;1868.18
        neg       r8                                            ;1869.5
        mov       eax, DWORD PTR [4+r13+rsi]                    ;1868.5
        lea       rcx, QWORD PTR [rdx+r15*4]                    ;1868.5
        mov       esi, DWORD PTR [16+r13+rsi]                   ;1869.5
        mov       DWORD PTR [rdi+rcx], eax                      ;1868.5
        mov       rax, QWORD PTR [1504+rsp]                     ;1869.18
        lea       rdx, QWORD PTR [r8+r15*4]                     ;1869.5
        inc       r15                                           ;1870.3
        mov       DWORD PTR [rax+rdx], esi                      ;1869.5
        cmp       r15, r10                                      ;1870.3
        jle       .B7.158       ; Prob 82%                      ;1870.3
                                ; LOE rax rbx rbp rdi r9 r10 r11 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.161::                       ; Preds .B7.159 .B7.197
                                ; Execution count [3.37e-006]: Infreq
        mov       r11, rsp                                      ;1872.9
        mov       rcx, rbx                                      ;1872.9
        movsxd    rsi, DWORD PTR [TYPE_FI_mp_NTYPS]             ;1872.9
        lea       rdx, QWORD PTR [236+rsp]                      ;1872.9
        sub       rsi, QWORD PTR [SURFACE_FI_mp_SRFNAM+64]      ;1872.9
        mov       r8, r14                                       ;1872.9
        lea       r9, QWORD PTR [PROJECT_FI_mp_IVERSION]        ;1872.9
        mov       QWORD PTR [32+r11], rdi                       ;1872.9
        mov       rdi, QWORD PTR [SURFACE_FI_mp_SRFNAM]         ;1872.9
        mov       QWORD PTR [40+r11], rax                       ;1872.9
        mov       rax, QWORD PTR [1188+rdx]                     ;1872.9
        mov       QWORD PTR [48+r11], rax                       ;1872.9
        lea       r10, QWORD PTR [4+rdi+rsi*4]                  ;1872.9
        mov       QWORD PTR [56+r11], 64                        ;1872.9
        mov       QWORD PTR [64+r11], r10                       ;1872.9
        mov       QWORD PTR [72+r11], 4                         ;1872.9
        call      SAG_INITGRIDFILEID                            ;1872.9
                                ; LOE rbx rbp r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.162::                       ; Preds .B7.161
                                ; Execution count [3.37e-006]: Infreq
        test      eax, eax                                      ;1874.11
        je        .B7.166       ; Prob 50%                      ;1874.11
                                ; LOE rbx rbp r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.163::                       ; Preds .B7.162
                                ; Execution count [1.68e-006]: Infreq
        mov       rax, rsp                                      ;1876.5
        mov       rcx, r12                                      ;1876.5
        mov       edx, 80                                       ;1876.5
        lea       r8, QWORD PTR [__STRLITPACK_376]              ;1876.5
        mov       r9d, 14                                       ;1876.5
        mov       DWORD PTR [464+r12], 99                       ;1875.5
        mov       QWORD PTR [32+rax], 0                         ;1876.5
        call      for_cpystr                                    ;1876.5
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.164::                       ; Preds .B7.163
                                ; Execution count [1.68e-006]: Infreq
        mov       rax, rsp                                      ;1877.5
        add       r12, 80                                       ;1877.5
        mov       rcx, r12                                      ;1877.5
        mov       edx, 128                                      ;1877.5
        lea       r8, QWORD PTR [__STRLITPACK_375]              ;1877.5
        mov       r9d, 33                                       ;1877.5
        mov       QWORD PTR [32+rax], 0                         ;1877.5
        call      for_cpystr                                    ;1877.5
        jmp       .B7.53        ; Prob 100%                     ;1877.5
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.166::                       ; Preds .B7.162
                                ; Execution count [1.68e-006]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_MULTICOMP], 1           ;1880.7
        jne       .B7.177       ; Prob 40%                      ;1880.7
                                ; LOE rbx rbp r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.167::                       ; Preds .B7.196 .B7.166
                                ; Execution count [1.03e-006]: Infreq
        mov       rbp, QWORD PTR [1448+rsp]                     ;1910.3
        mov       rax, rbp                                      ;1910.3
        mov       rdi, rbp                                      ;1910.3
        and       rax, 2                                        ;1910.3
        and       rdi, -2048                                    ;1910.3
        mov       r8, rbp                                       ;1910.3
        mov       esi, ebp                                      ;1910.3
        and       r8, -256                                      ;1910.3
        shr       rax, 1                                        ;1910.3
        and       esi, 1                                        ;1910.3
        shr       rdi, 11                                       ;1910.3
        lea       edx, DWORD PTR [1+rax*4]                      ;1910.3
        shr       r8, 8                                         ;1910.3
        add       esi, esi                                      ;1910.3
        and       edi, 1                                        ;1910.3
        mov       r9, 0f000000000H                              ;1910.3
        shl       edi, 8                                        ;1910.3
        or        edx, esi                                      ;1910.3
        and       r8d, 1                                        ;1910.3
        and       r9, rbp                                       ;1910.3
        shl       r8d, 21                                       ;1910.3
        or        edx, edi                                      ;1910.3
        shr       r9, 36                                        ;1910.3
        or        edx, r8d                                      ;1910.3
        and       edx, -31457281                                ;1910.3
        shl       r9d, 21                                       ;1910.3
        or        edx, r9d                                      ;1910.3
        add       edx, 262144                                   ;1910.3
        mov       rcx, QWORD PTR [1424+rsp]                     ;1910.3
        call      for_dealloc_allocatable                       ;1910.3
                                ; LOE rbx rbp r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.168::                       ; Preds .B7.167
                                ; Execution count [1.03e-006]: Infreq
        mov       rsi, 0ffffff0ffffff7feH                       ;1910.3
        mov       r10, 0f000000000H                             ;1911.3
        and       rbp, rsi                                      ;1910.3
        mov       QWORD PTR [1448+rsp], rbp                     ;1910.3
        mov       rbp, QWORD PTR [1608+rsp]                     ;1911.3
        mov       rax, rbp                                      ;1911.3
        mov       r8, rbp                                       ;1911.3
        and       rax, 2                                        ;1911.3
        and       r8, -2048                                     ;1911.3
        mov       r9, rbp                                       ;1911.3
        mov       edi, ebp                                      ;1911.3
        and       r9, -256                                      ;1911.3
        shr       rax, 1                                        ;1911.3
        and       edi, 1                                        ;1911.3
        shr       r8, 11                                        ;1911.3
        lea       edx, DWORD PTR [1+rax*4]                      ;1911.3
        shr       r9, 8                                         ;1911.3
        add       edi, edi                                      ;1911.3
        and       r8d, 1                                        ;1911.3
        or        edx, edi                                      ;1911.3
        shl       r8d, 8                                        ;1911.3
        and       r9d, 1                                        ;1911.3
        and       r10, rbp                                      ;1911.3
        or        edx, r8d                                      ;1911.3
        shl       r9d, 21                                       ;1911.3
        shr       r10, 36                                       ;1911.3
        or        edx, r9d                                      ;1911.3
        and       edx, -31457281                                ;1911.3
        shl       r10d, 21                                      ;1911.3
        or        edx, r10d                                     ;1911.3
        add       edx, 262144                                   ;1911.3
        mov       rcx, QWORD PTR [1584+rsp]                     ;1911.3
        mov       QWORD PTR [1424+rsp], 0                       ;1910.3
        call      for_dealloc_allocatable                       ;1911.3
                                ; LOE rax rbx rbp rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.169::                       ; Preds .B7.168
                                ; Execution count [1.03e-006]: Infreq
        and       rbp, rsi                                      ;1911.3
        mov       QWORD PTR [1584+rsp], 0                       ;1911.3
        mov       QWORD PTR [1608+rsp], rbp                     ;1911.3
        test      rax, rax                                      ;1911.3
        je        .B7.192       ; Prob 5%                       ;1911.3
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.170::                       ; Preds .B7.169 .B7.193
                                ; Execution count [1.03e-006]: Infreq
        mov       rcx, rbx                                      ;1913.8
        call      CREATE_IT                                     ;1913.8
                                ; LOE rbx r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.171::                       ; Preds .B7.170
                                ; Execution count [1.03e-006]: Infreq
        cmp       DWORD PTR [464+r12], 0                        ;1914.14
        jne       .B7.53        ; Prob 50%                      ;1914.14
                                ; LOE rbx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.173::                       ; Preds .B7.171
                                ; Execution count [5.13e-007]: Infreq
        mov       rdx, rbx                                      ;1920.14
        lea       rcx, QWORD PTR [320+rsp]                      ;1920.14
        mov       DWORD PTR [CHEM_FI_mp_LCHEMAMBDOSRES], 0      ;1916.3
        call      SAG_PTRGRDSTR                                 ;1920.14
                                ; LOE rbx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.174::                       ; Preds .B7.173
                                ; Execution count [5.13e-007]: Infreq
        mov       rax, QWORD PTR [320+rsp]                      ;1920.3
        lea       rcx, QWORD PTR [240+rsp]                      ;1924.14
        mov       rdx, rbx                                      ;1924.14
        mov       QWORD PTR [SURFACE_FI_mp_PSRFDOS], rax        ;1920.3
        mov       QWORD PTR [24+rcx], 0                         ;1924.14
        mov       QWORD PTR [8+rcx], 80                         ;1924.14
        call      SAG_PTRAUXSTR                                 ;1924.14
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.175::                       ; Preds .B7.174
                                ; Execution count [5.13e-007]: Infreq
        movups    xmm0, XMMWORD PTR [240+rsp]                   ;1924.3
        movups    xmm1, XMMWORD PTR [256+rsp]                   ;1924.3
        movups    xmm2, XMMWORD PTR [272+rsp]                   ;1924.3
        movups    xmm3, XMMWORD PTR [288+rsp]                   ;1924.3
        mov       rax, QWORD PTR [304+rsp]                      ;1924.3
        movups    XMMWORD PTR [SURFACE_FI_mp_PAUXDOS], xmm0     ;1924.3
        movups    XMMWORD PTR [SURFACE_FI_mp_PAUXDOS+16], xmm1  ;1924.3
        movups    XMMWORD PTR [SURFACE_FI_mp_PAUXDOS+32], xmm2  ;1924.3
        movups    XMMWORD PTR [SURFACE_FI_mp_PAUXDOS+48], xmm3  ;1924.3
        mov       QWORD PTR [SURFACE_FI_mp_PAUXDOS+64], rax     ;1924.3
        jmp       .B7.53        ; Prob 100%                     ;1924.3
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.177::                       ; Preds .B7.166
                                ; Execution count [6.73e-007]: Infreq
        movsxd    r11, DWORD PTR [TYPE_FI_mp_NTYPS]             ;1882.11
        mov       r15, rsp                                      ;1882.11
        sub       r11, QWORD PTR [SURFACE_FI_mp_SRFNAM+64]      ;1882.11
        lea       rcx, QWORD PTR [SURFACE_FI_mp_SRFADOS]        ;1882.11
        mov       r10, QWORD PTR [SURFACE_FI_mp_SRFNAM]         ;1882.11
        lea       rdx, QWORD PTR [236+rsp]                      ;1882.11
        mov       rax, QWORD PTR [1348+rdx]                     ;1882.11
        mov       r8, r14                                       ;1882.11
        mov       rsi, QWORD PTR [1268+rdx]                     ;1882.11
        lea       r9, QWORD PTR [PROJECT_FI_mp_IVERSION]        ;1882.11
        mov       rdi, QWORD PTR [1188+rdx]                     ;1882.11
        lea       r13, QWORD PTR [4+r10+r11*4]                  ;1882.11
        mov       QWORD PTR [32+r15], rax                       ;1882.11
        mov       QWORD PTR [40+r15], rsi                       ;1882.11
        mov       QWORD PTR [48+r15], rdi                       ;1882.11
        mov       QWORD PTR [56+r15], 64                        ;1882.11
        mov       QWORD PTR [64+r15], r13                       ;1882.11
        mov       QWORD PTR [72+r15], 4                         ;1882.11
        call      SAG_INITGRIDFILEID                            ;1882.11
                                ; LOE rbx rbp r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.178::                       ; Preds .B7.177
                                ; Execution count [6.73e-007]: Infreq
        test      eax, eax                                      ;1884.13
        je        .B7.182       ; Prob 50%                      ;1884.13
                                ; LOE rbx rbp r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.179::                       ; Preds .B7.178
                                ; Execution count [3.37e-007]: Infreq
        mov       rax, rsp                                      ;1886.7
        mov       rcx, r12                                      ;1886.7
        mov       edx, 80                                       ;1886.7
        lea       r8, QWORD PTR [__STRLITPACK_374]              ;1886.7
        mov       r9d, 14                                       ;1886.7
        mov       DWORD PTR [464+r12], 99                       ;1885.7
        mov       QWORD PTR [32+rax], 0                         ;1886.7
        call      for_cpystr                                    ;1886.7
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.180::                       ; Preds .B7.179
                                ; Execution count [3.37e-007]: Infreq
        mov       rax, rsp                                      ;1887.7
        add       r12, 80                                       ;1887.7
        mov       rcx, r12                                      ;1887.7
        mov       edx, 128                                      ;1887.7
        lea       r8, QWORD PTR [__STRLITPACK_373]              ;1887.7
        mov       r9d, 33                                       ;1887.7
        mov       QWORD PTR [32+rax], 0                         ;1887.7
        call      for_cpystr                                    ;1887.7
        jmp       .B7.53        ; Prob 100%                     ;1887.7
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.182::                       ; Preds .B7.178
                                ; Execution count [3.37e-007]: Infreq
        mov       rax, QWORD PTR [568+rbp]                      ;1891.5
        test      BYTE PTR [1540+rax], 1                        ;1891.9
        je        .B7.189       ; Prob 60%                      ;1891.9
                                ; LOE rbx r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.183::                       ; Preds .B7.182
                                ; Execution count [1.35e-007]: Infreq
        movsxd    rsi, DWORD PTR [236+rsp]                      ;1893.7
        mov       ebp, 1                                        ;1893.7
        mov       DWORD PTR [CHEM_FI_mp_XCHEMAMBDOSRES], 2139095039 ;1892.7
        test      rsi, rsi                                      ;1893.7
        jle       .B7.189       ; Prob 2%                       ;1893.7
                                ; LOE rbx rbp rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.185::                       ; Preds .B7.183 .B7.187
                                ; Execution count [7.33e-007]: Infreq
        imul      rdi, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK+64], -84 ;1894.13
        movsxd    rax, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]    ;1894.9
        add       rax, rbp                                      ;1894.9
        imul      rax, rax, 84                                  ;1894.13
        add       rdi, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK]      ;1894.13
        cmp       DWORD PTR [rdi+rax], 9                        ;1894.43
        jne       .B7.187       ; Prob 84%                      ;1894.43
                                ; LOE rax rbx rbp rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.186::                       ; Preds .B7.185
                                ; Execution count [1.17e-007]: Infreq
        mov       edi, DWORD PTR [8+rdi+rax]                    ;1895.11
        mov       eax, edi                                      ;1896.26
        sar       eax, 15                                       ;1896.26
        lea       rcx, QWORD PTR [232+rsp]                      ;1897.16
        shr       eax, 16                                       ;1896.26
        add       eax, edi                                      ;1896.26
        and       eax, -65536                                   ;1896.33
        sub       edi, eax                                      ;1896.11
        mov       DWORD PTR [rcx], edi                          ;1896.11
        call      SETCHEMAMBDOSRES                              ;1897.16
                                ; LOE rbx rbp rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.187::                       ; Preds .B7.186 .B7.185
                                ; Execution count [7.33e-007]: Infreq
        inc       rbp                                           ;1899.7
        cmp       rbp, rsi                                      ;1899.7
        jle       .B7.185       ; Prob 82%                      ;1899.7
                                ; LOE rbx rbp rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.189::                       ; Preds .B7.187 .B7.183 .B7.182
                                ; Execution count [3.37e-007]: Infreq
        lea       rcx, QWORD PTR [SURFACE_FI_mp_SRFADOS]        ;1901.10
        call      CREATE_IT                                     ;1901.10
                                ; LOE rbx r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.190::                       ; Preds .B7.189
                                ; Execution count [3.37e-007]: Infreq
        cmp       DWORD PTR [464+r12], 0                        ;1902.16
        jne       .B7.53        ; Prob 95%                      ;1902.16
        jmp       .B7.194       ; Prob 100%                     ;1902.16
                                ; LOE rbx r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.192::                       ; Preds .B7.169
                                ; Execution count [5.13e-008]: Infreq
        mov       rbp, QWORD PTR [1528+rsp]                     ;1911.3
        mov       rax, rbp                                      ;1911.3
        mov       r8, rbp                                       ;1911.3
        and       rax, 2                                        ;1911.3
        and       r8, -2048                                     ;1911.3
        mov       r9, rbp                                       ;1911.3
        mov       edi, ebp                                      ;1911.3
        and       r9, -256                                      ;1911.3
        shr       rax, 1                                        ;1911.3
        and       edi, 1                                        ;1911.3
        shr       r8, 11                                        ;1911.3
        lea       edx, DWORD PTR [1+rax*4]                      ;1911.3
        shr       r9, 8                                         ;1911.3
        add       edi, edi                                      ;1911.3
        and       r8d, 1                                        ;1911.3
        mov       r10, 0f000000000H                             ;1911.3
        shl       r8d, 8                                        ;1911.3
        or        edx, edi                                      ;1911.3
        and       r9d, 1                                        ;1911.3
        and       r10, rbp                                      ;1911.3
        shl       r9d, 21                                       ;1911.3
        or        edx, r8d                                      ;1911.3
        shr       r10, 36                                       ;1911.3
        or        edx, r9d                                      ;1911.3
        and       edx, -31457281                                ;1911.3
        shl       r10d, 21                                      ;1911.3
        or        edx, r10d                                     ;1911.3
        add       edx, 262144                                   ;1911.3
        mov       rcx, QWORD PTR [1504+rsp]                     ;1911.3
        call      for_dealloc_allocatable                       ;1911.3
                                ; LOE rbx rbp rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.193::                       ; Preds .B7.192
                                ; Execution count [5.13e-008]: Infreq
        and       rsi, rbp                                      ;1911.3
        mov       QWORD PTR [1504+rsp], 0                       ;1911.3
        mov       QWORD PTR [1528+rsp], rsi                     ;1911.3
        jmp       .B7.170       ; Prob 100%                     ;1911.3
                                ; LOE rbx r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.194::                       ; Preds .B7.190
                                ; Execution count [1.68e-008]: Infreq
        lea       rdx, QWORD PTR [SURFACE_FI_mp_SRFADOS]        ;1905.17
        lea       rcx, QWORD PTR [152+rsp]                      ;1905.17
        call      SAG_PTRGRDSTR                                 ;1905.17
                                ; LOE rbx r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.195::                       ; Preds .B7.194
                                ; Execution count [1.68e-008]: Infreq
        mov       rax, QWORD PTR [152+rsp]                      ;1905.5
        lea       rcx, QWORD PTR [80+rsp]                       ;1907.17
        lea       rdx, QWORD PTR [SURFACE_FI_mp_SRFADOS]        ;1907.17
        mov       QWORD PTR [SURFACE_FI_mp_PSRFADOS], rax       ;1905.5
        mov       QWORD PTR [24+rcx], 0                         ;1907.17
        mov       QWORD PTR [8+rcx], 80                         ;1907.17
        call      SAG_PTRAUXSTR                                 ;1907.17
                                ; LOE rbx r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.196::                       ; Preds .B7.195
                                ; Execution count [1.68e-008]: Infreq
        movups    xmm0, XMMWORD PTR [80+rsp]                    ;1907.5
        movups    xmm1, XMMWORD PTR [96+rsp]                    ;1907.5
        movups    xmm2, XMMWORD PTR [112+rsp]                   ;1907.5
        movups    xmm3, XMMWORD PTR [128+rsp]                   ;1907.5
        mov       rax, QWORD PTR [144+rsp]                      ;1907.5
        movups    XMMWORD PTR [SURFACE_FI_mp_PAUXADOS], xmm0    ;1907.5
        movups    XMMWORD PTR [SURFACE_FI_mp_PAUXADOS+16], xmm1 ;1907.5
        movups    XMMWORD PTR [SURFACE_FI_mp_PAUXADOS+32], xmm2 ;1907.5
        movups    XMMWORD PTR [SURFACE_FI_mp_PAUXADOS+48], xmm3 ;1907.5
        mov       QWORD PTR [SURFACE_FI_mp_PAUXADOS+64], rax    ;1907.5
        jmp       .B7.167       ; Prob 100%                     ;1907.5
                                ; LOE rbx r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.197::                       ; Preds .B7.156
                                ; Execution count [6.98e-008]: Infreq
        mov       rdi, QWORD PTR [1584+rsp]                     ;1872.54
        mov       rax, QWORD PTR [1504+rsp]                     ;1872.63
        jmp       .B7.161       ; Prob 100%                     ;1872.63
                                ; LOE rax rbx rbp rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.198::                       ; Preds .B7.65
                                ; Execution count [3.39e-002]: Infreq
        mov       rdx, rsi                                      ;1937.1
        mov       rbx, rsi                                      ;1937.1
        and       rdx, 2                                        ;1937.1
        and       rbx, -2048                                    ;1937.1
        mov       rbp, rsi                                      ;1937.1
        mov       eax, esi                                      ;1937.1
        shr       rdx, 1                                        ;1937.1
        and       rbp, -256                                     ;1937.1
        shr       rbx, 11                                       ;1937.1
        and       eax, 1                                        ;1937.1
        shr       rbp, 8                                        ;1937.1
        add       eax, eax                                      ;1937.1
        shl       edx, 2                                        ;1937.1
        and       ebx, 1                                        ;1937.1
        mov       rdi, 0f000000000H                             ;1937.1
        or        edx, eax                                      ;1937.1
        shl       ebx, 8                                        ;1937.1
        and       ebp, 1                                        ;1937.1
        and       rdi, rsi                                      ;1937.1
        or        edx, ebx                                      ;1937.1
        shl       ebp, 21                                       ;1937.1
        shr       rdi, 36                                       ;1937.1
        or        edx, ebp                                      ;1937.1
        and       edx, -31457281                                ;1937.1
        shl       edi, 21                                       ;1937.1
        or        edx, edi                                      ;1937.1
        add       edx, 262144                                   ;1937.1
        mov       rcx, QWORD PTR [1424+rsp]                     ;1937.1
        call      for_dealloc_allocatable                       ;1937.1
                                ; LOE rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.199::                       ; Preds .B7.198
                                ; Execution count [3.39e-002]: Infreq
        and       rsi, -2050                                    ;1937.1
        mov       QWORD PTR [1424+rsp], 0                       ;1937.1
        mov       QWORD PTR [1448+rsp], rsi                     ;1937.1
        add       rsp, 1672                                     ;1937.1
        pop       rbp                                           ;1937.1
        pop       r15                                           ;1937.1
        pop       r14                                           ;1937.1
        pop       r13                                           ;1937.1
        pop       r12                                           ;1937.1
        pop       rdi                                           ;1937.1
        pop       rsi                                           ;1937.1
        pop       rbx                                           ;1937.1
        ret                                                     ;1937.1
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.200::                       ; Preds .B7.64
                                ; Execution count [3.39e-002]: Infreq
        mov       rdx, rbp                                      ;1937.1
        mov       rbx, rbp                                      ;1937.1
        and       rdx, 2                                        ;1937.1
        and       rbx, -2048                                    ;1937.1
        mov       rdi, rbp                                      ;1937.1
        mov       eax, ebp                                      ;1937.1
        shr       rdx, 1                                        ;1937.1
        and       rdi, -256                                     ;1937.1
        shr       rbx, 11                                       ;1937.1
        and       eax, 1                                        ;1937.1
        shr       rdi, 8                                        ;1937.1
        add       eax, eax                                      ;1937.1
        shl       edx, 2                                        ;1937.1
        and       ebx, 1                                        ;1937.1
        mov       r8, 0f000000000H                              ;1937.1
        or        edx, eax                                      ;1937.1
        shl       ebx, 8                                        ;1937.1
        and       edi, 1                                        ;1937.1
        and       r8, rbp                                       ;1937.1
        or        edx, ebx                                      ;1937.1
        shl       edi, 21                                       ;1937.1
        shr       r8, 36                                        ;1937.1
        or        edx, edi                                      ;1937.1
        and       edx, -31457281                                ;1937.1
        shl       r8d, 21                                       ;1937.1
        or        edx, r8d                                      ;1937.1
        add       edx, 262144                                   ;1937.1
        mov       rcx, QWORD PTR [1504+rsp]                     ;1937.1
        call      for_dealloc_allocatable                       ;1937.1
                                ; LOE rbp rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.201::                       ; Preds .B7.200
                                ; Execution count [3.39e-002]: Infreq
        and       rbp, -2050                                    ;1937.1
        mov       QWORD PTR [1504+rsp], 0                       ;1937.1
        mov       QWORD PTR [1528+rsp], rbp                     ;1937.1
        jmp       .B7.65        ; Prob 100%                     ;1937.1
                                ; LOE rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.202::                       ; Preds .B7.63
                                ; Execution count [3.39e-002]: Infreq
        mov       rdx, rdi                                      ;1937.1
        mov       rbx, rdi                                      ;1937.1
        and       rdx, 2                                        ;1937.1
        and       rbx, -2048                                    ;1937.1
        mov       r8, rdi                                       ;1937.1
        mov       eax, edi                                      ;1937.1
        shr       rdx, 1                                        ;1937.1
        and       r8, -256                                      ;1937.1
        shr       rbx, 11                                       ;1937.1
        and       eax, 1                                        ;1937.1
        shr       r8, 8                                         ;1937.1
        add       eax, eax                                      ;1937.1
        shl       edx, 2                                        ;1937.1
        and       ebx, 1                                        ;1937.1
        mov       r9, 0f000000000H                              ;1937.1
        or        edx, eax                                      ;1937.1
        shl       ebx, 8                                        ;1937.1
        and       r8d, 1                                        ;1937.1
        and       r9, rdi                                       ;1937.1
        or        edx, ebx                                      ;1937.1
        shl       r8d, 21                                       ;1937.1
        shr       r9, 36                                        ;1937.1
        or        edx, r8d                                      ;1937.1
        and       edx, -31457281                                ;1937.1
        shl       r9d, 21                                       ;1937.1
        or        edx, r9d                                      ;1937.1
        add       edx, 262144                                   ;1937.1
        mov       rcx, QWORD PTR [1584+rsp]                     ;1937.1
        call      for_dealloc_allocatable                       ;1937.1
                                ; LOE rbp rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.203::                       ; Preds .B7.202
                                ; Execution count [3.39e-002]: Infreq
        and       rdi, -2050                                    ;1937.1
        mov       QWORD PTR [1584+rsp], 0                       ;1937.1
        mov       QWORD PTR [1608+rsp], rdi                     ;1937.1
        jmp       .B7.64        ; Prob 100%                     ;1937.1
                                ; LOE rbp rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.204::                       ; Preds .B7.50
                                ; Execution count [1.00e-002]: Infreq
        mov       r11, rsp                                      ;1687.9
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_DEP]         ;1687.9
        mov       edx, 256                                      ;1687.9
        lea       r8, QWORD PTR [FILES_FI_mp_LUN_DEP]           ;1687.9
        lea       r9, QWORD PTR [__NLITPACK_14.0.17]            ;1687.9
        lea       rax, QWORD PTR [SURFACE_FI_mp_MAXSG]          ;1687.9
        lea       rdi, QWORD PTR [TYPE_FI_mp_NTYPS]             ;1687.9
        lea       r10, QWORD PTR [SURFACE_FI_mp_SRFDEP]         ;1687.9
        mov       QWORD PTR [32+r11], rax                       ;1687.9
        mov       QWORD PTR [40+r11], rdi                       ;1687.9
        mov       QWORD PTR [48+r11], rdi                       ;1687.9
        mov       QWORD PTR [56+r11], r10                       ;1687.9
        call      SAG_INITGRIDID                                ;1687.9
                                ; LOE rbx rbp rsi r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.205::                       ; Preds .B7.204
                                ; Execution count [1.00e-002]: Infreq
        test      eax, eax                                      ;1689.11
        je        .B7.209       ; Prob 5%                       ;1689.11
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.206::                       ; Preds .B7.205
                                ; Execution count [9.50e-003]: Infreq
        mov       rax, rsp                                      ;1691.5
        mov       rcx, r12                                      ;1691.5
        mov       edx, 80                                       ;1691.5
        lea       r8, QWORD PTR [__STRLITPACK_411]              ;1691.5
        mov       r9d, 14                                       ;1691.5
        mov       DWORD PTR [464+r12], 99                       ;1690.5
        mov       QWORD PTR [32+rax], 0                         ;1691.5
        call      for_cpystr                                    ;1691.5
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.207::                       ; Preds .B7.206
                                ; Execution count [9.50e-003]: Infreq
        mov       rax, rsp                                      ;1692.5
        add       r12, 80                                       ;1692.5
        mov       rcx, r12                                      ;1692.5
        mov       edx, 128                                      ;1692.5
        lea       r8, QWORD PTR [__STRLITPACK_410]              ;1692.5
        mov       r9d, 38                                       ;1692.5
        mov       QWORD PTR [32+rax], 0                         ;1692.5
        call      for_cpystr                                    ;1692.5
        jmp       .B7.53        ; Prob 100%                     ;1692.5
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.209::                       ; Preds .B7.205
                                ; Execution count [5.00e-004]: Infreq
        movsxd    r8, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]     ;1696.3
        test      r8, r8                                        ;1696.3
        lea       rcx, QWORD PTR [1016+rsp]                     ;1696.3
        cmovle    r8, rsi                                       ;1696.3
        mov       edx, 2                                        ;1696.3
        mov       r9d, 4                                        ;1696.3
        call      for_check_mult_overflow64                     ;1696.3
                                ; LOE rbx rbp rsi r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.281::                       ; Preds .B7.209
                                ; Execution count [5.00e-004]: Infreq
        mov       edi, eax                                      ;1696.3
                                ; LOE rbx rbp rsi r12 r14 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.210::                       ; Preds .B7.281
                                ; Execution count [5.00e-004]: Infreq
        mov       r10, 0fffffff00fffffffH                       ;1696.3
        and       edi, 1                                        ;1696.3
        and       r10, QWORD PTR [1608+rsp]                     ;1696.3
        mov       r9, 0f000000000H                              ;1696.3
        add       r10, 1073741824                               ;1696.3
        lea       rdx, QWORD PTR [1584+rsp]                     ;1696.3
        mov       eax, r10d                                     ;1696.3
        and       eax, 1                                        ;1696.3
        shl       edi, 4                                        ;1696.3
        mov       QWORD PTR [24+rdx], r10                       ;1696.3
        mov       rcx, QWORD PTR [-568+rdx]                     ;1696.3
        lea       r8d, DWORD PTR [1+rax+rax]                    ;1696.3
        or        r8d, edi                                      ;1696.3
        mov       rdi, r10                                      ;1696.3
        and       rdi, -256                                     ;1696.3
        and       r10, r9                                       ;1696.3
        shr       rdi, 8                                        ;1696.3
        shr       r10, 36                                       ;1696.3
        and       edi, 1                                        ;1696.3
        shl       edi, 21                                       ;1696.3
        or        r8d, edi                                      ;1696.3
        shl       r10d, 21                                      ;1696.3
        and       r8d, -31457281                                ;1696.3
        or        r8d, r10d                                     ;1696.3
        add       r8d, 262144                                   ;1696.3
        call      for_alloc_allocatable                         ;1696.3
                                ; LOE rax rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.282::                       ; Preds .B7.210
                                ; Execution count [5.00e-004]: Infreq
        mov       r15, rax                                      ;1696.3
                                ; LOE rbx rbp rsi r12 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.211::                       ; Preds .B7.282
                                ; Execution count [5.00e-004]: Infreq
        test      r15, r15                                      ;1696.3
        jne       .B7.217       ; Prob 50%                      ;1696.3
                                ; LOE rbx rbp rsi r12 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.212::                       ; Preds .B7.211
                                ; Execution count [2.50e-004]: Infreq
        mov       rax, QWORD PTR [1608+rsp]                     ;1696.3
        mov       r10, rax                                      ;1696.3
        and       r10, -256                                     ;1696.3
        mov       rdi, 0f000000000H                             ;1696.3
        shr       r10, 8                                        ;1696.3
        and       rax, rdi                                      ;1696.3
        shl       r10, 63                                       ;1696.3
        mov       r13, 0ffffff0fffffffffH                       ;1696.3
        shr       r10, 55                                       ;1696.3
        lea       rcx, QWORD PTR [1000+rsp]                     ;1696.3
        shr       rax, 36                                       ;1696.3
        add       r10, 133                                      ;1696.3
        movsxd    r8, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]     ;1696.3
        test      r8, r8                                        ;1696.3
        cmovle    r8, rsi                                       ;1696.3
        mov       edx, 2                                        ;1696.3
        mov       edi, 1                                        ;1696.3
        and       r10, r13                                      ;1696.3
        shl       rax, 60                                       ;1696.3
        mov       r13d, 4                                       ;1696.3
        shr       rax, 24                                       ;1696.3
        mov       r9, r13                                       ;1696.3
        or        r10, rax                                      ;1696.3
        mov       QWORD PTR [608+rcx], r10                      ;1696.3
        mov       QWORD PTR [592+rcx], r13                      ;1696.3
        mov       QWORD PTR [616+rcx], rdi                      ;1696.3
        mov       QWORD PTR [600+rcx], rsi                      ;1696.3
        mov       QWORD PTR [648+rcx], rdi                      ;1696.3
        mov       QWORD PTR [632+rcx], r8                       ;1696.3
        mov       QWORD PTR [640+rcx], r13                      ;1696.3
        call      for_check_mult_overflow64                     ;1696.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.213::                       ; Preds .B7.212
                                ; Execution count [2.50e-004]: Infreq
        movsxd    r8, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]     ;1696.3
        test      r8, r8                                        ;1696.3
        lea       rcx, QWORD PTR [1008+rsp]                     ;1696.3
        cmovle    r8, rsi                                       ;1696.3
        mov       edx, 2                                        ;1696.3
        mov       r9d, 4                                        ;1696.3
        call      for_check_mult_overflow64                     ;1696.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.283::                       ; Preds .B7.213
                                ; Execution count [2.50e-004]: Infreq
        mov       r9d, eax                                      ;1696.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r9d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.214::                       ; Preds .B7.283
                                ; Execution count [2.50e-004]: Infreq
        mov       r11, 0fffffff00fffffffH                       ;1696.3
        and       r9d, 1                                        ;1696.3
        and       r11, QWORD PTR [1528+rsp]                     ;1696.3
        mov       r10, 0f000000000H                             ;1696.3
        add       r11, 1073741824                               ;1696.3
        lea       rdx, QWORD PTR [1504+rsp]                     ;1696.3
        mov       eax, r11d                                     ;1696.3
        and       eax, 1                                        ;1696.3
        shl       r9d, 4                                        ;1696.3
        mov       QWORD PTR [24+rdx], r11                       ;1696.3
        mov       rcx, QWORD PTR [-496+rdx]                     ;1696.3
        lea       r8d, DWORD PTR [1+rax+rax]                    ;1696.3
        or        r8d, r9d                                      ;1696.3
        mov       r9, r11                                       ;1696.3
        and       r9, -256                                      ;1696.3
        and       r11, r10                                      ;1696.3
        shr       r9, 8                                         ;1696.3
        shr       r11, 36                                       ;1696.3
        and       r9d, 1                                        ;1696.3
        shl       r9d, 21                                       ;1696.3
        or        r8d, r9d                                      ;1696.3
        shl       r11d, 21                                      ;1696.3
        and       r8d, -31457281                                ;1696.3
        or        r8d, r11d                                     ;1696.3
        add       r8d, 262144                                   ;1696.3
        call      for_alloc_allocatable                         ;1696.3
                                ; LOE rax rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.284::                       ; Preds .B7.214
                                ; Execution count [2.50e-004]: Infreq
        mov       r15, rax                                      ;1696.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.215::                       ; Preds .B7.284
                                ; Execution count [2.50e-004]: Infreq
        test      r15, r15                                      ;1696.3
        jne       .B7.217       ; Prob 50%                      ;1696.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.216::                       ; Preds .B7.215
                                ; Execution count [1.25e-004]: Infreq
        mov       r11, QWORD PTR [1528+rsp]                     ;1696.3
        mov       r8, r11                                       ;1696.3
        and       r8, -256                                      ;1696.3
        mov       rax, 0f000000000H                             ;1696.3
        shr       r8, 8                                         ;1696.3
        and       r11, rax                                      ;1696.3
        shl       r8, 63                                        ;1696.3
        mov       r10, 0ffffff0fffffffffH                       ;1696.3
        shr       r8, 55                                        ;1696.3
        lea       rcx, QWORD PTR [984+rsp]                      ;1696.3
        shr       r11, 36                                       ;1696.3
        add       r8, 133                                       ;1696.3
        shl       r11, 60                                       ;1696.3
        and       r8, r10                                       ;1696.3
        shr       r11, 24                                       ;1696.3
        mov       edx, 2                                        ;1696.3
        or        r8, r11                                       ;1696.3
        mov       r9d, 4                                        ;1696.3
        mov       QWORD PTR [544+rcx], r8                       ;1696.3
        movsxd    r8, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]     ;1696.3
        test      r8, r8                                        ;1696.3
        mov       QWORD PTR [528+rcx], r13                      ;1696.3
        cmovle    r8, rsi                                       ;1696.3
        mov       QWORD PTR [552+rcx], rdi                      ;1696.3
        mov       QWORD PTR [536+rcx], rsi                      ;1696.3
        mov       QWORD PTR [584+rcx], rdi                      ;1696.3
        mov       QWORD PTR [568+rcx], r8                       ;1696.3
        mov       QWORD PTR [576+rcx], r13                      ;1696.3
        call      for_check_mult_overflow64                     ;1696.3
                                ; LOE rbx rbp rsi r12 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.217::                       ; Preds .B7.216 .B7.215 .B7.211
                                ; Execution count [5.00e-004]: Infreq
        test      r15d, r15d                                    ;1697.11
        je        .B7.221       ; Prob 5%                       ;1697.11
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.218::                       ; Preds .B7.217 .B7.225
                                ; Execution count [4.75e-004]: Infreq
        mov       rax, rsp                                      ;1700.5
        mov       rcx, r12                                      ;1700.5
        mov       edx, 80                                       ;1700.5
        lea       r8, QWORD PTR [__STRLITPACK_409]              ;1700.5
        mov       r9d, 14                                       ;1700.5
        mov       DWORD PTR [464+r12], 99                       ;1699.5
        mov       QWORD PTR [32+rax], 0                         ;1700.5
        call      for_cpystr                                    ;1700.5
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.219::                       ; Preds .B7.218
                                ; Execution count [4.75e-004]: Infreq
        mov       rax, rsp                                      ;1701.5
        add       r12, 80                                       ;1701.5
        mov       rcx, r12                                      ;1701.5
        mov       edx, 128                                      ;1701.5
        lea       r8, QWORD PTR [__STRLITPACK_408]              ;1701.5
        mov       r9d, 40                                       ;1701.5
        mov       QWORD PTR [32+rax], 0                         ;1701.5
        call      for_cpystr                                    ;1701.5
        jmp       .B7.53        ; Prob 100%                     ;1701.5
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.221::                       ; Preds .B7.217
                                ; Execution count [2.50e-005]: Infreq
        movsxd    r8, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]     ;1697.17
        test      r8, r8                                        ;1697.17
        lea       rcx, QWORD PTR [872+rsp]                      ;1697.17
        cmovle    r8, rsi                                       ;1697.17
        mov       edx, 2                                        ;1697.17
        mov       r9d, 64                                       ;1697.17
        call      for_check_mult_overflow64                     ;1697.17
                                ; LOE rbx rbp rsi r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.285::                       ; Preds .B7.221
                                ; Execution count [2.50e-005]: Infreq
        mov       edi, eax                                      ;1697.17
                                ; LOE rbx rbp rsi r12 r14 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.222::                       ; Preds .B7.285
                                ; Execution count [2.50e-005]: Infreq
        mov       r10, 0fffffff00fffffffH                       ;1697.17
        and       edi, 1                                        ;1697.17
        and       r10, QWORD PTR [1448+rsp]                     ;1697.17
        mov       r9, 0f000000000H                              ;1697.17
        add       r10, 1073741824                               ;1697.17
        lea       rdx, QWORD PTR [1424+rsp]                     ;1697.17
        mov       eax, r10d                                     ;1697.17
        and       eax, 1                                        ;1697.17
        shl       edi, 4                                        ;1697.17
        mov       QWORD PTR [24+rdx], r10                       ;1697.17
        mov       rcx, QWORD PTR [-552+rdx]                     ;1697.17
        lea       r8d, DWORD PTR [1+rax+rax]                    ;1697.17
        or        r8d, edi                                      ;1697.17
        mov       rdi, r10                                      ;1697.17
        and       rdi, -256                                     ;1697.17
        and       r10, r9                                       ;1697.17
        shr       rdi, 8                                        ;1697.17
        shr       r10, 36                                       ;1697.17
        and       edi, 1                                        ;1697.17
        shl       edi, 21                                       ;1697.17
        or        r8d, edi                                      ;1697.17
        shl       r10d, 21                                      ;1697.17
        and       r8d, -31457281                                ;1697.17
        or        r8d, r10d                                     ;1697.17
        add       r8d, 262144                                   ;1697.17
        call      for_alloc_allocatable                         ;1697.17
                                ; LOE rax rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.286::                       ; Preds .B7.222
                                ; Execution count [2.50e-005]: Infreq
        mov       rdi, rax                                      ;1697.17
                                ; LOE rbx rbp rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.223::                       ; Preds .B7.286
                                ; Execution count [2.50e-005]: Infreq
        test      rdi, rdi                                      ;1697.17
        jne       .B7.225       ; Prob 50%                      ;1697.17
                                ; LOE rbx rbp rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.224::                       ; Preds .B7.223
                                ; Execution count [1.25e-005]: Infreq
        mov       r11, QWORD PTR [1448+rsp]                     ;1697.17
        mov       r13, r11                                      ;1697.17
        and       r13, -256                                     ;1697.17
        mov       rax, 0f000000000H                             ;1697.17
        shr       r13, 8                                        ;1697.17
        and       r11, rax                                      ;1697.17
        shl       r13, 63                                       ;1697.17
        mov       r10, 0ffffff0fffffffffH                       ;1697.17
        shr       r13, 55                                       ;1697.17
        mov       eax, 64                                       ;1697.17
        shr       r11, 36                                       ;1697.17
        add       r13, 133                                      ;1697.17
        movsxd    r8, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]     ;1697.17
        test      r8, r8                                        ;1697.17
        lea       rcx, QWORD PTR [600+rsp]                      ;1697.17
        cmovle    r8, rsi                                       ;1697.17
        mov       edx, 2                                        ;1697.17
        and       r13, r10                                      ;1697.17
        shl       r11, 60                                       ;1697.17
        mov       r9, rax                                       ;1697.17
        shr       r11, 24                                       ;1697.17
        mov       r15d, 1                                       ;1697.17
        or        r13, r11                                      ;1697.17
        mov       QWORD PTR [848+rcx], r13                      ;1697.17
        mov       QWORD PTR [832+rcx], rax                      ;1697.17
        mov       QWORD PTR [856+rcx], r15                      ;1697.17
        mov       QWORD PTR [840+rcx], rsi                      ;1697.17
        mov       QWORD PTR [888+rcx], r15                      ;1697.17
        mov       QWORD PTR [872+rcx], r8                       ;1697.17
        mov       QWORD PTR [880+rcx], rax                      ;1697.17
        call      for_check_mult_overflow64                     ;1697.17
                                ; LOE rbx rbp rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.225::                       ; Preds .B7.224 .B7.223
                                ; Execution count [2.50e-005]: Infreq
        test      edi, edi                                      ;1698.11
        jne       .B7.218       ; Prob 95%                      ;1698.11
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.226::                       ; Preds .B7.225
                                ; Execution count [2.50e-005]: Infreq
        movsxd    r10, DWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]    ;1705.3
        mov       r11d, 1                                       ;1705.3
        mov       r13d, 84                                      ;1705.3
        mov       r15d, 64                                      ;1705.3
        test      r10, r10                                      ;1705.3
        jle       .B7.247       ; Prob 2%                       ;1705.3
                                ; LOE rbx rbp rsi r10 r11 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.227::                       ; Preds .B7.226
                                ; Execution count [2.45e-005]: Infreq
        mov       rdx, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK]      ;1706.5
        imul      rcx, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK+64], 84 ;1706.18
                                ; LOE rdx rcx rbx rbp rsi r10 r11 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.228::                       ; Preds .B7.229 .B7.227
                                ; Execution count [1.36e-004]: Infreq
        mov       rax, QWORD PTR [1488+rsp]                     ;1706.5
        sub       rdx, rcx                                      ;1706.5
        shl       rax, 6                                        ;1706.5
        mov       rdi, QWORD PTR [1424+rsp]                     ;1706.5
        sub       rdi, rax                                      ;1706.5
        movups    xmm0, XMMWORD PTR [20+r13+rdx]                ;1706.5
        movups    XMMWORD PTR [rdi+r15], xmm0                   ;1706.5
        movups    xmm1, XMMWORD PTR [36+r13+rdx]                ;1706.5
        movups    XMMWORD PTR [16+rdi+r15], xmm1                ;1706.5
        movups    xmm2, XMMWORD PTR [52+r13+rdx]                ;1706.5
        movups    XMMWORD PTR [32+rdi+r15], xmm2                ;1706.5
        movups    xmm3, XMMWORD PTR [68+r13+rdx]                ;1706.5
        movups    XMMWORD PTR [48+rdi+r15], xmm3                ;1706.5
                                ; LOE rbx rbp rsi r10 r11 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.229::                       ; Preds .B7.228
                                ; Execution count [1.36e-004]: Infreq
        imul      rcx, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK+64], 84 ;1707.5
        mov       rdx, QWORD PTR [SURFACE_FI_mp_SRF_BLOCK]      ;1707.5
        add       r15, 64                                       ;1709.3
        mov       rdi, QWORD PTR [1648+rsp]                     ;1707.18
        neg       rdi                                           ;1707.5
        add       rdi, r11                                      ;1707.5
        lea       r9, QWORD PTR [r13+rdx]                       ;1707.5
        sub       r9, rcx                                       ;1707.5
        add       r13, 84                                       ;1709.3
        mov       r8, QWORD PTR [1584+rsp]                      ;1707.18
        mov       eax, DWORD PTR [4+r9]                         ;1707.5
        mov       DWORD PTR [r8+rdi*4], eax                     ;1707.5
        mov       rdi, QWORD PTR [1568+rsp]                     ;1708.18
        neg       rdi                                           ;1708.5
        add       rdi, r11                                      ;1708.5
        inc       r11                                           ;1709.3
        mov       rax, QWORD PTR [1504+rsp]                     ;1708.18
        mov       r9d, DWORD PTR [16+r9]                        ;1708.5
        mov       DWORD PTR [rax+rdi*4], r9d                    ;1708.5
        cmp       r11, r10                                      ;1709.3
        jle       .B7.228       ; Prob 82%                      ;1709.3
                                ; LOE rax rdx rcx rbx rbp rsi r8 r10 r11 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.231::                       ; Preds .B7.229 .B7.247
                                ; Execution count [2.50e-005]: Infreq
        mov       r10, rsp                                      ;1711.9
        lea       rcx, QWORD PTR [SURFACE_FI_mp_SRFDEP]         ;1711.9
        mov       rdi, QWORD PTR [SURFACE_FI_mp_SRFNAM]         ;1711.9
        lea       rdx, QWORD PTR [SURFACE_FI_mp_NDEP_BLOCKS]    ;1711.9
        lea       r9, QWORD PTR [PROJECT_FI_mp_IVERSION]        ;1711.9
        mov       QWORD PTR [40+r10], rax                       ;1711.9
        mov       QWORD PTR [32+r10], r8                        ;1711.9
        lea       r8, QWORD PTR [TYPE_FI_mp_NTYPS]              ;1711.9
        mov       rax, QWORD PTR [1424+rsp]                     ;1711.9
        mov       QWORD PTR [48+r10], rax                       ;1711.9
        mov       QWORD PTR [56+r10], 64                        ;1711.9
        mov       QWORD PTR [64+r10], rdi                       ;1711.9
        mov       QWORD PTR [72+r10], 4                         ;1711.9
        call      SAG_INITGRIDFILEID                            ;1711.9
                                ; LOE rbx rbp rsi r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.232::                       ; Preds .B7.231
                                ; Execution count [2.50e-005]: Infreq
        test      eax, eax                                      ;1713.11
        je        .B7.236       ; Prob 5%                       ;1713.11
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.233::                       ; Preds .B7.232
                                ; Execution count [2.37e-005]: Infreq
        mov       rax, rsp                                      ;1715.5
        mov       rcx, r12                                      ;1715.5
        mov       edx, 80                                       ;1715.5
        lea       r8, QWORD PTR [__STRLITPACK_407]              ;1715.5
        mov       r9d, 14                                       ;1715.5
        mov       DWORD PTR [464+r12], 99                       ;1714.5
        mov       QWORD PTR [32+rax], 0                         ;1715.5
        call      for_cpystr                                    ;1715.5
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.234::                       ; Preds .B7.233
                                ; Execution count [2.37e-005]: Infreq
        mov       rax, rsp                                      ;1716.5
        add       r12, 80                                       ;1716.5
        mov       rcx, r12                                      ;1716.5
        mov       edx, 128                                      ;1716.5
        lea       r8, QWORD PTR [__STRLITPACK_406]              ;1716.5
        mov       r9d, 39                                       ;1716.5
        mov       QWORD PTR [32+rax], 0                         ;1716.5
        call      for_cpystr                                    ;1716.5
        jmp       .B7.53        ; Prob 100%                     ;1716.5
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.236::                       ; Preds .B7.232
                                ; Execution count [1.25e-006]: Infreq
        mov       r13, QWORD PTR [1448+rsp]                     ;1720.3
        mov       rax, r13                                      ;1720.3
        mov       r8, r13                                       ;1720.3
        and       rax, 2                                        ;1720.3
        and       r8, -2048                                     ;1720.3
        mov       r9, r13                                       ;1720.3
        mov       edi, r13d                                     ;1720.3
        and       r9, -256                                      ;1720.3
        shr       rax, 1                                        ;1720.3
        and       edi, 1                                        ;1720.3
        shr       r8, 11                                        ;1720.3
        lea       edx, DWORD PTR [1+rax*4]                      ;1720.3
        shr       r9, 8                                         ;1720.3
        add       edi, edi                                      ;1720.3
        and       r8d, 1                                        ;1720.3
        mov       r10, 0f000000000H                             ;1720.3
        shl       r8d, 8                                        ;1720.3
        or        edx, edi                                      ;1720.3
        and       r9d, 1                                        ;1720.3
        and       r10, r13                                      ;1720.3
        shl       r9d, 21                                       ;1720.3
        or        edx, r8d                                      ;1720.3
        shr       r10, 36                                       ;1720.3
        or        edx, r9d                                      ;1720.3
        and       edx, -31457281                                ;1720.3
        shl       r10d, 21                                      ;1720.3
        or        edx, r10d                                     ;1720.3
        add       edx, 262144                                   ;1720.3
        mov       rcx, QWORD PTR [1424+rsp]                     ;1720.3
        call      for_dealloc_allocatable                       ;1720.3
                                ; LOE rbx rbp rsi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.237::                       ; Preds .B7.236
                                ; Execution count [1.25e-006]: Infreq
        mov       rdi, 0ffffff0ffffff7feH                       ;1720.3
        mov       r11, 0f000000000H                             ;1721.3
        and       r13, rdi                                      ;1720.3
        mov       QWORD PTR [1448+rsp], r13                     ;1720.3
        mov       r13, QWORD PTR [1608+rsp]                     ;1721.3
        mov       rax, r13                                      ;1721.3
        mov       r9, r13                                       ;1721.3
        and       rax, 2                                        ;1721.3
        and       r9, -2048                                     ;1721.3
        mov       r10, r13                                      ;1721.3
        mov       r8d, r13d                                     ;1721.3
        and       r10, -256                                     ;1721.3
        shr       rax, 1                                        ;1721.3
        and       r8d, 1                                        ;1721.3
        shr       r9, 11                                        ;1721.3
        lea       edx, DWORD PTR [1+rax*4]                      ;1721.3
        shr       r10, 8                                        ;1721.3
        add       r8d, r8d                                      ;1721.3
        and       r9d, 1                                        ;1721.3
        or        edx, r8d                                      ;1721.3
        shl       r9d, 8                                        ;1721.3
        and       r10d, 1                                       ;1721.3
        and       r11, r13                                      ;1721.3
        or        edx, r9d                                      ;1721.3
        shl       r10d, 21                                      ;1721.3
        shr       r11, 36                                       ;1721.3
        or        edx, r10d                                     ;1721.3
        and       edx, -31457281                                ;1721.3
        shl       r11d, 21                                      ;1721.3
        or        edx, r11d                                     ;1721.3
        add       edx, 262144                                   ;1721.3
        mov       rcx, QWORD PTR [1584+rsp]                     ;1721.3
        mov       QWORD PTR [1424+rsp], 0                       ;1720.3
        call      for_dealloc_allocatable                       ;1721.3
                                ; LOE rax rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.238::                       ; Preds .B7.237
                                ; Execution count [1.25e-006]: Infreq
        and       r13, rdi                                      ;1721.3
        mov       QWORD PTR [1584+rsp], 0                       ;1721.3
        mov       QWORD PTR [1608+rsp], r13                     ;1721.3
        test      rax, rax                                      ;1721.3
        je        .B7.245       ; Prob 5%                       ;1721.3
                                ; LOE rbx rbp rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.239::                       ; Preds .B7.238 .B7.246
                                ; Execution count [1.25e-006]: Infreq
        lea       rcx, QWORD PTR [SURFACE_FI_mp_SRFDEP]         ;1723.8
        call      CREATE_IT                                     ;1723.8
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.240::                       ; Preds .B7.239
                                ; Execution count [1.25e-006]: Infreq
        cmp       DWORD PTR [464+r12], 0                        ;1724.14
        jne       .B7.53        ; Prob 78%                      ;1724.14
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.242::                       ; Preds .B7.240
                                ; Execution count [2.75e-007]: Infreq
        lea       rdx, QWORD PTR [SURFACE_FI_mp_SRFDEP]         ;1728.14
        lea       rcx, QWORD PTR [312+rsp]                      ;1728.14
        call      SAG_PTRGRDSTR                                 ;1728.14
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.243::                       ; Preds .B7.242
                                ; Execution count [2.75e-007]: Infreq
        mov       rax, QWORD PTR [312+rsp]                      ;1728.3
        lea       rcx, QWORD PTR [160+rsp]                      ;1732.14
        lea       rdx, QWORD PTR [SURFACE_FI_mp_SRFDEP]         ;1732.14
        mov       QWORD PTR [SURFACE_FI_mp_PSRFDEP], rax        ;1728.3
        mov       QWORD PTR [24+rcx], 0                         ;1732.14
        mov       QWORD PTR [8+rcx], 80                         ;1732.14
        call      SAG_PTRAUXSTR                                 ;1732.14
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.244::                       ; Preds .B7.243
                                ; Execution count [2.75e-007]: Infreq
        movups    xmm0, XMMWORD PTR [160+rsp]                   ;1732.3
        movups    xmm1, XMMWORD PTR [176+rsp]                   ;1732.3
        movups    xmm2, XMMWORD PTR [192+rsp]                   ;1732.3
        movups    xmm3, XMMWORD PTR [208+rsp]                   ;1732.3
        mov       rax, QWORD PTR [224+rsp]                      ;1732.3
        movups    XMMWORD PTR [SURFACE_FI_mp_PAUXDEP], xmm0     ;1732.3
        movups    XMMWORD PTR [SURFACE_FI_mp_PAUXDEP+16], xmm1  ;1732.3
        movups    XMMWORD PTR [SURFACE_FI_mp_PAUXDEP+32], xmm2  ;1732.3
        movups    XMMWORD PTR [SURFACE_FI_mp_PAUXDEP+48], xmm3  ;1732.3
        mov       QWORD PTR [SURFACE_FI_mp_PAUXDEP+64], rax     ;1732.3
        jmp       .B7.28        ; Prob 100%                     ;1732.3
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.245::                       ; Preds .B7.238
                                ; Execution count [6.25e-008]: Infreq
        mov       r13, QWORD PTR [1528+rsp]                     ;1721.3
        mov       rax, r13                                      ;1721.3
        mov       r9, r13                                       ;1721.3
        and       rax, 2                                        ;1721.3
        and       r9, -2048                                     ;1721.3
        mov       r10, r13                                      ;1721.3
        mov       r8d, r13d                                     ;1721.3
        and       r10, -256                                     ;1721.3
        shr       rax, 1                                        ;1721.3
        and       r8d, 1                                        ;1721.3
        shr       r9, 11                                        ;1721.3
        lea       edx, DWORD PTR [1+rax*4]                      ;1721.3
        shr       r10, 8                                        ;1721.3
        add       r8d, r8d                                      ;1721.3
        and       r9d, 1                                        ;1721.3
        mov       r11, 0f000000000H                             ;1721.3
        shl       r9d, 8                                        ;1721.3
        or        edx, r8d                                      ;1721.3
        and       r10d, 1                                       ;1721.3
        and       r11, r13                                      ;1721.3
        shl       r10d, 21                                      ;1721.3
        or        edx, r9d                                      ;1721.3
        shr       r11, 36                                       ;1721.3
        or        edx, r10d                                     ;1721.3
        and       edx, -31457281                                ;1721.3
        shl       r11d, 21                                      ;1721.3
        or        edx, r11d                                     ;1721.3
        add       edx, 262144                                   ;1721.3
        mov       rcx, QWORD PTR [1504+rsp]                     ;1721.3
        call      for_dealloc_allocatable                       ;1721.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.246::                       ; Preds .B7.245
                                ; Execution count [6.25e-008]: Infreq
        and       rdi, r13                                      ;1721.3
        mov       QWORD PTR [1504+rsp], 0                       ;1721.3
        mov       QWORD PTR [1528+rsp], rdi                     ;1721.3
        jmp       .B7.239       ; Prob 100%                     ;1721.3
                                ; LOE rbx rbp rsi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.247::                       ; Preds .B7.226
                                ; Execution count [5.18e-007]: Infreq
        mov       r8, QWORD PTR [1584+rsp]                      ;1711.54
        mov       rax, QWORD PTR [1504+rsp]                     ;1711.63
        jmp       .B7.231       ; Prob 100%                     ;1711.63
        ALIGN     16
                                ; LOE rax rbx rbp rsi r8 r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.248::
; mark_end;
CREATE_SURFACE ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CREATE_SURFACE.B1_B247	DD	660225
	DD	13697299
	DD	4027273228
	DD	3490177033
	DD	1879293957
	DD	805396482
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CREATE_SURFACE.B1_B247	DD	imagerel .B7.1
	DD	imagerel .B7.248
	DD	imagerel .unwind.CREATE_SURFACE.B1_B247
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.58_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27	DD 2 DUP (?)	; pad
.2.58_2_kmpv_CREATE_SURFACE$BLK.SRFAUX_FI_mp_IBAUX_SRF_V$34b9_cache_1.29	DD 2 DUP (?)	; pad
.2.58_2_kmpv_SURFACE_FI_mp_SRFDOS_V$3503_cache_2.31	DD 2 DUP (?)	; pad
.2.58_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_cache_3.33	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
.2.58_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28	DD	0000001d4H,000000000H
.2.58_2_kmpv_CREATE_SURFACE$BLK.SRFAUX_FI_mp_IBAUX_SRF_V$34b9_size_1.30	DD	0000000e0H,000000000H
.2.58_2_kmpv_SURFACE_FI_mp_SRFDOS_V$3503_size_2.32	DD	000000004H,000000000H
.2.58_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_size_3.34	DD	000000510H,000000000H
.2.58_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.58_2__kmpc_loc_pack.11
.2.58_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	82
	DB	69
	DB	65
	DB	84
	DB	69
	DB	95
	DB	83
	DB	85
	DB	82
	DB	70
	DB	65
	DB	67
	DB	69
	DB	59
	DB	49
	DB	54
	DB	50
	DB	53
	DB	59
	DB	49
	DB	54
	DB	50
	DB	53
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.58_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.58_2__kmpc_loc_pack.19
.2.58_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	82
	DB	69
	DB	65
	DB	84
	DB	69
	DB	95
	DB	83
	DB	85
	DB	82
	DB	70
	DB	65
	DB	67
	DB	69
	DB	59
	DB	49
	DB	54
	DB	50
	DB	53
	DB	59
	DB	49
	DB	57
	DB	51
	DB	55
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
CREATE_SURFACE$format_pack.0.17	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	37
	DB	0
	DB	0
	DB	3
	DB	1
	DB	0
	DB	0
	DB	0
	DB	3
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
	DD 6 DUP (0H)	; pad
.T6913_.0.17	DD	000000000H,000000000H
	DD	000000040H,000000000H
	DD	000000000H,000000000H
	DD	000000080H,000000000H
	DD	000000001H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD 6 DUP (0H)	; pad
.T6923_.0.17	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000080H,000000000H
	DD	000000001H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
__STRLITPACK_416.0.17	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_417.0.17	DD	65801
	DB	2
	DB 3 DUP ( 0H)	; pad
__NLITPACK_14.0.17	DD	0
__NLITPACK_15.0.17	DD	3
__NLITPACK_16.0.17	DD	1
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  CREATE_SURFACE
_TEXT	SEGMENT      'CODE'
; -- Begin  SET_END_TIME
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC SET_END_TIME
; --- SET_END_TIME
SET_END_TIME	PROC 
.B8.1::                         ; Preds .B8.0
                                ; Execution count [0.00e+000]
L14::
                                                          ;1065.12
        push      rbp                                           ;1065.12
        sub       rsp, 208                                      ;1065.12
        lea       rcx, QWORD PTR [.2.59_2_kmpc_loc_struct_pack.12] ;1065.12
        movups    XMMWORD PTR [192+rsp], xmm10                  ;1065.12[spill]
        movups    XMMWORD PTR [176+rsp], xmm9                   ;1065.12[spill]
        call      __kmpc_global_thread_num                      ;1065.12
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.89::                        ; Preds .B8.1
                                ; Execution count [0.00e+000]
        mov       rbp, QWORD PTR [.2.59_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1065.12
        test      rbp, rbp                                      ;1065.12
        je        .B8.3         ; Prob 50%                      ;1065.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.2::                         ; Preds .B8.89
                                ; Execution count [0.00e+000]
        lea       ecx, DWORD PTR [rax*8]                        ;1065.12
        movsxd    rcx, ecx                                      ;1065.12
        mov       rbp, QWORD PTR [rbp+rcx]                      ;1065.12
        test      rbp, rbp                                      ;1065.12
        jne       .B8.5         ; Prob 50%                      ;1065.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.3::                         ; Preds .B8.89 .B8.2
                                ; Execution count [0.00e+000]
        mov       r10, rsp                                      ;1065.12
        lea       rcx, QWORD PTR [.2.59_2_kmpc_loc_struct_pack.20] ;1065.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1065.12
        mov       edx, eax                                      ;1065.12
        mov       r9, QWORD PTR [.2.59_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28] ;1065.12
        lea       rbp, QWORD PTR [.2.59_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1065.12
        mov       QWORD PTR [32+r10], rbp                       ;1065.12
        call      __kmpc_threadprivate_cached                   ;1065.12
                                ; LOE rax rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.90::                        ; Preds .B8.3
                                ; Execution count [0.00e+000]
        mov       rbp, rax                                      ;1065.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.5::                         ; Preds .B8.90 .B8.2
                                ; Execution count [1.00e+000]
        mov       ecx, DWORD PTR [TIME_FI_mp_YEAR_END]          ;1080.1
        mov       eax, DWORD PTR [TIME_FI_mp_MONTH_END]         ;1080.21
        mov       edx, DWORD PTR [TIME_FI_mp_DAY_END]           ;1080.34
        movss     xmm10, DWORD PTR [TIME_FI_mp_TEND]            ;1081.8
        movss     xmm9, DWORD PTR [_2il0floatpacket.11]         ;1081.44
        test      BYTE PTR [FLAGS_FI_mp_LYMD], 1                ;1083.5
        je        .B8.40        ; Prob 60%                      ;1083.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.6::                         ; Preds .B8.5
                                ; Execution count [4.00e-001]
        xor       r11d, r11d                                    ;1085.7
        cmp       ecx, -65535                                   ;1085.7
        movaps    xmm0, xmm9                                    ;1085.7
        sete      r11b                                          ;1085.7
        xor       r8d, r8d                                      ;1085.7
        cmp       eax, -65535                                   ;1085.7
        cmpneqss  xmm0, xmm10                                   ;1085.7
        sete      r8b                                           ;1085.7
        xor       r9d, r9d                                      ;1085.7
        cmp       edx, -65535                                   ;1085.7
        movd      r10d, xmm0                                    ;1085.7
        sete      r9b                                           ;1085.7
        dec       r11d                                          ;1085.7
        dec       r8d                                           ;1085.7
        dec       r9d                                           ;1085.7
        or        r11d, r8d                                     ;1080.34
        or        r11d, r9d                                     ;1081.8
        or        r11d, r10d                                    ;1080.1
        test      r11d, 1                                       ;1085.7
        je        .B8.28        ; Prob 60%                      ;1085.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.7::                         ; Preds .B8.6
                                ; Execution count [1.60e-001]
        cmp       ecx, -65535                                   ;1087.19
        jne       .B8.9         ; Prob 76%                      ;1087.19
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.8::                         ; Preds .B8.7
                                ; Execution count [3.79e-002]
        mov       r8d, DWORD PTR [TIME_FI_mp_YEAR_START]        ;1087.33
        mov       DWORD PTR [TIME_FI_mp_YEAR_END], r8d          ;1087.33
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.9::                         ; Preds .B8.7 .B8.8
                                ; Execution count [1.60e-001]
        cmp       eax, -65535                                   ;1088.19
        jne       .B8.11        ; Prob 76%                      ;1088.19
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.10::                        ; Preds .B8.9
                                ; Execution count [3.79e-002]
        mov       eax, DWORD PTR [TIME_FI_mp_MONTH_START]       ;1088.33
        mov       DWORD PTR [TIME_FI_mp_MONTH_END], eax         ;1088.33
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.11::                        ; Preds .B8.9 .B8.10
                                ; Execution count [1.60e-001]
        cmp       edx, -65535                                   ;1089.19
        jne       .B8.13        ; Prob 76%                      ;1089.19
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.12::                        ; Preds .B8.11
                                ; Execution count [3.79e-002]
        mov       eax, DWORD PTR [TIME_FI_mp_DAY_START]         ;1089.33
        mov       DWORD PTR [TIME_FI_mp_DAY_END], eax           ;1089.33
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.13::                        ; Preds .B8.11 .B8.12
                                ; Execution count [1.60e-001]
        ucomiss   xmm10, xmm9                                   ;1090.19
        jne       .B8.15        ; Prob 76%                      ;1090.19
        jp        .B8.15        ; Prob 0%                       ;1090.19
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.14::                        ; Preds .B8.13
                                ; Execution count [3.79e-002]
        mov       eax, DWORD PTR [TIME_FI_mp_TSTART]            ;1090.33
        mov       DWORD PTR [TIME_FI_mp_TEND], eax              ;1090.33
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.15::                        ; Preds .B8.13 .B8.14
                                ; Execution count [1.60e-001]
        lea       rcx, QWORD PTR [TIME_FI_mp_YEAR_END]          ;1092.10
        call      SET_YEAR                                      ;1092.10
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.16::                        ; Preds .B8.15
                                ; Execution count [1.60e-001]
        mov       eax, DWORD PTR [TIME_FI_mp_YEAR_END]          ;1094.5
        cmp       eax, DWORD PTR [TIME_FI_mp_YEAR_START]        ;1094.18
        jge       .B8.20        ; Prob 22%                      ;1094.18
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.17::                        ; Preds .B8.16
                                ; Execution count [1.25e-001]
        mov       rax, rsp                                      ;1096.7
        mov       rcx, rbp                                      ;1096.7
        mov       edx, 80                                       ;1096.7
        lea       r8, QWORD PTR [__STRLITPACK_257]              ;1096.7
        mov       r9d, 12                                       ;1096.7
        mov       DWORD PTR [464+rbp], 5                        ;1095.7
        mov       QWORD PTR [32+rax], 0                         ;1096.7
        call      for_cpystr                                    ;1096.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.18::                        ; Preds .B8.17
                                ; Execution count [1.25e-001]
        mov       rax, rsp                                      ;1097.7
        lea       rcx, QWORD PTR [80+rbp]                       ;1097.7
        mov       edx, 128                                      ;1097.7
        lea       r8, QWORD PTR [__STRLITPACK_256]              ;1097.7
        mov       r9d, 37                                       ;1097.7
        mov       QWORD PTR [32+rax], 0                         ;1097.7
        call      for_cpystr                                    ;1097.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.19::                        ; Preds .B8.18
                                ; Execution count [1.25e-001]
        mov       rdx, rsp                                      ;1098.12
        add       rbp, 208                                      ;1098.12
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_INP]         ;1098.12
        mov       rcx, rbp                                      ;1098.12
        lea       r8, QWORD PTR [__STRLITPACK_255]              ;1098.12
        mov       r9d, 5                                        ;1098.12
        mov       QWORD PTR [32+rdx], rax                       ;1098.12
        mov       QWORD PTR [40+rdx], 256                       ;1098.12
        mov       edx, 128                                      ;1098.12
        call      REPORTFILENAME                                ;1098.12
        jmp       .B8.55        ; Prob 100%                     ;1098.12
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.20::                        ; Preds .B8.16
                                ; Execution count [3.52e-002]
        lea       rcx, QWORD PTR [TIME_FI_mp_MONTH_END]         ;1102.15
        lea       rdx, QWORD PTR [TIME_FI_mp_DAY_END]           ;1102.15
        lea       r8, QWORD PTR [TIME_FI_mp_YEAR_END]           ;1102.15
        call      JULIAN_DAY                                    ;1102.15
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.21::                        ; Preds .B8.20
                                ; Execution count [3.52e-002]
        cmp       eax, -999                                     ;1103.17
        je        .B8.56        ; Prob 16%                      ;1103.17
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.22::                        ; Preds .B8.21
                                ; Execution count [2.96e-002]
        mov       edx, DWORD PTR [TIME_FI_mp_YEAR_END]          ;1111.5
        mov       r8d, DWORD PTR [TIME_FI_mp_YEAR_START]        ;1111.5
        cmp       edx, r8d                                      ;1111.18
        je        .B8.27        ; Prob 50%                      ;1111.18
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx r8d xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.23::                        ; Preds .B8.22
                                ; Execution count [1.48e-002]
        dec       edx                                           ;1112.7
        cmp       edx, r8d                                      ;1112.7
        jl        .B8.27        ; Prob 10%                      ;1112.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx r8d xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.25::                        ; Preds .B8.23 .B8.87
                                ; Execution count [7.39e-002]
        mov       r9d, r8d                                      ;1113.13
        lea       r10d, DWORD PTR [366+rax]                     ;1114.11
        add       eax, 365                                      ;1116.11
        and       r9d, -2147483645                              ;1113.13
        jge       .B8.87        ; Prob 50%                      ;1113.13
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx r8d r9d r10d xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.88::                        ; Preds .B8.25
                                ; Execution count [7.39e-002]
        sub       r9d, 1                                        ;1113.13
        or        r9d, -4                                       ;1113.13
        inc       r9d                                           ;1113.13
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx r8d r9d r10d xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.87::                        ; Preds .B8.25 .B8.88
                                ; Execution count [7.39e-002]
        test      r9d, r9d                                      ;1116.11
        cmove     eax, r10d                                     ;1116.11
        inc       r8d                                           ;1118.7
        cmp       r8d, edx                                      ;1118.7
        jle       .B8.25        ; Prob 82%                      ;1118.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx r8d xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.27::                        ; Preds .B8.87 .B8.23 .B8.22
                                ; Execution count [2.96e-002]
        sub       eax, DWORD PTR [TIME_FI_mp_JUL_START]         ;1121.20
        pxor      xmm0, xmm0                                    ;1121.32
        cvtsi2ss  xmm0, eax                                     ;1121.32
        movss     xmm10, DWORD PTR [TIME_FI_mp_TEND]            ;1121.5
        mulss     xmm0, DWORD PTR [_2il0floatpacket.13]         ;1121.52
        subss     xmm10, DWORD PTR [TIME_FI_mp_TSTART]          ;1121.20
        movss     xmm1, DWORD PTR [TIME_FI_mp_TEND_HR]          ;1187.3
        addss     xmm10, xmm0                                   ;1121.5
        jmp       .B8.47        ; Prob 100%                     ;1121.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.28::                        ; Preds .B8.6
                                ; Execution count [2.40e-001]
        movss     xmm1, DWORD PTR [TIME_FI_mp_TEND_HR]          ;1125.5
        ucomiss   xmm1, xmm9                                    ;1125.17
        jp        .B8.29        ; Prob 0%                       ;1125.17
        je        .B8.59        ; Prob 16%                      ;1125.17
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.29::                        ; Preds .B8.28
                                ; Execution count [2.02e-001]
        pxor      xmm0, xmm0                                    ;1130.22
        comiss    xmm0, xmm1                                    ;1130.22
        jb        .B8.32        ; Prob 50%                      ;1130.22
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.30::                        ; Preds .B8.29
                                ; Execution count [1.01e-001]
        mov       rax, rsp                                      ;1132.7
        mov       rcx, rbp                                      ;1132.7
        mov       edx, 80                                       ;1132.7
        lea       r8, QWORD PTR [__STRLITPACK_249]              ;1132.7
        mov       r9d, 12                                       ;1132.7
        mov       DWORD PTR [464+rbp], 10                       ;1131.7
        mov       QWORD PTR [32+rax], 0                         ;1132.7
        call      for_cpystr                                    ;1132.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.31::                        ; Preds .B8.30
                                ; Execution count [1.01e-001]
        mov       rax, rsp                                      ;1133.7
        add       rbp, 80                                       ;1133.7
        mov       rcx, rbp                                      ;1133.7
        mov       edx, 128                                      ;1133.7
        lea       r8, QWORD PTR [__STRLITPACK_248]              ;1133.7
        mov       r9d, 40                                       ;1133.7
        mov       QWORD PTR [32+rax], 0                         ;1133.7
        call      for_cpystr                                    ;1133.7
        jmp       .B8.55        ; Prob 100%                     ;1133.7
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.32::                        ; Preds .B8.29
                                ; Execution count [1.01e-001]
        movss     xmm10, DWORD PTR [_2il0floatpacket.12]        ;1135.22
        comiss    xmm1, xmm10                                   ;1135.22
        jbe       .B8.38        ; Prob 50%                      ;1135.22
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.33::                        ; Preds .B8.32
                                ; Execution count [5.04e-002]
        mov       rax, rsp                                      ;1137.7
        mov       rcx, rbp                                      ;1137.7
        mov       edx, 80                                       ;1137.7
        lea       r8, QWORD PTR [__STRLITPACK_247]              ;1137.7
        mov       r9d, 12                                       ;1137.7
        mov       DWORD PTR [464+rbp], 10                       ;1136.7
        mov       QWORD PTR [32+rax], 0                         ;1137.7
        call      for_cpystr                                    ;1137.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.34::                        ; Preds .B8.33
                                ; Execution count [5.04e-002]
        mov       rax, rsp                                      ;1138.7
        lea       rcx, QWORD PTR [80+rbp]                       ;1138.7
        mov       edx, 128                                      ;1138.7
        lea       r8, QWORD PTR [__STRLITPACK_246]              ;1138.7
        mov       r9d, 36                                       ;1138.7
        mov       QWORD PTR [32+rax], 0                         ;1138.7
        call      for_cpystr                                    ;1138.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.35::                        ; Preds .B8.34
                                ; Execution count [5.04e-002]
        mov       rcx, rsp                                      ;1139.7
        lea       rdx, QWORD PTR [SET_END_TIME$format_pack.0.10] ;1139.7
        lea       r8, QWORD PTR [__STRLITPACK_258.0.10]         ;1139.7
        lea       r9, QWORD PTR [64+rsp]                        ;1139.7
        add       rbp, 208                                      ;1139.7
        lea       rax, QWORD PTR [__STRLITPACK_241]             ;1139.7
        mov       QWORD PTR [64+r9], 0                          ;1139.7
        mov       QWORD PTR [32+rcx], rdx                       ;1139.7
        lea       rcx, QWORD PTR [128+rsp]                      ;1139.7
        mov       rdx, 01208384ff00H                            ;1139.7
        mov       QWORD PTR [-64+rcx], 128                      ;1139.7
        mov       QWORD PTR [-56+rcx], rbp                      ;1139.7
        mov       QWORD PTR [-48+rcx], 11                       ;1139.7
        mov       QWORD PTR [-40+rcx], rax                      ;1139.7
        call      for_write_int_fmt                             ;1139.7
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.36::                        ; Preds .B8.35
                                ; Execution count [5.04e-002]
        lea       rdx, QWORD PTR [__STRLITPACK_259.0.10]        ;1139.7
        lea       rcx, QWORD PTR [128+rsp]                      ;1139.7
        movss     DWORD PTR [-16+rcx], xmm10                    ;1139.7
        lea       r8, QWORD PTR [112+rsp]                       ;1139.7
        call      for_write_int_fmt_xmit                        ;1139.7
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.37::                        ; Preds .B8.36
                                ; Execution count [5.04e-002]
        lea       rdx, QWORD PTR [__STRLITPACK_260.0.10]        ;1139.7
        lea       rcx, QWORD PTR [128+rsp]                      ;1139.7
        lea       rax, QWORD PTR [__STRLITPACK_240]             ;1139.7
        lea       r8, QWORD PTR [96+rsp]                        ;1139.7
        mov       QWORD PTR [-32+rcx], 26                       ;1139.7
        mov       QWORD PTR [-24+rcx], rax                      ;1139.7
        call      for_write_int_fmt_xmit                        ;1139.7
        jmp       .B8.55        ; Prob 100%                     ;1139.7
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.38::                        ; Preds .B8.32
                                ; Execution count [5.04e-002]
        mov       rdx, rsp                                      ;1145.10
        lea       rax, QWORD PTR [TIME_FI_mp_TEND]              ;1145.10
        movss     xmm0, DWORD PTR [TIME_FI_mp_TSTART]           ;1142.5
        lea       r10, QWORD PTR [TIME_FI_mp_YEAR_END]          ;1145.10
        lea       r11, QWORD PTR [TIME_FI_mp_MONTH_END]         ;1145.10
        lea       rcx, QWORD PTR [64+rsp]                       ;1145.10
        lea       r8, QWORD PTR [TIME_FI_mp_MONTH_START]        ;1145.10
        lea       r9, QWORD PTR [TIME_FI_mp_DAY_START]          ;1145.10
        mov       QWORD PTR [32+rdx], rax                       ;1145.10
        lea       rax, QWORD PTR [TIME_FI_mp_DAY_END]           ;1145.10
        mov       QWORD PTR [40+rdx], r10                       ;1145.10
        movaps    xmm10, xmm9                                   ;1143.5
        mov       QWORD PTR [48+rdx], r11                       ;1145.10
        addss     xmm0, xmm1                                    ;1142.5
        mov       QWORD PTR [56+rdx], rax                       ;1145.10
        lea       rdx, QWORD PTR [TIME_FI_mp_YEAR_START]        ;1145.10
        movss     DWORD PTR [rcx], xmm0                         ;1142.5
        call      YEAR_MONTH_DAY                                ;1145.10
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.39::                        ; Preds .B8.38
                                ; Execution count [5.04e-002]
        movss     xmm1, DWORD PTR [TIME_FI_mp_TEND_HR]          ;1187.3
        jmp       .B8.47        ; Prob 100%                     ;1187.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.40::                        ; Preds .B8.5
                                ; Execution count [6.00e-001]
        ucomiss   xmm10, xmm9                                   ;1152.12
        jp        .B8.41        ; Prob 0%                       ;1152.12
        je        .B8.68        ; Prob 16%                      ;1152.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.41::                        ; Preds .B8.40
                                ; Execution count [5.04e-001]
        movss     xmm0, DWORD PTR [TIME_FI_mp_TSTART]           ;1153.28
        jmp       .B8.43        ; Prob 100%                     ;1153.28
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 edx xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.42::                        ; Preds .B8.69
                                ; Execution count [1.39e-001]
        movss     DWORD PTR [TIME_FI_mp_TEND], xmm0             ;1153.28
        movaps    xmm10, xmm0                                   ;1153.28
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 edx xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.43::                        ; Preds .B8.42 .B8.41
                                ; Execution count [5.23e-001]
        mov       eax, DWORD PTR [TIME_FI_mp_DAY_START]         ;1155.5
        subss     xmm10, xmm0                                   ;1154.5
        cmp       eax, -65535                                   ;1155.19
        je        .B8.66        ; Prob 16%                      ;1155.19
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.44::                        ; Preds .B8.43
                                ; Execution count [4.39e-001]
        cmp       edx, -65535                                   ;1156.19
        jne       .B8.46        ; Prob 76%                      ;1156.19
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.45::                        ; Preds .B8.44
                                ; Execution count [1.16e-001]
        mov       DWORD PTR [TIME_FI_mp_DAY_END], eax           ;1156.33
        mov       edx, eax                                      ;1156.33
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.46::                        ; Preds .B8.70 .B8.45 .B8.44
                                ; Execution count [4.91e-001]
        sub       edx, eax                                      ;1157.7
        pxor      xmm0, xmm0                                    ;1157.31
        cvtsi2ss  xmm0, edx                                     ;1157.31
        mulss     xmm0, DWORD PTR [_2il0floatpacket.13]         ;1157.30
        movss     xmm1, DWORD PTR [TIME_FI_mp_TEND_HR]          ;1187.3
        addss     xmm10, xmm0                                   ;1157.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.47::                        ; Preds .B8.27 .B8.39 .B8.46 .B8.67 .B8.66
                                ;       .B8.82
                                ; Execution count [6.68e-001]
        ucomiss   xmm10, xmm9                                   ;1186.13
        jp        .B8.48        ; Prob 0%                       ;1186.13
        je        .B8.51        ; Prob 16%                      ;1186.13
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.48::                        ; Preds .B8.47
                                ; Execution count [5.61e-001]
        ucomiss   xmm1, xmm9                                    ;1187.15
        jp        .B8.49        ; Prob 0%                       ;1187.15
        je        .B8.50        ; Prob 23%                      ;1187.15
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.49::                        ; Preds .B8.48
                                ; Execution count [4.28e-001]
        subss     xmm1, xmm10                                   ;1188.20
        andps     xmm1, XMMWORD PTR [_2il0floatpacket.16]       ;1188.9
        comiss    xmm1, DWORD PTR [_2il0floatpacket.15]         ;1188.30
        ja        .B8.61        ; Prob 5%                       ;1188.30
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.50::                        ; Preds .B8.48 .B8.65 .B8.49
                                ; Execution count [5.50e-001]
        movss     DWORD PTR [TIME_FI_mp_TEND_HR], xmm10         ;1197.3
        movaps    xmm1, xmm10                                   ;1197.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.51::                        ; Preds .B8.50 .B8.47
                                ; Execution count [6.57e-001]
        mulss     xmm1, DWORD PTR [_2il0floatpacket.14]         ;1200.1
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;1202.1
        movss     DWORD PTR [TIME_FI_mp_TEND_R], xmm1           ;1200.1
        comiss    xmm0, xmm1                                    ;1202.12
        jbe       .B8.55        ; Prob 50%                      ;1202.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.52::                        ; Preds .B8.51
                                ; Execution count [3.29e-001]
        mov       rax, rsp                                      ;1204.3
        mov       rcx, rbp                                      ;1204.3
        mov       edx, 80                                       ;1204.3
        lea       r8, QWORD PTR [__STRLITPACK_223]              ;1204.3
        mov       r9d, 12                                       ;1204.3
        mov       DWORD PTR [464+rbp], 99                       ;1203.3
        mov       QWORD PTR [32+rax], 0                         ;1204.3
        call      for_cpystr                                    ;1204.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.53::                        ; Preds .B8.52
                                ; Execution count [3.29e-001]
        mov       rax, rsp                                      ;1205.3
        lea       rcx, QWORD PTR [80+rbp]                       ;1205.3
        mov       edx, 128                                      ;1205.3
        lea       r8, QWORD PTR [__STRLITPACK_222]              ;1205.3
        mov       r9d, 34                                       ;1205.3
        mov       QWORD PTR [32+rax], 0                         ;1205.3
        call      for_cpystr                                    ;1205.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.54::                        ; Preds .B8.53
                                ; Execution count [3.29e-001]
        mov       rdx, rsp                                      ;1206.8
        add       rbp, 208                                      ;1206.8
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_INP]         ;1206.8
        mov       rcx, rbp                                      ;1206.8
        lea       r8, QWORD PTR [__STRLITPACK_221]              ;1206.8
        mov       r9d, 5                                        ;1206.8
        mov       QWORD PTR [32+rdx], rax                       ;1206.8
        mov       QWORD PTR [40+rdx], 256                       ;1206.8
        mov       edx, 128                                      ;1206.8
        call      REPORTFILENAME                                ;1206.8
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.55::                        ; Preds .B8.54 .B8.19 .B8.65 .B8.51 .B8.81
                                ;       .B8.75 .B8.84 .B8.37 .B8.31 .B8.60
                                ;       .B8.58
                                ; Execution count [1.00e+000]
        movups    xmm9, XMMWORD PTR [176+rsp]                   ;1213.1[spill]
        movups    xmm10, XMMWORD PTR [192+rsp]                  ;1213.1[spill]
        add       rsp, 208                                      ;1213.1
        pop       rbp                                           ;1213.1
        ret                                                     ;1213.1
                                ; LOE
.B8.56::                        ; Preds .B8.21
                                ; Execution count [5.63e-003]: Infreq
        mov       rax, rsp                                      ;1105.7
        mov       rcx, rbp                                      ;1105.7
        mov       edx, 80                                       ;1105.7
        lea       r8, QWORD PTR [__STRLITPACK_254]              ;1105.7
        mov       r9d, 12                                       ;1105.7
        mov       DWORD PTR [464+rbp], 99                       ;1104.7
        mov       QWORD PTR [32+rax], 0                         ;1105.7
        call      for_cpystr                                    ;1105.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.57::                        ; Preds .B8.56
                                ; Execution count [5.63e-003]: Infreq
        mov       rax, rsp                                      ;1106.7
        lea       rcx, QWORD PTR [80+rbp]                       ;1106.7
        mov       edx, 128                                      ;1106.7
        lea       r8, QWORD PTR [__STRLITPACK_253]              ;1106.7
        mov       r9d, 30                                       ;1106.7
        mov       QWORD PTR [32+rax], 0                         ;1106.7
        call      for_cpystr                                    ;1106.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.58::                        ; Preds .B8.57
                                ; Execution count [5.63e-003]: Infreq
        mov       rdx, rsp                                      ;1107.12
        add       rbp, 208                                      ;1107.12
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_INP]         ;1107.12
        mov       rcx, rbp                                      ;1107.12
        lea       r8, QWORD PTR [__STRLITPACK_252]              ;1107.12
        mov       r9d, 5                                        ;1107.12
        mov       QWORD PTR [32+rdx], rax                       ;1107.12
        mov       QWORD PTR [40+rdx], 256                       ;1107.12
        mov       edx, 128                                      ;1107.12
        call      REPORTFILENAME                                ;1107.12
        jmp       .B8.55        ; Prob 100%                     ;1107.12
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.59::                        ; Preds .B8.28
                                ; Execution count [3.84e-002]: Infreq
        mov       rax, rsp                                      ;1127.7
        mov       rcx, rbp                                      ;1127.7
        mov       edx, 80                                       ;1127.7
        lea       r8, QWORD PTR [__STRLITPACK_251]              ;1127.7
        mov       r9d, 12                                       ;1127.7
        mov       DWORD PTR [464+rbp], 10                       ;1126.7
        mov       QWORD PTR [32+rax], 0                         ;1127.7
        call      for_cpystr                                    ;1127.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.60::                        ; Preds .B8.59
                                ; Execution count [3.84e-002]: Infreq
        mov       rax, rsp                                      ;1128.7
        add       rbp, 80                                       ;1128.7
        mov       rcx, rbp                                      ;1128.7
        mov       edx, 128                                      ;1128.7
        lea       r8, QWORD PTR [__STRLITPACK_250]              ;1128.7
        mov       r9d, 47                                       ;1128.7
        mov       QWORD PTR [32+rax], 0                         ;1128.7
        call      for_cpystr                                    ;1128.7
        jmp       .B8.55        ; Prob 100%                     ;1128.7
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.61::                        ; Preds .B8.49
                                ; Execution count [2.14e-002]: Infreq
        mov       rax, rsp                                      ;1190.7
        mov       rcx, rbp                                      ;1190.7
        mov       edx, 80                                       ;1190.7
        lea       r8, QWORD PTR [__STRLITPACK_226]              ;1190.7
        mov       r9d, 12                                       ;1190.7
        mov       DWORD PTR [464+rbp], 10                       ;1189.7
        mov       QWORD PTR [32+rax], 0                         ;1190.7
        call      for_cpystr                                    ;1190.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.62::                        ; Preds .B8.61
                                ; Execution count [2.14e-002]: Infreq
        mov       rax, rsp                                      ;1191.7
        lea       rcx, QWORD PTR [80+rbp]                       ;1191.7
        mov       edx, 128                                      ;1191.7
        lea       r8, QWORD PTR [__STRLITPACK_225]              ;1191.7
        mov       r9d, 53                                       ;1191.7
        mov       QWORD PTR [32+rax], 0                         ;1191.7
        call      for_cpystr                                    ;1191.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.63::                        ; Preds .B8.62
                                ; Execution count [2.14e-002]: Infreq
        mov       rax, rsp                                      ;1192.7
        lea       rcx, QWORD PTR [208+rbp]                      ;1192.7
        mov       edx, 128                                      ;1192.7
        lea       r8, QWORD PTR [__STRLITPACK_224]              ;1192.7
        mov       r9d, 24                                       ;1192.7
        mov       QWORD PTR [32+rax], 0                         ;1192.7
        call      for_cpystr                                    ;1192.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.64::                        ; Preds .B8.63
                                ; Execution count [2.14e-002]: Infreq
        lea       rcx, QWORD PTR [__NLITPACK_10.0.10]           ;1193.12
        call      WARNINGMESSAGE                                ;1193.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.65::                        ; Preds .B8.64
                                ; Execution count [2.14e-002]: Infreq
        cmp       DWORD PTR [464+rbp], 0                        ;1194.18
        jne       .B8.55        ; Prob 50%                      ;1194.18
        jmp       .B8.50        ; Prob 100%                     ;1194.18
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.66::                        ; Preds .B8.43
                                ; Execution count [8.37e-002]: Infreq
        movss     xmm1, DWORD PTR [TIME_FI_mp_TEND_HR]          ;1187.3
        cmp       edx, -65535                                   ;1159.19
        je        .B8.47        ; Prob 16%                      ;1159.19
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 edx xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.67::                        ; Preds .B8.71 .B8.66
                                ; Execution count [7.86e-002]: Infreq
        pxor      xmm0, xmm0                                    ;1159.57
        cvtsi2ss  xmm0, edx                                     ;1159.57
        mulss     xmm0, DWORD PTR [_2il0floatpacket.13]         ;1159.56
        addss     xmm10, xmm0                                   ;1159.33
        jmp       .B8.47        ; Prob 100%                     ;1159.33
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.68::                        ; Preds .B8.40
                                ; Execution count [9.60e-002]: Infreq
        cmp       edx, -65535                                   ;1152.38
        je        .B8.72        ; Prob 16%                      ;1152.38
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.69::                        ; Preds .B8.68
                                ; Execution count [8.06e-002]: Infreq
        movss     xmm0, DWORD PTR [TIME_FI_mp_TSTART]           ;1153.28
        ucomiss   xmm10, xmm9                                   ;1153.14
        jp        .B8.70        ; Prob 0%                       ;1153.14
        je        .B8.42        ; Prob 23%                      ;1153.14
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 edx xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.70::                        ; Preds .B8.69
                                ; Execution count [6.15e-002]: Infreq
        mov       eax, DWORD PTR [TIME_FI_mp_DAY_START]         ;1155.5
        subss     xmm10, xmm0                                   ;1154.5
        cmp       eax, -65535                                   ;1155.19
        jne       .B8.46        ; Prob 84%                      ;1155.19
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.71::                        ; Preds .B8.70
                                ; Execution count [9.84e-003]: Infreq
        movss     xmm1, DWORD PTR [TIME_FI_mp_TEND_HR]          ;1187.3
        jmp       .B8.67        ; Prob 100%                     ;1187.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 edx xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.72::                        ; Preds .B8.68
                                ; Execution count [1.54e-002]: Infreq
        movss     xmm1, DWORD PTR [TIME_FI_mp_TEND_HR]          ;1162.5
        ucomiss   xmm1, xmm9                                    ;1162.17
        jp        .B8.73        ; Prob 0%                       ;1162.17
        je        .B8.83        ; Prob 16%                      ;1162.17
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.73::                        ; Preds .B8.72
                                ; Execution count [1.29e-002]: Infreq
        pxor      xmm0, xmm0                                    ;1168.22
        comiss    xmm0, xmm1                                    ;1168.22
        jb        .B8.76        ; Prob 50%                      ;1168.22
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.74::                        ; Preds .B8.73
                                ; Execution count [6.45e-003]: Infreq
        mov       rax, rsp                                      ;1170.7
        mov       rcx, rbp                                      ;1170.7
        mov       edx, 80                                       ;1170.7
        lea       r8, QWORD PTR [__STRLITPACK_236]              ;1170.7
        mov       r9d, 12                                       ;1170.7
        mov       DWORD PTR [464+rbp], 10                       ;1169.7
        mov       QWORD PTR [32+rax], 0                         ;1170.7
        call      for_cpystr                                    ;1170.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.75::                        ; Preds .B8.74
                                ; Execution count [6.45e-003]: Infreq
        mov       rax, rsp                                      ;1171.7
        add       rbp, 80                                       ;1171.7
        mov       rcx, rbp                                      ;1171.7
        mov       edx, 128                                      ;1171.7
        lea       r8, QWORD PTR [__STRLITPACK_235]              ;1171.7
        mov       r9d, 40                                       ;1171.7
        mov       QWORD PTR [32+rax], 0                         ;1171.7
        call      for_cpystr                                    ;1171.7
        jmp       .B8.55        ; Prob 100%                     ;1171.7
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.76::                        ; Preds .B8.73
                                ; Execution count [6.45e-003]: Infreq
        movss     xmm10, DWORD PTR [_2il0floatpacket.12]        ;1173.22
        comiss    xmm1, xmm10                                   ;1173.22
        jbe       .B8.82        ; Prob 50%                      ;1173.22
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.77::                        ; Preds .B8.76
                                ; Execution count [3.23e-003]: Infreq
        mov       rax, rsp                                      ;1175.7
        mov       rcx, rbp                                      ;1175.7
        mov       edx, 80                                       ;1175.7
        lea       r8, QWORD PTR [__STRLITPACK_234]              ;1175.7
        mov       r9d, 12                                       ;1175.7
        mov       DWORD PTR [464+rbp], 10                       ;1174.7
        mov       QWORD PTR [32+rax], 0                         ;1175.7
        call      for_cpystr                                    ;1175.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.78::                        ; Preds .B8.77
                                ; Execution count [3.23e-003]: Infreq
        mov       rax, rsp                                      ;1176.7
        lea       rcx, QWORD PTR [80+rbp]                       ;1176.7
        mov       edx, 128                                      ;1176.7
        lea       r8, QWORD PTR [__STRLITPACK_233]              ;1176.7
        mov       r9d, 36                                       ;1176.7
        mov       QWORD PTR [32+rax], 0                         ;1176.7
        call      for_cpystr                                    ;1176.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.79::                        ; Preds .B8.78
                                ; Execution count [3.23e-003]: Infreq
        mov       rcx, rsp                                      ;1177.7
        lea       rdx, QWORD PTR [SET_END_TIME$format_pack.0.10+28] ;1177.7
        lea       r8, QWORD PTR [__STRLITPACK_262.0.10]         ;1177.7
        lea       r9, QWORD PTR [64+rsp]                        ;1177.7
        add       rbp, 208                                      ;1177.7
        lea       rax, QWORD PTR [__STRLITPACK_228]             ;1177.7
        mov       QWORD PTR [64+r9], 0                          ;1177.7
        mov       QWORD PTR [32+rcx], rdx                       ;1177.7
        lea       rcx, QWORD PTR [128+rsp]                      ;1177.7
        mov       rdx, 01208384ff00H                            ;1177.7
        mov       QWORD PTR [-64+rcx], 128                      ;1177.7
        mov       QWORD PTR [-56+rcx], rbp                      ;1177.7
        mov       QWORD PTR [-48+rcx], 11                       ;1177.7
        mov       QWORD PTR [-40+rcx], rax                      ;1177.7
        call      for_write_int_fmt                             ;1177.7
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.80::                        ; Preds .B8.79
                                ; Execution count [3.23e-003]: Infreq
        lea       rdx, QWORD PTR [__STRLITPACK_263.0.10]        ;1177.7
        lea       rcx, QWORD PTR [128+rsp]                      ;1177.7
        movss     DWORD PTR [-16+rcx], xmm10                    ;1177.7
        lea       r8, QWORD PTR [112+rsp]                       ;1177.7
        call      for_write_int_fmt_xmit                        ;1177.7
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.81::                        ; Preds .B8.80
                                ; Execution count [3.23e-003]: Infreq
        lea       rdx, QWORD PTR [__STRLITPACK_264.0.10]        ;1177.7
        lea       rcx, QWORD PTR [128+rsp]                      ;1177.7
        lea       rax, QWORD PTR [__STRLITPACK_227]             ;1177.7
        lea       r8, QWORD PTR [96+rsp]                        ;1177.7
        mov       QWORD PTR [-32+rcx], 26                       ;1177.7
        mov       QWORD PTR [-24+rcx], rax                      ;1177.7
        call      for_write_int_fmt_xmit                        ;1177.7
        jmp       .B8.55        ; Prob 100%                     ;1177.7
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.82::                        ; Preds .B8.76
                                ; Execution count [3.23e-003]: Infreq
        movss     xmm0, DWORD PTR [TIME_FI_mp_TSTART]           ;1180.5
        movaps    xmm10, xmm9                                   ;1181.5
        addss     xmm0, xmm1                                    ;1180.5
        movss     DWORD PTR [TIME_FI_mp_TEND], xmm0             ;1180.5
        jmp       .B8.47        ; Prob 100%                     ;1180.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.83::                        ; Preds .B8.72
                                ; Execution count [2.46e-003]: Infreq
        mov       rax, rsp                                      ;1164.7
        mov       rcx, rbp                                      ;1164.7
        mov       edx, 80                                       ;1164.7
        lea       r8, QWORD PTR [__STRLITPACK_239]              ;1164.7
        mov       r9d, 12                                       ;1164.7
        mov       DWORD PTR [464+rbp], 10                       ;1163.7
        mov       QWORD PTR [32+rax], 0                         ;1164.7
        call      for_cpystr                                    ;1164.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.84::                        ; Preds .B8.83
                                ; Execution count [2.46e-003]: Infreq
        mov       rax, rsp                                      ;1165.7
        add       rbp, 80                                       ;1165.7
        mov       rcx, rbp                                      ;1165.7
        mov       edx, 128                                      ;1165.7
        lea       r8, QWORD PTR [__STRLITPACK_261.0.10]         ;1165.7
        mov       r9d, 47                                       ;1165.7
        mov       QWORD PTR [32+rax], 0                         ;1165.7
        call      for_cpystr                                    ;1165.7
        jmp       .B8.55        ; Prob 100%                     ;1165.7
        ALIGN     16
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.85::
; mark_end;
SET_END_TIME ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SET_END_TIME.B1_B84	DD	467201
	DD	759841
	DD	829464
	DD	1704200
	DD	20481
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SET_END_TIME.B1_B84	DD	imagerel .B8.1
	DD	imagerel .B8.85
	DD	imagerel .unwind.SET_END_TIME.B1_B84
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.59_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
.2.59_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28	DD	0000001d4H,000000000H
.2.59_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.59_2__kmpc_loc_pack.11
.2.59_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	83
	DB	69
	DB	84
	DB	95
	DB	69
	DB	78
	DB	68
	DB	95
	DB	84
	DB	73
	DB	77
	DB	69
	DB	59
	DB	49
	DB	48
	DB	54
	DB	53
	DB	59
	DB	49
	DB	48
	DB	54
	DB	53
	DB	59
	DB	59
	DB 3 DUP ( 0H)	; pad
.2.59_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.59_2__kmpc_loc_pack.19
.2.59_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	83
	DB	69
	DB	84
	DB	95
	DB	69
	DB	78
	DB	68
	DB	95
	DB	84
	DB	73
	DB	77
	DB	69
	DB	59
	DB	49
	DB	48
	DB	54
	DB	53
	DB	59
	DB	49
	DB	50
	DB	49
	DB	51
	DB	59
	DB	59
	DB 3 DUP ( 0H)	; pad
SET_END_TIME$format_pack.0.10	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	50
	DB	0
	DB	0
	DB	2
	DB	1
	DB	0
	DB	0
	DB	0
	DB	8
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	50
	DB	0
	DB	0
	DB	2
	DB	1
	DB	0
	DB	0
	DB	0
	DB	8
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
__STRLITPACK_258.0.10	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_259.0.10	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_260.0.10	DD	66616
	DB	2
	DB 3 DUP ( 0H)	; pad
__NLITPACK_10.0.10	DD	-1
__STRLITPACK_262.0.10	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_263.0.10	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_264.0.10	DD	66616
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_261.0.10	DD	1953723725
	DD	1952805664
	DD	1853190688
	DD	1835627552
	DD	1680351333
	DD	1952543349
	DD	544108393
	DD	1746955881
	DD	539587442
	DD	1696625263
	DD	1948279918
	DD	6647145
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  SET_END_TIME
_TEXT	SEGMENT      'CODE'
; -- Begin  SET_CLASS_RUN_FLAGS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC SET_CLASS_RUN_FLAGS
; --- SET_CLASS_RUN_FLAGS
SET_CLASS_RUN_FLAGS	PROC 
.B9.1::                         ; Preds .B9.0
                                ; Execution count [0.00e+000]
L19::
                                                          ;1217.12
        push      rbp                                           ;1217.12
        push      r12                                           ;1217.12
        push      r13                                           ;1217.12
        push      r14                                           ;1217.12
        push      r15                                           ;1217.12
        sub       rsp, 1376                                     ;1217.12
        lea       rbp, QWORD PTR [48+rsp]                       ;1217.12
        lea       rcx, QWORD PTR [.2.60_2_kmpc_loc_struct_pack.12] ;1217.12
        movups    XMMWORD PTR [1280+rbp], xmm15                 ;1217.12[spill]
        movups    XMMWORD PTR [1296+rbp], xmm14                 ;1217.12[spill]
        movups    XMMWORD PTR [1312+rbp], xmm12                 ;1217.12[spill]
        call      __kmpc_global_thread_num                      ;1217.12
                                ; LOE rbx rsi rdi eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.104::                       ; Preds .B9.1
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.60_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1217.12
        mov       edx, eax                                      ;1217.12
        test      rcx, rcx                                      ;1217.12
        je        .B9.3         ; Prob 50%                      ;1217.12
                                ; LOE rcx rbx rsi rdi edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.2::                         ; Preds .B9.104
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [rdx*8]                        ;1217.12
        cdqe                                                    ;1217.12
        mov       r12, QWORD PTR [rcx+rax]                      ;1217.12
        test      r12, r12                                      ;1217.12
        jne       .B9.5         ; Prob 50%                      ;1217.12
                                ; LOE rbx rsi rdi r12 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.3::                         ; Preds .B9.104 .B9.2
                                ; Execution count [0.00e+000]
        mov       r10, rsp                                      ;1217.12
        lea       rcx, QWORD PTR [.2.60_2_kmpc_loc_struct_pack.20] ;1217.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1217.12
        lea       rax, QWORD PTR [.2.60_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1217.12
        mov       r9, QWORD PTR [.2.60_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28] ;1217.12
        mov       QWORD PTR [32+r10], rax                       ;1217.12
        call      __kmpc_threadprivate_cached                   ;1217.12
                                ; LOE rax rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.105::                       ; Preds .B9.3
                                ; Execution count [0.00e+000]
        mov       r12, rax                                      ;1217.12
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.5::                         ; Preds .B9.105 .B9.2
                                ; Execution count [1.00e+000]
        movups    xmm0, XMMWORD PTR [.T3680_.0.11]              ;1236.45
        movups    xmm1, XMMWORD PTR [.T3680_.0.11+16]           ;1236.45
        movups    xmm2, XMMWORD PTR [.T3680_.0.11+32]           ;1236.45
        movups    xmm3, XMMWORD PTR [.T3680_.0.11+48]           ;1236.45
        mov       rax, QWORD PTR [.T3680_.0.11+64]              ;1236.45
        movups    XMMWORD PTR [1040+rbp], xmm0                  ;1236.45
        movups    XMMWORD PTR [1056+rbp], xmm1                  ;1236.45
        movups    XMMWORD PTR [1072+rbp], xmm2                  ;1236.45
        movups    XMMWORD PTR [1088+rbp], xmm3                  ;1236.45
        mov       QWORD PTR [1104+rbp], rax                     ;1236.45
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.6::                         ; Preds .B9.5
                                ; Execution count [1.00e+000]
        movups    xmm0, XMMWORD PTR [.T3690_.0.11]              ;1235.56
        movups    xmm1, XMMWORD PTR [.T3690_.0.11+16]           ;1235.56
        movups    xmm2, XMMWORD PTR [.T3690_.0.11+32]           ;1235.56
        movups    xmm3, XMMWORD PTR [.T3690_.0.11+48]           ;1235.56
        mov       rax, QWORD PTR [.T3690_.0.11+64]              ;1235.56
        movups    XMMWORD PTR [1120+rbp], xmm0                  ;1235.56
        movups    XMMWORD PTR [1136+rbp], xmm1                  ;1235.56
        movups    XMMWORD PTR [1152+rbp], xmm2                  ;1235.56
        movups    XMMWORD PTR [1168+rbp], xmm3                  ;1235.56
        mov       QWORD PTR [1184+rbp], rax                     ;1235.56
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.7::                         ; Preds .B9.6
                                ; Execution count [1.00e+000]
        movups    xmm0, XMMWORD PTR [.T3700_.0.11]              ;1235.45
        movups    xmm1, XMMWORD PTR [.T3700_.0.11+16]           ;1235.45
        movups    xmm2, XMMWORD PTR [.T3700_.0.11+32]           ;1235.45
        movups    xmm3, XMMWORD PTR [.T3700_.0.11+48]           ;1235.45
        mov       rax, QWORD PTR [.T3700_.0.11+64]              ;1235.45
        movups    XMMWORD PTR [1200+rbp], xmm0                  ;1235.45
        movups    XMMWORD PTR [1216+rbp], xmm1                  ;1235.45
        movups    XMMWORD PTR [1232+rbp], xmm2                  ;1235.45
        movups    XMMWORD PTR [1248+rbp], xmm3                  ;1235.45
        mov       QWORD PTR [1264+rbp], rax                     ;1235.45
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.8::                         ; Preds .B9.7
                                ; Execution count [7.05e-001]
        movsxd    r15, DWORD PTR [MATL_FI_mp_NTYPM]             ;1245.11
        mov       r9d, 1                                        ;1243.1
        mov       rdx, QWORD PTR [MATL_FI_mp_MATERIAL]          ;1273.11
        mov       eax, 284                                      ;1243.1
        imul      rcx, QWORD PTR [MATL_FI_mp_MATERIAL+64], -284 ;1246.29
        pxor      xmm14, xmm14                                  ;1278.63
        jmp       .B9.9         ; Prob 100%                     ;1278.63
                                ; LOE rax rdx rcx rbx rsi rdi r9 r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.11::                        ; Preds .B9.10
                                ; Execution count [1.25e+000]
        add       rax, 284                                      ;1249.3
        inc       r9                                            ;1249.3
                                ; LOE rax rdx rcx rbx rsi rdi r9 r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.9::                         ; Preds .B9.11 .B9.8
                                ; Execution count [1.96e+000]
        cmp       r9, r15                                       ;1245.31
        jg        .B9.101       ; Prob 20%                      ;1245.31
                                ; LOE rax rdx rcx rbx rsi rdi r9 r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.10::                        ; Preds .B9.9
                                ; Execution count [1.57e+000]
        lea       r10, QWORD PTR [rdx+rax]                      ;1246.29
        movss     xmm0, DWORD PTR [68+rcx+r10]                  ;1246.7
        addss     xmm0, DWORD PTR [72+rcx+r10]                  ;1246.27
        comiss    xmm0, xmm14                                   ;1246.49
        jbe       .B9.11        ; Prob 80%                      ;1246.49
                                ; LOE rax rdx rcx rbx rsi rdi r9 r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.12::                        ; Preds .B9.10
                                ; Execution count [3.13e-001]: Infreq
        mov       DWORD PTR [FLAGS_FI_mp_LDECAY], -1            ;1247.5
                                ; LOE rcx rbx rsi rdi r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.13::                        ; Preds .B9.12 .B9.101
                                ; Execution count [1.00e+000]: Infreq
        mov       DWORD PTR [FLAGS_FI_mp_EVAPORATION], 0        ;1254.1
        xor       eax, eax                                      ;1254.1
        mov       DWORD PTR [GRID_FI_mp_MXLEV_EVAP], -1         ;1255.1
        mov       r13d, 1                                       ;1257.1
        mov       r14d, 284                                     ;1257.1
        test      r15, r15                                      ;1257.1
        jle       .B9.18        ; Prob 2%                       ;1257.1
                                ; LOE rcx rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.15::                        ; Preds .B9.13 .B9.126
                                ; Execution count [5.44e+000]: Infreq
        add       rcx, QWORD PTR [MATL_FI_mp_MATERIAL]          ;1258.34
        add       rcx, r14                                      ;1258.34
        call      ISEVAP                                        ;1258.34
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.106::                       ; Preds .B9.15
                                ; Execution count [5.44e+000]: Infreq
        mov       edx, eax                                      ;1258.34
                                ; LOE rbx rsi rdi r12 r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.16::                        ; Preds .B9.106
                                ; Execution count [5.44e+000]: Infreq
        inc       r13                                           ;1259.1
        add       r14, 284                                      ;1259.1
        mov       eax, DWORD PTR [FLAGS_FI_mp_EVAPORATION]      ;1258.3
        or        eax, edx                                      ;1258.3
        mov       DWORD PTR [FLAGS_FI_mp_EVAPORATION], eax      ;1258.3
        cmp       r13, r15                                      ;1259.1
        jg        .B9.18        ; Prob 18%                      ;1259.1
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.126::                       ; Preds .B9.16
                                ; Execution count [4.46e+000]: Infreq
        imul      rcx, QWORD PTR [MATL_FI_mp_MATERIAL+64], -284 ;1246.29
        jmp       .B9.15        ; Prob 100%                     ;1246.29
                                ; LOE rcx rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.18::                        ; Preds .B9.16 .B9.13
                                ; Execution count [1.00e+000]: Infreq
        test      al, 1                                         ;1263.5
        je        .B9.51        ; Prob 60%                      ;1263.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.19::                        ; Preds .B9.18
                                ; Execution count [4.00e-001]: Infreq
        cmp       DWORD PTR [TYPE_FI_mp_SUBSTRATE_TYPE], 0      ;1265.22
        je        .B9.49        ; Prob 50%                      ;1265.22
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.20::                        ; Preds .B9.19
                                ; Execution count [2.00e-001]: Infreq
        movsxd    r14, DWORD PTR [MATL_FI_mp_NTYPM]             ;1272.5
        mov       r15d, 1                                       ;1272.5
        mov       r13d, 284                                     ;1272.5
        test      r14, r14                                      ;1272.5
        jle       .B9.30        ; Prob 2%                       ;1272.5
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.21::                        ; Preds .B9.20
                                ; Execution count [1.96e-001]: Infreq
        movss     xmm12, DWORD PTR [_2il0floatpacket.11]        ;1278.29
        mov       QWORD PTR [8+rbp], rbx                        ;1278.29[spill]
        mov       QWORD PTR [rbp], rsi                          ;1278.29[spill]
                                ; LOE rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B9.22::                        ; Preds .B9.28 .B9.21
                                ; Execution count [6.57e-001]: Infreq
        imul      rcx, QWORD PTR [MATL_FI_mp_MATERIAL+64], -284 ;1273.11
        add       rcx, QWORD PTR [MATL_FI_mp_MATERIAL]          ;1273.11
        add       rcx, r13                                      ;1273.11
        call      ISEVAP                                        ;1273.11
                                ; LOE rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B9.23::                        ; Preds .B9.22
                                ; Execution count [6.57e-001]: Infreq
        test      al, 1                                         ;1273.11
        je        .B9.28        ; Prob 60%                      ;1273.11
                                ; LOE rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B9.24::                        ; Preds .B9.23
                                ; Execution count [2.63e-001]: Infreq
        imul      rax, QWORD PTR [MATL_FI_mp_MATERIAL+64], -284 ;1275.16
        add       rax, QWORD PTR [MATL_FI_mp_MATERIAL]          ;1275.9
        lea       rcx, QWORD PTR [940+rbp]                      ;1276.14
        lea       rdx, QWORD PTR [864+rbp]                      ;1276.14
        mov       ebx, DWORD PTR [16+rax+r13]                   ;1275.16
        add       ebx, 2                                        ;1275.9
        mov       DWORD PTR [76+rdx], ebx                       ;1275.9
        call      GET_PUFF_MATERIAL                             ;1276.14
                                ; LOE rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B9.25::                        ; Preds .B9.24
                                ; Execution count [2.63e-001]: Infreq
        movups    xmm0, XMMWORD PTR [864+rbp]                   ;1277.17
        lea       rdx, QWORD PTR [944+rbp]                      ;1277.17
        movups    xmm1, XMMWORD PTR [-64+rdx]                   ;1277.17
        mov       eax, 76                                       ;1277.17
        movups    xmm2, XMMWORD PTR [-48+rdx]                   ;1277.17
        mov       rsi, rsp                                      ;1277.9
        movups    xmm3, XMMWORD PTR [-32+rdx]                   ;1277.17
        mov       rbx, QWORD PTR [-16+rdx]                      ;1277.17
        mov       r9d, DWORD PTR [-8+rdx]                       ;1277.17
        movups    XMMWORD PTR [rdx], xmm0                       ;1277.17
        movups    XMMWORD PTR [16+rdx], xmm1                    ;1277.17
        movups    XMMWORD PTR [32+rdx], xmm2                    ;1277.17
        movups    XMMWORD PTR [48+rdx], xmm3                    ;1277.17
        mov       QWORD PTR [64+rdx], rbx                       ;1277.17
        mov       DWORD PTR [72+rdx], r9d                       ;1277.17
        mov       rax, 80                                       ;1277.17
        sub       rsp, rax                                      ;1277.17
        lea       rax, QWORD PTR [48+rsp]                       ;1277.17
                                ; LOE rax rdx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B9.108::                       ; Preds .B9.25
                                ; Execution count [2.63e-001]: Infreq
        mov       rbx, rax                                      ;1277.17
        mov       r8d, 76                                       ;1277.17
        mov       rcx, rbx                                      ;1277.17
        call      memmove                                       ;1277.17
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B9.26::                        ; Preds .B9.108
                                ; Execution count [2.63e-001]: Infreq
        mov       rax, rsi                                      ;1277.9
        movss     xmm0, DWORD PTR [36+rbx]                      ;1277.9
        mov       rsp, rax                                      ;1277.9
                                ; LOE rdi r12 r13 r14 r15 xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B9.109::                       ; Preds .B9.26
                                ; Execution count [2.63e-001]: Infreq
        ucomiss   xmm0, xmm12                                   ;1278.29
        jp        .B9.27        ; Prob 0%                       ;1278.29
        je        .B9.65        ; Prob 20%                      ;1278.29
                                ; LOE rdi r12 r13 r14 r15 xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B9.27::                        ; Preds .B9.109
                                ; Execution count [2.10e-001]: Infreq
        comiss    xmm14, xmm0                                   ;1278.63
        jae       .B9.65        ; Prob 20%                      ;1278.63
                                ; LOE rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B9.28::                        ; Preds .B9.27 .B9.23
                                ; Execution count [5.62e-001]: Infreq
        inc       r15                                           ;1287.5
        add       r13, 284                                      ;1287.5
        cmp       r15, r14                                      ;1287.5
        jle       .B9.22        ; Prob 82%                      ;1287.5
                                ; LOE rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B9.29::                        ; Preds .B9.28
                                ; Execution count [1.01e-001]: Infreq
        mov       rbx, QWORD PTR [8+rbp]                        ;[spill]
        mov       rsi, QWORD PTR [rbp]                          ;[spill]
        cmp       DWORD PTR [TYPE_FI_mp_SUBSTRATE_TYPE], 0      ;1291.24
        je        .B9.50        ; Prob 62%                      ;1291.24
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13
.B9.30::                        ; Preds .B9.29 .B9.20
                                ; Execution count [1.16e-001]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_RESTART], 1             ;1293.16
        jne       .B9.47        ; Prob 39%                      ;1293.16
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.31::                        ; Preds .B9.30
                                ; Execution count [6.96e-002]: Infreq
        mov       edx, 256                                      ;1295.25
        lea       rcx, QWORD PTR [448+rbp]                      ;1295.25
        mov       eax, DWORD PTR [FILES_FI_mp_LUN_TMP]          ;1294.9
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_LUS]          ;1295.25
        mov       r9, rdx                                       ;1295.25
        mov       DWORD PTR [184+rbp], eax                      ;1294.9
        call      for_trim                                      ;1295.25
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.32::                        ; Preds .B9.31
                                ; Execution count [6.96e-002]: Infreq
        mov       r10, rsp                                      ;1295.9
        lea       rcx, QWORD PTR [188+rbp]                      ;1295.9
        movsxd    rax, eax                                      ;1295.9
        mov       edx, 256                                      ;1295.9
        mov       r9, rax                                       ;1295.9
        lea       r8, QWORD PTR [448+rbp]                       ;1295.9
        mov       QWORD PTR [32+r10], 0                         ;1295.9
        call      for_cpystr                                    ;1295.9
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.33::                        ; Preds .B9.32
                                ; Execution count [6.96e-002]: Infreq
        mov       r10, rsp                                      ;1296.13
        lea       rcx, QWORD PTR [184+rbp]                      ;1296.13
        lea       rdx, QWORD PTR [TYPE_FI_mp_SUBSTRATE_TYPE]    ;1296.13
        lea       r8, QWORD PTR [SUBSTRATE_FI_mp_POROSITY]      ;1296.13
        lea       r9, QWORD PTR [SUBSTRATE_FI_mp_TORTUOSITY]    ;1296.13
        lea       rax, QWORD PTR [SUBSTRATE_FI_mp_GRAIN_SIZE]   ;1296.13
        mov       QWORD PTR [32+r10], rax                       ;1296.13
        call      GETSUBSTRATEPARAMS                            ;1296.13
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.34::                        ; Preds .B9.33
                                ; Execution count [6.96e-002]: Infreq
        test      eax, eax                                      ;1298.15
        jne       .B9.40        ; Prob 22%                      ;1298.15
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.35::                        ; Preds .B9.34
                                ; Execution count [5.43e-002]: Infreq
        mov       rax, rsp                                      ;1300.11
        mov       rcx, r12                                      ;1300.11
        mov       edx, 80                                       ;1300.11
        lea       r8, QWORD PTR [__STRLITPACK_302]              ;1300.11
        mov       r9d, 18                                       ;1300.11
        mov       DWORD PTR [464+r12], 99                       ;1299.11
        mov       QWORD PTR [32+rax], 0                         ;1300.11
        call      for_cpystr                                    ;1300.11
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.36::                        ; Preds .B9.35
                                ; Execution count [5.43e-002]: Infreq
        mov       rax, rsp                                      ;1301.11
        lea       rcx, QWORD PTR [80+r12]                       ;1301.11
        mov       edx, 128                                      ;1301.11
        lea       r8, QWORD PTR [__STRLITPACK_301]              ;1301.11
        mov       r9d, 34                                       ;1301.11
        mov       QWORD PTR [32+rax], 0                         ;1301.11
        call      for_cpystr                                    ;1301.11
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.37::                        ; Preds .B9.36
                                ; Execution count [5.43e-002]: Infreq
        mov       rcx, rsp                                      ;1302.11
        lea       rdx, QWORD PTR [SET_CLASS_RUN_FLAGS$format_pack.0.11] ;1302.11
        lea       r8, QWORD PTR [__STRLITPACK_308.0.11]         ;1302.11
        lea       r9, QWORD PTR [800+rbp]                       ;1302.11
        add       r12, 208                                      ;1302.11
        lea       rax, QWORD PTR [__STRLITPACK_297]             ;1302.11
        mov       QWORD PTR [-48+r9], 0                         ;1302.11
        mov       QWORD PTR [32+rcx], rdx                       ;1302.11
        lea       rcx, QWORD PTR [752+rbp]                      ;1302.11
        mov       rdx, 012083a4ff03H                            ;1302.11
        mov       QWORD PTR [48+rcx], 128                       ;1302.11
        mov       QWORD PTR [56+rcx], r12                       ;1302.11
        mov       QWORD PTR [64+rcx], 7                         ;1302.11
        mov       QWORD PTR [72+rcx], rax                       ;1302.11
        call      for_write_int_fmt                             ;1302.11
                                ; LOE rbx rsi rdi eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.38::                        ; Preds .B9.37
                                ; Execution count [5.43e-002]: Infreq
        test      eax, eax                                      ;1302.11
        jne       .B9.52        ; Prob 50%                      ;1302.11
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.39::                        ; Preds .B9.38
                                ; Execution count [2.72e-002]: Infreq
        mov       eax, DWORD PTR [TYPE_FI_mp_SUBSTRATE_TYPE]    ;1302.11
        lea       rcx, QWORD PTR [752+rbp]                      ;1302.11
        lea       rdx, QWORD PTR [__STRLITPACK_309.0.11]        ;1302.11
        lea       r8, QWORD PTR [744+rbp]                       ;1302.11
        mov       DWORD PTR [-8+rcx], eax                       ;1302.11
        call      for_write_int_fmt_xmit                        ;1302.11
        jmp       .B9.52        ; Prob 100%                     ;1302.11
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.40::                        ; Preds .B9.34
                                ; Execution count [1.53e-002]: Infreq
        lea       rcx, QWORD PTR [184+rbp]                      ;1308.13
        lea       rdx, QWORD PTR [444+rbp]                      ;1308.13
        call      GETNUMSUBSTRATES                              ;1308.13
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.41::                        ; Preds .B9.40
                                ; Execution count [1.53e-002]: Infreq
        test      eax, eax                                      ;1309.15
        jne       .B9.72        ; Prob 5%                       ;1309.15
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.42::                        ; Preds .B9.41 .B9.76
                                ; Execution count [1.36e-002]: Infreq
        mov       rax, rsp                                      ;1312.11
        mov       rcx, r12                                      ;1312.11
        mov       edx, 80                                       ;1312.11
        lea       r8, QWORD PTR [__STRLITPACK_296]              ;1312.11
        mov       r9d, 19                                       ;1312.11
        mov       DWORD PTR [464+r12], 99                       ;1311.11
        mov       QWORD PTR [32+rax], 0                         ;1312.11
        call      for_cpystr                                    ;1312.11
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.43::                        ; Preds .B9.42
                                ; Execution count [1.36e-002]: Infreq
        mov       rax, rsp                                      ;1313.11
        lea       rcx, QWORD PTR [80+r12]                       ;1313.11
        mov       edx, 128                                      ;1313.11
        lea       r8, QWORD PTR [__STRLITPACK_295]              ;1313.11
        mov       r9d, 32                                       ;1313.11
        mov       QWORD PTR [32+rax], 0                         ;1313.11
        call      for_cpystr                                    ;1313.11
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.44::                        ; Preds .B9.43
                                ; Execution count [1.36e-002]: Infreq
        mov       rcx, rsp                                      ;1314.11
        lea       rdx, QWORD PTR [SET_CLASS_RUN_FLAGS$format_pack.0.11+24] ;1314.11
        lea       r8, QWORD PTR [__STRLITPACK_310.0.11]         ;1314.11
        lea       r9, QWORD PTR [704+rbp]                       ;1314.11
        add       r12, 208                                      ;1314.11
        lea       rax, QWORD PTR [__STRLITPACK_291]             ;1314.11
        mov       QWORD PTR [48+r9], 0                          ;1314.11
        mov       QWORD PTR [32+rcx], rdx                       ;1314.11
        lea       rcx, QWORD PTR [752+rbp]                      ;1314.11
        mov       rdx, 012083a4ff03H                            ;1314.11
        mov       QWORD PTR [-48+rcx], 128                      ;1314.11
        mov       QWORD PTR [-40+rcx], r12                      ;1314.11
        mov       QWORD PTR [-32+rcx], 25                       ;1314.11
        mov       QWORD PTR [-24+rcx], rax                      ;1314.11
        call      for_write_int_fmt                             ;1314.11
                                ; LOE rbx rsi rdi eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.45::                        ; Preds .B9.44
                                ; Execution count [1.36e-002]: Infreq
        test      eax, eax                                      ;1314.11
        jne       .B9.52        ; Prob 50%                      ;1314.11
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.46::                        ; Preds .B9.45
                                ; Execution count [6.82e-003]: Infreq
        mov       eax, DWORD PTR [444+rbp]                      ;1314.11
        lea       rcx, QWORD PTR [752+rbp]                      ;1314.11
        lea       rdx, QWORD PTR [__STRLITPACK_311.0.11]        ;1314.11
        lea       r8, QWORD PTR [736+rbp]                       ;1314.11
        mov       DWORD PTR [-16+rcx], eax                      ;1314.11
        call      for_write_int_fmt_xmit                        ;1314.11
        jmp       .B9.52        ; Prob 100%                     ;1314.11
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.47::                        ; Preds .B9.30
                                ; Execution count [4.64e-002]: Infreq
        movss     xmm15, DWORD PTR [SUBSTRATE_FI_mp_POROSITY]   ;1335.7
        movss     xmm14, DWORD PTR [SUBSTRATE_FI_mp_TORTUOSITY] ;1335.45
        movss     xmm12, DWORD PTR [SUBSTRATE_FI_mp_GRAIN_SIZE] ;1335.7
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.48::                        ; Preds .B9.94 .B9.47
                                ; Execution count [4.73e-002]: Infreq
        movaps    xmm0, xmm15                                   ;1335.41
        mov       edx, 5                                        ;1335.41
        call      __powr4i4                                     ;1335.41
                                ; LOE rbx rsi rdi xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.115::                       ; Preds .B9.48
                                ; Execution count [4.73e-002]: Infreq
        movss     xmm1, DWORD PTR [_2il0floatpacket.19]         ;1336.51
        mulss     xmm12, xmm0                                   ;1335.31
        subss     xmm1, xmm15                                   ;1336.41
        mulss     xmm14, DWORD PTR [_2il0floatpacket.18]        ;1336.25
        mulss     xmm12, DWORD PTR [_2il0floatpacket.17]        ;1335.45
        mulss     xmm1, xmm1                                    ;1336.51
        mulss     xmm14, xmm1                                   ;1336.36
        divss     xmm12, xmm14                                  ;1335.7
        movss     DWORD PTR [SUBSTRATE_FI_mp_K_SUBSTRATE], xmm12 ;1335.7
        jmp       .B9.52        ; Prob 100%                     ;1335.7
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.49::                        ; Preds .B9.19
                                ; Execution count [2.00e-001]: Infreq
        movss     xmm12, DWORD PTR [_2il0floatpacket.11]        ;1340.7
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13
.B9.50::                        ; Preds .B9.49 .B9.29
                                ; Execution count [1.89e-001]: Infreq
        mov       DWORD PTR [TYPE_FI_mp_SUBSTRATE_TYPE], 0      ;1339.7
        movss     DWORD PTR [SUBSTRATE_FI_mp_POROSITY], xmm12   ;1340.7
        movss     DWORD PTR [SUBSTRATE_FI_mp_TORTUOSITY], xmm12 ;1341.7
        movss     DWORD PTR [SUBSTRATE_FI_mp_GRAIN_SIZE], xmm12 ;1342.7
        jmp       .B9.52        ; Prob 100%                     ;1342.7
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.51::                        ; Preds .B9.18
                                ; Execution count [6.00e-001]: Infreq
        mov       eax, -79652914                                ;1349.3
        mov       DWORD PTR [TYPE_FI_mp_SUBSTRATE_TYPE], 0      ;1348.3
        mov       DWORD PTR [SUBSTRATE_FI_mp_POROSITY], eax     ;1349.3
        mov       DWORD PTR [SUBSTRATE_FI_mp_TORTUOSITY], eax   ;1350.3
        mov       DWORD PTR [SUBSTRATE_FI_mp_GRAIN_SIZE], eax   ;1351.3
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.52::                        ; Preds .B9.39 .B9.46 .B9.80 .B9.70 .B9.45
                                ;       .B9.38 .B9.115 .B9.50 .B9.51
                                ; Execution count [1.00e+000]: Infreq
        mov       r14, QWORD PTR [1224+rbp]                     ;1357.5
        mov       r8d, r14d                                     ;1357.5
        test      r8d, 1                                        ;1357.5
        je        .B9.55        ; Prob 60%                      ;1357.5
                                ; LOE rbx rsi rdi r14 r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.53::                        ; Preds .B9.52
                                ; Execution count [3.39e-002]: Infreq
        mov       rax, r14                                      ;1357.27
        and       r8d, 1                                        ;1357.27
        and       rax, 2                                        ;1357.27
        add       r8d, r8d                                      ;1357.27
        shr       rax, 1                                        ;1357.27
        mov       r9, r14                                       ;1357.27
        and       r9, -256                                      ;1357.27
        lea       edx, DWORD PTR [1+rax*4]                      ;1357.27
        or        edx, r8d                                      ;1357.27
        mov       r8, r14                                       ;1357.27
        and       r8, -2048                                     ;1357.27
        mov       r10, 0f000000000H                             ;1357.27
        shr       r8, 11                                        ;1357.27
        and       r10, r14                                      ;1357.27
        shr       r9, 8                                         ;1357.27
        and       r8d, 1                                        ;1357.27
        shl       r8d, 8                                        ;1357.27
        and       r9d, 1                                        ;1357.27
        shl       r9d, 21                                       ;1357.27
        or        edx, r8d                                      ;1357.27
        shr       r10, 36                                       ;1357.27
        or        edx, r9d                                      ;1357.27
        and       edx, -31457281                                ;1357.27
        shl       r10d, 21                                      ;1357.27
        or        edx, r10d                                     ;1357.27
        add       edx, 262144                                   ;1357.27
        mov       rcx, QWORD PTR [1200+rbp]                     ;1357.27
        call      for_dealloc_allocatable                       ;1357.27
                                ; LOE rbx rsi rdi r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.54::                        ; Preds .B9.53
                                ; Execution count [3.39e-002]: Infreq
        mov       rax, 0ffffff0ffffff7feH                       ;1357.27
        and       r14, rax                                      ;1357.27
        mov       QWORD PTR [1200+rbp], 0                       ;1357.27
        mov       QWORD PTR [1224+rbp], r14                     ;1357.27
                                ; LOE rbx rsi rdi r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.55::                        ; Preds .B9.54 .B9.52
                                ; Execution count [1.00e+000]: Infreq
        mov       r13, QWORD PTR [1144+rbp]                     ;1358.5
        mov       r8d, r13d                                     ;1358.5
        test      r8d, 1                                        ;1358.5
        je        .B9.58        ; Prob 60%                      ;1358.5
                                ; LOE rbx rsi rdi r13 r14 r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.56::                        ; Preds .B9.55
                                ; Execution count [3.39e-002]: Infreq
        mov       rax, r13                                      ;1358.27
        and       r8d, 1                                        ;1358.27
        and       rax, 2                                        ;1358.27
        add       r8d, r8d                                      ;1358.27
        shr       rax, 1                                        ;1358.27
        mov       r9, r13                                       ;1358.27
        and       r9, -256                                      ;1358.27
        lea       edx, DWORD PTR [1+rax*4]                      ;1358.27
        or        edx, r8d                                      ;1358.27
        mov       r8, r13                                       ;1358.27
        and       r8, -2048                                     ;1358.27
        mov       r10, 0f000000000H                             ;1358.27
        shr       r8, 11                                        ;1358.27
        and       r10, r13                                      ;1358.27
        shr       r9, 8                                         ;1358.27
        and       r8d, 1                                        ;1358.27
        shl       r8d, 8                                        ;1358.27
        and       r9d, 1                                        ;1358.27
        shl       r9d, 21                                       ;1358.27
        or        edx, r8d                                      ;1358.27
        shr       r10, 36                                       ;1358.27
        or        edx, r9d                                      ;1358.27
        and       edx, -31457281                                ;1358.27
        shl       r10d, 21                                      ;1358.27
        or        edx, r10d                                     ;1358.27
        add       edx, 262144                                   ;1358.27
        mov       rcx, QWORD PTR [1120+rbp]                     ;1358.27
        call      for_dealloc_allocatable                       ;1358.27
                                ; LOE rbx rsi rdi r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.57::                        ; Preds .B9.56
                                ; Execution count [3.39e-002]: Infreq
        mov       rax, 0ffffff0ffffff7feH                       ;1358.27
        and       r13, rax                                      ;1358.27
        mov       QWORD PTR [1120+rbp], 0                       ;1358.27
        mov       QWORD PTR [1144+rbp], r13                     ;1358.27
                                ; LOE rbx rsi rdi r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.58::                        ; Preds .B9.57 .B9.55
                                ; Execution count [1.00e+000]: Infreq
        mov       r12, QWORD PTR [1064+rbp]                     ;1359.5
        mov       r8d, r12d                                     ;1359.5
        test      r8d, 1                                        ;1359.5
        je        .B9.61        ; Prob 60%                      ;1359.5
                                ; LOE rbx rsi rdi r12 r13 r14 r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.59::                        ; Preds .B9.58
                                ; Execution count [3.39e-002]: Infreq
        mov       rax, r12                                      ;1359.27
        and       r8d, 1                                        ;1359.27
        and       rax, 2                                        ;1359.27
        add       r8d, r8d                                      ;1359.27
        shr       rax, 1                                        ;1359.27
        mov       r9, r12                                       ;1359.27
        and       r9, -256                                      ;1359.27
        lea       edx, DWORD PTR [1+rax*4]                      ;1359.27
        or        edx, r8d                                      ;1359.27
        mov       r8, r12                                       ;1359.27
        and       r8, -2048                                     ;1359.27
        mov       r10, 0f000000000H                             ;1359.27
        shr       r8, 11                                        ;1359.27
        and       r10, r12                                      ;1359.27
        shr       r9, 8                                         ;1359.27
        and       r8d, 1                                        ;1359.27
        shl       r8d, 8                                        ;1359.27
        and       r9d, 1                                        ;1359.27
        shl       r9d, 21                                       ;1359.27
        or        edx, r8d                                      ;1359.27
        shr       r10, 36                                       ;1359.27
        or        edx, r9d                                      ;1359.27
        and       edx, -31457281                                ;1359.27
        shl       r10d, 21                                      ;1359.27
        or        edx, r10d                                     ;1359.27
        add       edx, 262144                                   ;1359.27
        mov       rcx, QWORD PTR [1040+rbp]                     ;1359.27
        call      for_dealloc_allocatable                       ;1359.27
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.60::                        ; Preds .B9.59
                                ; Execution count [3.39e-002]: Infreq
        mov       rax, 0ffffff0ffffff7feH                       ;1359.27
        and       r12, rax                                      ;1359.27
        mov       QWORD PTR [1040+rbp], 0                       ;1359.27
        mov       QWORD PTR [1064+rbp], r12                     ;1359.27
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.61::                        ; Preds .B9.60 .B9.58
                                ; Execution count [1.00e+000]: Infreq
        test      r14, 1                                        ;1362.1
        jne       .B9.99        ; Prob 3%                       ;1362.1
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.62::                        ; Preds .B9.61 .B9.100
                                ; Execution count [1.00e+000]: Infreq
        test      r13, 1                                        ;1362.1
        jne       .B9.97        ; Prob 3%                       ;1362.1
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.63::                        ; Preds .B9.62 .B9.98
                                ; Execution count [1.00e+000]: Infreq
        test      r12, 1                                        ;1362.1
        jne       .B9.95        ; Prob 3%                       ;1362.1
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.64::                        ; Preds .B9.63 .B9.96
                                ; Execution count [1.00e+000]: Infreq
        movups    xmm12, XMMWORD PTR [1312+rbp]                 ;1362.1[spill]
        movups    xmm14, XMMWORD PTR [1296+rbp]                 ;1362.1[spill]
        movups    xmm15, XMMWORD PTR [1280+rbp]                 ;1362.1[spill]
        lea       rsp, QWORD PTR [1328+rbp]                     ;1362.1
        pop       r15                                           ;1362.1
        pop       r14                                           ;1362.1
        pop       r13                                           ;1362.1
        pop       r12                                           ;1362.1
        pop       rbp                                           ;1362.1
        ret                                                     ;1362.1
                                ; LOE
.B9.65::                        ; Preds .B9.109 .B9.27
                                ; Execution count [4.21e-002]: Infreq
        mov       rbx, QWORD PTR [8+rbp]                        ;[spill]
        mov       rsi, QWORD PTR [rbp]                          ;[spill]
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.66::                        ; Preds .B9.65
                                ; Execution count [9.46e-002]: Infreq
        mov       rax, rsp                                      ;1280.11
        mov       rcx, r12                                      ;1280.11
        mov       edx, 80                                       ;1280.11
        lea       r8, QWORD PTR [__STRLITPACK_306]              ;1280.11
        mov       r9d, 19                                       ;1280.11
        mov       DWORD PTR [464+r12], 3                        ;1279.11
        mov       QWORD PTR [32+rax], 0                         ;1280.11
        call      for_cpystr                                    ;1280.11
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.67::                        ; Preds .B9.66
                                ; Execution count [9.46e-002]: Infreq
        mov       rax, rsp                                      ;1281.11
        lea       rcx, QWORD PTR [80+r12]                       ;1281.11
        mov       edx, 128                                      ;1281.11
        lea       r8, QWORD PTR [__STRLITPACK_305]              ;1281.11
        mov       r9d, 37                                       ;1281.11
        mov       QWORD PTR [32+rax], 0                         ;1281.11
        call      for_cpystr                                    ;1281.11
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.68::                        ; Preds .B9.67
                                ; Execution count [9.46e-002]: Infreq
        mov       rax, rsp                                      ;1282.11
        lea       rcx, QWORD PTR [208+r12]                      ;1282.11
        mov       edx, 128                                      ;1282.11
        lea       r8, QWORD PTR [__STRLITPACK_304]              ;1282.11
        mov       r9d, 48                                       ;1282.11
        mov       QWORD PTR [32+rax], 0                         ;1282.11
        call      for_cpystr                                    ;1282.11
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.69::                        ; Preds .B9.68
                                ; Execution count [9.46e-002]: Infreq
        imul      r10, QWORD PTR [MATL_FI_mp_MATERIAL+64], -284 ;1283.38
        mov       rax, QWORD PTR [MATL_FI_mp_MATERIAL]          ;1283.38
        lea       r14, QWORD PTR [__STRLITPACK_303]             ;1283.36
        mov       QWORD PTR [832+rbp], r14                      ;1283.36
        lea       r14, QWORD PTR [1024+rbp]                     ;1283.38
        mov       edx, 16                                       ;1283.38
        mov       rcx, r14                                      ;1283.38
        mov       r9, rdx                                       ;1283.38
        lea       r11, QWORD PTR [108+rax+r10]                  ;1283.38
        add       r13, r11                                      ;1283.38
        mov       r8, r13                                       ;1283.38
        mov       QWORD PTR [840+rbp], 12                       ;1283.36
        call      for_trim                                      ;1283.38
                                ; LOE rbx rsi rdi r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.70::                        ; Preds .B9.69
                                ; Execution count [9.46e-002]: Infreq
        add       r12, 336                                      ;1283.11
        lea       rcx, QWORD PTR [832+rbp]                      ;1283.11
        mov       edx, 2                                        ;1283.11
        mov       r8, r12                                       ;1283.11
        mov       r9d, 128                                      ;1283.11
        movsxd    rax, eax                                      ;1283.38
        mov       QWORD PTR [16+rcx], r14                       ;1283.36
        mov       QWORD PTR [24+rcx], rax                       ;1283.36
        call      for_concat                                    ;1283.11
        nop                                                     ;1283.11
        jmp       .B9.52        ; Prob 100%                     ;1283.11
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.72::                        ; Preds .B9.41
                                ; Execution count [7.66e-004]: Infreq
        movsxd    r8, DWORD PTR [444+rbp]                       ;1309.21
        xor       r14d, r14d                                    ;1309.21
        test      r8, r8                                        ;1309.21
        lea       rcx, QWORD PTR [176+rbp]                      ;1309.21
        cmovle    r8, r14                                       ;1309.21
        mov       edx, 2                                        ;1309.21
        mov       r9d, 16                                       ;1309.21
        call      for_check_mult_overflow64                     ;1309.21
                                ; LOE rbx rsi rdi r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.73::                        ; Preds .B9.72
                                ; Execution count [7.66e-004]: Infreq
        mov       r9, 0fffffff00fffffffH                        ;1309.21
        and       eax, 1                                        ;1309.21
        and       r9, QWORD PTR [1224+rbp]                      ;1309.21
        lea       rdx, QWORD PTR [1200+rbp]                     ;1309.21
        add       r9, 1073741824                                ;1309.21
        mov       r13d, r9d                                     ;1309.21
        and       r13d, 1                                       ;1309.21
        shl       eax, 4                                        ;1309.21
        mov       QWORD PTR [24+rdx], r9                        ;1309.21
        mov       rcx, QWORD PTR [176+rbp]                      ;1309.21
        lea       r8d, DWORD PTR [1+r13+r13]                    ;1309.21
        mov       r13, 0f000000000H                             ;1309.21
        or        r8d, eax                                      ;1309.21
        mov       rax, r9                                       ;1309.21
        and       rax, -256                                     ;1309.21
        and       r9, r13                                       ;1309.21
        shr       rax, 8                                        ;1309.21
        shr       r9, 36                                        ;1309.21
        and       eax, 1                                        ;1309.21
        shl       eax, 21                                       ;1309.21
        or        r8d, eax                                      ;1309.21
        shl       r9d, 21                                       ;1309.21
        and       r8d, -31457281                                ;1309.21
        or        r8d, r9d                                      ;1309.21
        add       r8d, 262144                                   ;1309.21
        call      for_alloc_allocatable                         ;1309.21
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.118::                       ; Preds .B9.73
                                ; Execution count [7.66e-004]: Infreq
        mov       r15, rax                                      ;1309.21
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.74::                        ; Preds .B9.118
                                ; Execution count [7.66e-004]: Infreq
        test      r15, r15                                      ;1309.21
        jne       .B9.76        ; Prob 50%                      ;1309.21
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.75::                        ; Preds .B9.74
                                ; Execution count [3.83e-004]: Infreq
        mov       rax, QWORD PTR [1224+rbp]                     ;1309.21
        mov       r10, rax                                      ;1309.21
        and       r10, -256                                     ;1309.21
        and       rax, r13                                      ;1309.21
        shr       r10, 8                                        ;1309.21
        mov       r11d, 1                                       ;1309.21
        shl       r10, 63                                       ;1309.21
        mov       r13, 0ffffff0fffffffffH                       ;1309.21
        shr       r10, 55                                       ;1309.21
        mov       rdx, r11                                      ;1309.21
        shr       rax, 36                                       ;1309.21
        add       r10, 133                                      ;1309.21
        mov       QWORD PTR [1232+rbp], r11                     ;1309.21
        and       r10, r13                                      ;1309.21
        shl       rax, 60                                       ;1309.21
        lea       rcx, QWORD PTR [32+rbp]                       ;1309.21
        movsxd    r11, DWORD PTR [444+rbp]                      ;1309.21
        test      r11, r11                                      ;1309.21
        mov       QWORD PTR [1216+rbp], r14                     ;1309.21
        cmovg     r14, r11                                      ;1309.21
        shr       rax, 24                                       ;1309.21
        mov       r8, r14                                       ;1309.21
        or        r10, rax                                      ;1309.21
        mov       eax, 16                                       ;1309.21
        mov       QWORD PTR [1264+rbp], rdx                     ;1309.21
        mov       edx, 2                                        ;1309.21
        mov       r9, rax                                       ;1309.21
        mov       QWORD PTR [1224+rbp], r10                     ;1309.21
        mov       QWORD PTR [1208+rbp], rax                     ;1309.21
        mov       QWORD PTR [1248+rbp], r14                     ;1309.21
        mov       QWORD PTR [1256+rbp], rax                     ;1309.21
        call      for_check_mult_overflow64                     ;1309.21
                                ; LOE rbx rsi rdi r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.76::                        ; Preds .B9.75 .B9.74
                                ; Execution count [7.66e-004]: Infreq
        test      r15d, r15d                                    ;1310.17
        jne       .B9.42        ; Prob 50%                      ;1310.17
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.77::                        ; Preds .B9.76
                                ; Execution count [1.68e-003]: Infreq
        mov       r9d, 16                                       ;1318.13
        lea       rcx, QWORD PTR [184+rbp]                      ;1318.13
        mov       r8, QWORD PTR [1200+rbp]                      ;1318.13
        lea       rdx, QWORD PTR [444+rbp]                      ;1318.13
        call      GETSUBSTRATES                                 ;1318.13
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.78::                        ; Preds .B9.77
                                ; Execution count [1.68e-003]: Infreq
        test      eax, eax                                      ;1319.15
        jne       .B9.81        ; Prob 50%                      ;1319.15
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.79::                        ; Preds .B9.78
                                ; Execution count [8.42e-004]: Infreq
        mov       rax, rsp                                      ;1321.11
        mov       rcx, r12                                      ;1321.11
        mov       edx, 80                                       ;1321.11
        lea       r8, QWORD PTR [__STRLITPACK_290]              ;1321.11
        mov       r9d, 13                                       ;1321.11
        mov       DWORD PTR [464+r12], 99                       ;1320.11
        mov       QWORD PTR [32+rax], 0                         ;1321.11
        call      for_cpystr                                    ;1321.11
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.80::                        ; Preds .B9.79
                                ; Execution count [8.42e-004]: Infreq
        mov       rax, rsp                                      ;1322.11
        add       r12, 80                                       ;1322.11
        mov       rcx, r12                                      ;1322.11
        mov       edx, 128                                      ;1322.11
        lea       r8, QWORD PTR [__STRLITPACK_289]              ;1322.11
        mov       r9d, 29                                       ;1322.11
        mov       QWORD PTR [32+rax], 0                         ;1322.11
        call      for_cpystr                                    ;1322.11
        nop                                                     ;1322.11
        jmp       .B9.52        ; Prob 100%                     ;1322.11
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.81::                        ; Preds .B9.78
                                ; Execution count [8.42e-004]: Infreq
        mov       r10, rsp                                      ;1326.9
        lea       r8, QWORD PTR [64+rbp]                        ;1326.9
        lea       r9, QWORD PTR [SET_CLASS_RUN_FLAGS$format_pack.0.11+48] ;1326.9
        lea       rcx, QWORD PTR [752+rbp]                      ;1326.9
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;1326.9
        lea       rax, QWORD PTR [__STRLITPACK_285]             ;1326.9
        mov       QWORD PTR [rcx], 0                            ;1326.9
        mov       QWORD PTR [32+r10], r8                        ;1326.9
        mov       r8, 012083a4ff03H                             ;1326.9
        mov       QWORD PTR [40+r10], r9                        ;1326.9
        lea       r9, QWORD PTR [__STRLITPACK_312.0.11]         ;1326.9
        mov       QWORD PTR [64+rbp], 46                        ;1326.9
        mov       QWORD PTR [72+rbp], rax                       ;1326.9
        call      for_write_seq_fmt                             ;1326.9
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.82::                        ; Preds .B9.81
                                ; Execution count [8.42e-004]: Infreq
        movsxd    r8, DWORD PTR [TYPE_FI_mp_SUBSTRATE_TYPE]     ;1328.50
        lea       r12, QWORD PTR [__STRLITPACK_281]             ;1327.58
        sub       r8, QWORD PTR [1264+rbp]                      ;1328.50
        mov       edx, 16                                       ;1328.50
        mov       QWORD PTR [rbp], r12                          ;1327.58
        lea       r12, QWORD PTR [160+rbp]                      ;1328.50
        shl       r8, 4                                         ;1328.50
        mov       rcx, r12                                      ;1328.50
        add       r8, QWORD PTR [1200+rbp]                      ;1328.50
        mov       r9, rdx                                       ;1328.50
        mov       QWORD PTR [8+rbp], 16                         ;1327.58
        mov       r13, rsp                                      ;1327.9
        call      for_trim                                      ;1328.50
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.83::                        ; Preds .B9.82
                                ; Execution count [8.42e-004]: Infreq
        movsxd    r14, eax                                      ;1328.50
        mov       QWORD PTR [24+rbp], r14                       ;1327.58
        add       r14, 16                                       ;1327.58
        mov       rax, r14                                      ;1327.58
        mov       QWORD PTR [16+rbp], r12                       ;1327.58
        add       rax, 15                                       ;1327.58
        and       rax, -16                                      ;1327.58
        call      __chkstk                                      ;1327.58
        sub       rsp, rax                                      ;1327.58
        lea       rax, QWORD PTR [48+rsp]                       ;1327.58
                                ; LOE rax rbx rsi rdi r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.121::                       ; Preds .B9.83
                                ; Execution count [8.42e-004]: Infreq
        mov       r12, rax                                      ;1327.58
        lea       rcx, QWORD PTR [rbp]                          ;1327.58
        mov       edx, 2                                        ;1327.58
        mov       r8, r12                                       ;1327.58
        mov       r9, r14                                       ;1327.58
        call      for_concat                                    ;1327.58
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.84::                        ; Preds .B9.121
                                ; Execution count [8.42e-004]: Infreq
        mov       QWORD PTR [80+rbp], r14                       ;1327.9
        mov       r14, rsp                                      ;1327.9
        mov       QWORD PTR [88+rbp], r12                       ;1327.9
        lea       rcx, QWORD PTR [752+rbp]                      ;1327.9
        mov       r12d, DWORD PTR [FILES_FI_mp_LUN_LOG]         ;1327.9
        mov       edx, r12d                                     ;1327.9
        mov       r8, 012083a4ff03H                             ;1327.9
        lea       r9, QWORD PTR [__STRLITPACK_313.0.11]         ;1327.9
        lea       r11, QWORD PTR [SET_CLASS_RUN_FLAGS$format_pack.0.11+60] ;1327.9
        lea       r10, QWORD PTR [80+rbp]                       ;1327.9
        mov       QWORD PTR [rcx], 0                            ;1327.9
        mov       QWORD PTR [32+r14], r10                       ;1327.9
        mov       QWORD PTR [40+r14], r11                       ;1327.9
        call      for_write_seq_fmt                             ;1327.9
                                ; LOE rbx rsi rdi r13 r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.85::                        ; Preds .B9.84
                                ; Execution count [8.42e-004]: Infreq
        mov       rax, r13                                      ;1327.9
        mov       rsp, rax                                      ;1327.9
                                ; LOE rbx rsi rdi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.123::                       ; Preds .B9.85
                                ; Execution count [8.42e-004]: Infreq
        mov       r13, rsp                                      ;1329.9
        lea       rcx, QWORD PTR [752+rbp]                      ;1329.9
        mov       edx, r12d                                     ;1329.9
        mov       r8, 012083a4ff03H                             ;1329.9
        lea       r9, QWORD PTR [__STRLITPACK_314.0.11]         ;1329.9
        lea       rax, QWORD PTR [__STRLITPACK_277]             ;1329.9
        lea       r11, QWORD PTR [SET_CLASS_RUN_FLAGS$format_pack.0.11+72] ;1329.9
        lea       r10, QWORD PTR [96+rbp]                       ;1329.9
        mov       QWORD PTR [rcx], 0                            ;1329.9
        mov       QWORD PTR [r10], 16                           ;1329.9
        mov       QWORD PTR [104+rbp], rax                      ;1329.9
        mov       QWORD PTR [32+r13], r10                       ;1329.9
        mov       QWORD PTR [40+r13], r11                       ;1329.9
        call      for_write_seq_fmt                             ;1329.9
                                ; LOE rbx rsi rdi eax r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.86::                        ; Preds .B9.123
                                ; Execution count [8.42e-004]: Infreq
        movss     xmm15, DWORD PTR [SUBSTRATE_FI_mp_POROSITY]   ;1335.7
        test      eax, eax                                      ;1329.9
        jne       .B9.88        ; Prob 50%                      ;1329.9
                                ; LOE rbx rsi rdi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm15
.B9.87::                        ; Preds .B9.86
                                ; Execution count [4.21e-004]: Infreq
        lea       rdx, QWORD PTR [__STRLITPACK_315.0.11]        ;1329.9
        lea       rcx, QWORD PTR [752+rbp]                      ;1329.9
        movss     DWORD PTR [40+rbp], xmm15                     ;1329.9
        lea       r8, QWORD PTR [40+rbp]                        ;1329.9
        call      for_write_seq_fmt_xmit                        ;1329.9
                                ; LOE rbx rsi rdi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm15
.B9.88::                        ; Preds .B9.87 .B9.86
                                ; Execution count [8.42e-004]: Infreq
        mov       r13, rsp                                      ;1330.9
        lea       rcx, QWORD PTR [752+rbp]                      ;1330.9
        mov       edx, r12d                                     ;1330.9
        mov       r8, 012083a4ff03H                             ;1330.9
        lea       r9, QWORD PTR [__STRLITPACK_316.0.11]         ;1330.9
        lea       rax, QWORD PTR [__STRLITPACK_273]             ;1330.9
        lea       r11, QWORD PTR [SET_CLASS_RUN_FLAGS$format_pack.0.11+108] ;1330.9
        lea       r10, QWORD PTR [112+rbp]                      ;1330.9
        mov       QWORD PTR [rcx], 0                            ;1330.9
        mov       QWORD PTR [r10], 16                           ;1330.9
        mov       QWORD PTR [120+rbp], rax                      ;1330.9
        mov       QWORD PTR [32+r13], r10                       ;1330.9
        mov       QWORD PTR [40+r13], r11                       ;1330.9
        call      for_write_seq_fmt                             ;1330.9
                                ; LOE rbx rsi rdi eax r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm15
.B9.89::                        ; Preds .B9.88
                                ; Execution count [8.42e-004]: Infreq
        movss     xmm14, DWORD PTR [SUBSTRATE_FI_mp_TORTUOSITY] ;1335.45
        test      eax, eax                                      ;1330.9
        jne       .B9.91        ; Prob 50%                      ;1330.9
                                ; LOE rbx rsi rdi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14 xmm15
.B9.90::                        ; Preds .B9.89
                                ; Execution count [4.21e-004]: Infreq
        lea       rdx, QWORD PTR [__STRLITPACK_317.0.11]        ;1330.9
        lea       rcx, QWORD PTR [752+rbp]                      ;1330.9
        movss     DWORD PTR [48+rbp], xmm14                     ;1330.9
        lea       r8, QWORD PTR [48+rbp]                        ;1330.9
        call      for_write_seq_fmt_xmit                        ;1330.9
                                ; LOE rbx rsi rdi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14 xmm15
.B9.91::                        ; Preds .B9.90 .B9.89
                                ; Execution count [8.42e-004]: Infreq
        mov       r13, rsp                                      ;1331.9
        lea       rcx, QWORD PTR [752+rbp]                      ;1331.9
        mov       edx, r12d                                     ;1331.9
        mov       r8, 012083a4ff03H                             ;1331.9
        lea       r9, QWORD PTR [__STRLITPACK_318.0.11]         ;1331.9
        lea       rax, QWORD PTR [__STRLITPACK_269]             ;1331.9
        lea       r11, QWORD PTR [SET_CLASS_RUN_FLAGS$format_pack.0.11+144] ;1331.9
        lea       r10, QWORD PTR [128+rbp]                      ;1331.9
        mov       QWORD PTR [rcx], 0                            ;1331.9
        mov       QWORD PTR [r10], 16                           ;1331.9
        mov       QWORD PTR [8+r10], rax                        ;1331.9
        mov       QWORD PTR [32+r13], r10                       ;1331.9
        mov       QWORD PTR [40+r13], r11                       ;1331.9
        call      for_write_seq_fmt                             ;1331.9
                                ; LOE rbx rsi rdi eax r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14 xmm15
.B9.92::                        ; Preds .B9.91
                                ; Execution count [8.42e-004]: Infreq
        movss     xmm12, DWORD PTR [SUBSTRATE_FI_mp_GRAIN_SIZE] ;1335.7
        test      eax, eax                                      ;1331.9
        jne       .B9.94        ; Prob 50%                      ;1331.9
                                ; LOE rbx rsi rdi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.93::                        ; Preds .B9.92
                                ; Execution count [4.21e-004]: Infreq
        lea       rdx, QWORD PTR [__STRLITPACK_319.0.11]        ;1331.9
        lea       rcx, QWORD PTR [752+rbp]                      ;1331.9
        movss     DWORD PTR [56+rbp], xmm12                     ;1331.9
        lea       r8, QWORD PTR [56+rbp]                        ;1331.9
        call      for_write_seq_fmt_xmit                        ;1331.9
                                ; LOE rbx rsi rdi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.94::                        ; Preds .B9.93 .B9.92
                                ; Execution count [8.42e-004]: Infreq
        mov       r10, rsp                                      ;1332.9
        lea       r8, QWORD PTR [144+rbp]                       ;1332.9
        lea       r9, QWORD PTR [SET_CLASS_RUN_FLAGS$format_pack.0.11+180] ;1332.9
        lea       rcx, QWORD PTR [752+rbp]                      ;1332.9
        mov       edx, r12d                                     ;1332.9
        lea       rax, QWORD PTR [__STRLITPACK_265]             ;1332.9
        mov       QWORD PTR [rcx], 0                            ;1332.9
        mov       QWORD PTR [32+r10], r8                        ;1332.9
        mov       r8, 012083a4ff03H                             ;1332.9
        mov       QWORD PTR [40+r10], r9                        ;1332.9
        lea       r9, QWORD PTR [__STRLITPACK_320.0.11]         ;1332.9
        mov       QWORD PTR [144+rbp], 46                       ;1332.9
        mov       QWORD PTR [152+rbp], rax                      ;1332.9
        call      for_write_seq_fmt                             ;1332.9
        nop                                                     ;1332.9
        jmp       .B9.48        ; Prob 100%                     ;1332.9
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.95::                        ; Preds .B9.63
                                ; Execution count [3.39e-002]: Infreq
        mov       rdx, r12                                      ;1362.1
        mov       r8, r12                                       ;1362.1
        and       rdx, 2                                        ;1362.1
        and       r8, -2048                                     ;1362.1
        mov       r9, r12                                       ;1362.1
        mov       eax, r12d                                     ;1362.1
        shr       rdx, 1                                        ;1362.1
        and       r9, -256                                      ;1362.1
        shr       r8, 11                                        ;1362.1
        and       eax, 1                                        ;1362.1
        shr       r9, 8                                         ;1362.1
        add       eax, eax                                      ;1362.1
        shl       edx, 2                                        ;1362.1
        and       r8d, 1                                        ;1362.1
        mov       r10, 0f000000000H                             ;1362.1
        or        edx, eax                                      ;1362.1
        shl       r8d, 8                                        ;1362.1
        and       r9d, 1                                        ;1362.1
        and       r10, r12                                      ;1362.1
        or        edx, r8d                                      ;1362.1
        shl       r9d, 21                                       ;1362.1
        shr       r10, 36                                       ;1362.1
        or        edx, r9d                                      ;1362.1
        and       edx, -31457281                                ;1362.1
        shl       r10d, 21                                      ;1362.1
        or        edx, r10d                                     ;1362.1
        add       edx, 262144                                   ;1362.1
        mov       rcx, QWORD PTR [1040+rbp]                     ;1362.1
        call      for_dealloc_allocatable                       ;1362.1
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.96::                        ; Preds .B9.95
                                ; Execution count [3.39e-002]: Infreq
        and       r12, -2050                                    ;1362.1
        mov       QWORD PTR [1040+rbp], 0                       ;1362.1
        mov       QWORD PTR [1064+rbp], r12                     ;1362.1
        jmp       .B9.64        ; Prob 100%                     ;1362.1
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.97::                        ; Preds .B9.62
                                ; Execution count [3.39e-002]: Infreq
        mov       rdx, r13                                      ;1362.1
        mov       r8, r13                                       ;1362.1
        and       rdx, 2                                        ;1362.1
        and       r8, -2048                                     ;1362.1
        mov       r9, r13                                       ;1362.1
        mov       eax, r13d                                     ;1362.1
        shr       rdx, 1                                        ;1362.1
        and       r9, -256                                      ;1362.1
        shr       r8, 11                                        ;1362.1
        and       eax, 1                                        ;1362.1
        shr       r9, 8                                         ;1362.1
        add       eax, eax                                      ;1362.1
        shl       edx, 2                                        ;1362.1
        and       r8d, 1                                        ;1362.1
        mov       r10, 0f000000000H                             ;1362.1
        or        edx, eax                                      ;1362.1
        shl       r8d, 8                                        ;1362.1
        and       r9d, 1                                        ;1362.1
        and       r10, r13                                      ;1362.1
        or        edx, r8d                                      ;1362.1
        shl       r9d, 21                                       ;1362.1
        shr       r10, 36                                       ;1362.1
        or        edx, r9d                                      ;1362.1
        and       edx, -31457281                                ;1362.1
        shl       r10d, 21                                      ;1362.1
        or        edx, r10d                                     ;1362.1
        add       edx, 262144                                   ;1362.1
        mov       rcx, QWORD PTR [1120+rbp]                     ;1362.1
        call      for_dealloc_allocatable                       ;1362.1
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.98::                        ; Preds .B9.97
                                ; Execution count [3.39e-002]: Infreq
        and       r13, -2050                                    ;1362.1
        mov       QWORD PTR [1120+rbp], 0                       ;1362.1
        mov       QWORD PTR [1144+rbp], r13                     ;1362.1
        jmp       .B9.63        ; Prob 100%                     ;1362.1
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.99::                        ; Preds .B9.61
                                ; Execution count [3.39e-002]: Infreq
        mov       rdx, r14                                      ;1362.1
        mov       r8, r14                                       ;1362.1
        and       rdx, 2                                        ;1362.1
        and       r8, -2048                                     ;1362.1
        mov       r9, r14                                       ;1362.1
        mov       eax, r14d                                     ;1362.1
        shr       rdx, 1                                        ;1362.1
        and       r9, -256                                      ;1362.1
        shr       r8, 11                                        ;1362.1
        and       eax, 1                                        ;1362.1
        shr       r9, 8                                         ;1362.1
        add       eax, eax                                      ;1362.1
        shl       edx, 2                                        ;1362.1
        and       r8d, 1                                        ;1362.1
        mov       r10, 0f000000000H                             ;1362.1
        or        edx, eax                                      ;1362.1
        shl       r8d, 8                                        ;1362.1
        and       r9d, 1                                        ;1362.1
        and       r10, r14                                      ;1362.1
        or        edx, r8d                                      ;1362.1
        shl       r9d, 21                                       ;1362.1
        shr       r10, 36                                       ;1362.1
        or        edx, r9d                                      ;1362.1
        and       edx, -31457281                                ;1362.1
        shl       r10d, 21                                      ;1362.1
        or        edx, r10d                                     ;1362.1
        add       edx, 262144                                   ;1362.1
        mov       rcx, QWORD PTR [1200+rbp]                     ;1362.1
        call      for_dealloc_allocatable                       ;1362.1
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.100::                       ; Preds .B9.99
                                ; Execution count [3.39e-002]: Infreq
        and       r14, -2050                                    ;1362.1
        mov       QWORD PTR [1200+rbp], 0                       ;1362.1
        mov       QWORD PTR [1224+rbp], r14                     ;1362.1
        jmp       .B9.62        ; Prob 100%                     ;1362.1
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13
.B9.101::                       ; Preds .B9.9
                                ; Execution count [3.92e-001]: Infreq
        mov       DWORD PTR [FLAGS_FI_mp_LDECAY], 0             ;1244.1
        jmp       .B9.13        ; Prob 100%                     ;1244.1
        ALIGN     16
                                ; LOE rcx rbx rsi rdi r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14
.B9.102::
; mark_end;
SET_CLASS_RUN_FLAGS ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SET_CLASS_RUN_FLAGS.B1_B20	DD	890123265
	DD	5621812
	DD	5564460
	DD	5503012
	DD	17826581
	DD	4027121836
	DD	3490045959
	DD	1342291971
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SET_CLASS_RUN_FLAGS.B1_B20	DD	imagerel .B9.1
	DD	imagerel .B9.21
	DD	imagerel .unwind.SET_CLASS_RUN_FLAGS.B1_B20
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SET_CLASS_RUN_FLAGS.B21_B29	DD	889458977
	DD	418833
	DD	472077
	DD	imagerel .B9.1
	DD	imagerel .B9.21
	DD	imagerel .unwind.SET_CLASS_RUN_FLAGS.B1_B20
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SET_CLASS_RUN_FLAGS.B21_B29	DD	imagerel .B9.21
	DD	imagerel .B9.30
	DD	imagerel .unwind.SET_CLASS_RUN_FLAGS.B21_B29
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SET_CLASS_RUN_FLAGS.B30_B64	DD	889192481
	DD	imagerel .B9.1
	DD	imagerel .B9.21
	DD	imagerel .unwind.SET_CLASS_RUN_FLAGS.B1_B20
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SET_CLASS_RUN_FLAGS.B30_B64	DD	imagerel .B9.30
	DD	imagerel .B9.65
	DD	imagerel .unwind.SET_CLASS_RUN_FLAGS.B30_B64
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SET_CLASS_RUN_FLAGS.B65_B65	DD	889192481
	DD	imagerel .B9.21
	DD	imagerel .B9.30
	DD	imagerel .unwind.SET_CLASS_RUN_FLAGS.B21_B29
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SET_CLASS_RUN_FLAGS.B65_B65	DD	imagerel .B9.65
	DD	imagerel .B9.66
	DD	imagerel .unwind.SET_CLASS_RUN_FLAGS.B65_B65
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SET_CLASS_RUN_FLAGS.B66_B101	DD	889192481
	DD	imagerel .B9.1
	DD	imagerel .B9.21
	DD	imagerel .unwind.SET_CLASS_RUN_FLAGS.B1_B20
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SET_CLASS_RUN_FLAGS.B66_B101	DD	imagerel .B9.66
	DD	imagerel .B9.102
	DD	imagerel .unwind.SET_CLASS_RUN_FLAGS.B66_B101
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.60_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DD 2 DUP (0H)	; pad
SET_CLASS_RUN_FLAGS$format_pack.0.11	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	36
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	3
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	36
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	3
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	10
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	31
	DB	0
	DB	0
	DB	4
	DB	1
	DB	0
	DB	0
	DB	0
	DB	10
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	10
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	31
	DB	0
	DB	0
	DB	4
	DB	1
	DB	0
	DB	0
	DB	0
	DB	10
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	10
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	31
	DB	0
	DB	0
	DB	4
	DB	1
	DB	0
	DB	0
	DB	0
	DB	10
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
.2.60_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28	DD	0000001d4H,000000000H
.2.60_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.60_2__kmpc_loc_pack.11
.2.60_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	83
	DB	69
	DB	84
	DB	95
	DB	67
	DB	76
	DB	65
	DB	83
	DB	83
	DB	95
	DB	82
	DB	85
	DB	78
	DB	95
	DB	70
	DB	76
	DB	65
	DB	71
	DB	83
	DB	59
	DB	49
	DB	50
	DB	49
	DB	55
	DB	59
	DB	49
	DB	50
	DB	49
	DB	55
	DB	59
	DB	59
.2.60_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.60_2__kmpc_loc_pack.19
.2.60_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	83
	DB	69
	DB	84
	DB	95
	DB	67
	DB	76
	DB	65
	DB	83
	DB	83
	DB	95
	DB	82
	DB	85
	DB	78
	DB	95
	DB	70
	DB	76
	DB	65
	DB	71
	DB	83
	DB	59
	DB	49
	DB	50
	DB	49
	DB	55
	DB	59
	DB	49
	DB	51
	DB	54
	DB	50
	DB	59
	DB	59
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
	DD 6 DUP (0H)	; pad
.T3680_.0.11	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000080H,000000000H
	DD	000000001H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD 6 DUP (0H)	; pad
.T3690_.0.11	DD	000000000H,000000000H
	DD	000000010H,000000000H
	DD	000000000H,000000000H
	DD	000000080H,000000000H
	DD	000000001H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD 6 DUP (0H)	; pad
.T3700_.0.11	DD	000000000H,000000000H
	DD	000000010H,000000000H
	DD	000000000H,000000000H
	DD	000000080H,000000000H
	DD	000000001H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
	DD	000000000H,000000000H
__STRLITPACK_308.0.11	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_309.0.11	DD	65801
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_310.0.11	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_311.0.11	DD	65801
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_312.0.11	DD	66616
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_313.0.11	DD	66616
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_314.0.11	DD	132152
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_315.0.11	DD	65818
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_316.0.11	DD	132152
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_317.0.11	DD	65818
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_318.0.11	DD	132152
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_319.0.11	DD	65818
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_320.0.11	DD	66616
	DB	2
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  SET_CLASS_RUN_FLAGS
_TEXT	SEGMENT      'CODE'
; -- Begin  CHECK_FIRST_SCN
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC CHECK_FIRST_SCN
; --- CHECK_FIRST_SCN
CHECK_FIRST_SCN	PROC 
; parameter 1: rcx
.B10.1::                        ; Preds .B10.0
                                ; Execution count [0.00e+000]
L32::
                                                          ;839.12
        push      rsi                                           ;839.12
        push      rdi                                           ;839.12
        sub       rsp, 936                                      ;839.12
        mov       rdi, rcx                                      ;839.12
        lea       rcx, QWORD PTR [.2.61_2_kmpc_loc_struct_pack.12] ;839.12
        call      __kmpc_global_thread_num                      ;839.12
                                ; LOE rbx rbp rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.39::                       ; Preds .B10.1
                                ; Execution count [0.00e+000]
        mov       rsi, QWORD PTR [.2.61_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;839.12
        test      rsi, rsi                                      ;839.12
        je        .B10.3        ; Prob 50%                      ;839.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.2::                        ; Preds .B10.39
                                ; Execution count [0.00e+000]
        lea       ecx, DWORD PTR [rax*8]                        ;839.12
        movsxd    rcx, ecx                                      ;839.12
        mov       rsi, QWORD PTR [rsi+rcx]                      ;839.12
        test      rsi, rsi                                      ;839.12
        jne       .B10.5        ; Prob 50%                      ;839.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.3::                        ; Preds .B10.2 .B10.39
                                ; Execution count [0.00e+000]
        mov       r10, rsp                                      ;839.12
        lea       rcx, QWORD PTR [.2.61_2_kmpc_loc_struct_pack.20] ;839.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;839.12
        mov       edx, eax                                      ;839.12
        mov       r9, QWORD PTR [.2.61_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28] ;839.12
        lea       rsi, QWORD PTR [.2.61_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;839.12
        mov       QWORD PTR [32+r10], rsi                       ;839.12
        call      __kmpc_threadprivate_cached                   ;839.12
                                ; LOE rax rbx rbp rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.40::                       ; Preds .B10.3
                                ; Execution count [0.00e+000]
        mov       rsi, rax                                      ;839.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.5::                        ; Preds .B10.40 .B10.2
                                ; Execution count [1.00e+000]
        movss     xmm0, DWORD PTR [12+rdi]                      ;854.5
        pxor      xmm1, xmm1                                    ;854.26
        ucomiss   xmm0, xmm1                                    ;854.26
        jp        .B10.6        ; Prob 0%                       ;854.26
        je        .B10.33       ; Prob 78%                      ;854.26
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.6::                        ; Preds .B10.5
                                ; Execution count [2.16e-001]
        mov       rax, rsp                                      ;859.3
        mov       rcx, rsi                                      ;859.3
        mov       edx, 80                                       ;859.3
        lea       r8, QWORD PTR [__STRLITPACK_193]              ;859.3
        mov       r9d, 15                                       ;859.3
        mov       DWORD PTR [464+rsi], 10                       ;858.3
        mov       QWORD PTR [32+rax], 0                         ;859.3
        call      for_cpystr                                    ;859.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.7::                        ; Preds .B10.6
                                ; Execution count [2.16e-001]
        mov       rax, rsp                                      ;860.3
        lea       rcx, QWORD PTR [80+rsi]                       ;860.3
        mov       edx, 128                                      ;860.3
        lea       r8, QWORD PTR [__STRLITPACK_192]              ;860.3
        mov       r9d, 38                                       ;860.3
        mov       QWORD PTR [32+rax], 0                         ;860.3
        call      for_cpystr                                    ;860.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.8::                        ; Preds .B10.7
                                ; Execution count [2.16e-001]
        pxor      xmm0, xmm0                                    ;861.28
        comiss    xmm0, DWORD PTR [12+rdi]                      ;861.28
        ja        .B10.12       ; Prob 22%                      ;861.28
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.9::                        ; Preds .B10.8
                                ; Execution count [1.69e-001]
        mov       rdx, 01208384ff00H                            ;864.5
        lea       rcx, QWORD PTR [704+rsp]                      ;864.5
        lea       r8, QWORD PTR [__STRLITPACK_194.0.7]          ;864.5
        lea       r9, QWORD PTR [656+rsp]                       ;864.5
        lea       r10, QWORD PTR [__STRLITPACK_188]             ;864.5
        lea       rax, QWORD PTR [208+rsi]                      ;864.5
        mov       QWORD PTR [rcx], 0                            ;864.5
        mov       QWORD PTR [-48+rcx], 128                      ;864.5
        mov       QWORD PTR [-40+rcx], rax                      ;864.5
        mov       QWORD PTR [-32+rcx], 35                       ;864.5
        mov       QWORD PTR [-24+rcx], r10                      ;864.5
        call      for_write_int_lis                             ;864.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.10::                       ; Preds .B10.9
                                ; Execution count [1.69e-001]
        mov       eax, DWORD PTR [12+rdi]                       ;864.5
        lea       rcx, QWORD PTR [704+rsp]                      ;864.5
        lea       rdx, QWORD PTR [__STRLITPACK_195.0.7]         ;864.5
        lea       r8, QWORD PTR [904+rsp]                       ;864.5
        mov       DWORD PTR [200+rcx], eax                      ;864.5
        call      for_write_int_lis_xmit                        ;864.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.11::                       ; Preds .B10.10
                                ; Execution count [1.69e-001]
        lea       rdx, QWORD PTR [__STRLITPACK_196.0.7]         ;864.5
        lea       rcx, QWORD PTR [704+rsp]                      ;864.5
        lea       rax, QWORD PTR [__STRLITPACK_187]             ;864.5
        lea       r8, QWORD PTR [816+rsp]                       ;864.5
        mov       QWORD PTR [112+rcx], 4                        ;864.5
        mov       QWORD PTR [120+rcx], rax                      ;864.5
        call      for_write_int_lis_xmit                        ;864.5
        jmp       .B10.13       ; Prob 100%                     ;864.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.12::                       ; Preds .B10.8
                                ; Execution count [4.76e-002]
        mov       rax, rsp                                      ;862.5
        lea       rcx, QWORD PTR [208+rsi]                      ;862.5
        mov       edx, 128                                      ;862.5
        lea       r8, QWORD PTR [__STRLITPACK_191]              ;862.5
        mov       r9d, 48                                       ;862.5
        mov       QWORD PTR [32+rax], 0                         ;862.5
        call      for_cpystr                                    ;862.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.13::                       ; Preds .B10.12 .B10.11
                                ; Execution count [2.16e-001]
        lea       rcx, QWORD PTR [__NLITPACK_8.0.7]             ;867.8
        call      WARNINGMESSAGE                                ;867.8
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.14::                       ; Preds .B10.13
                                ; Execution count [2.16e-001]
        cmp       DWORD PTR [464+rsi], 0                        ;868.14
        jne       .B10.33       ; Prob 50%                      ;868.14
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.15::                       ; Preds .B10.14
                                ; Execution count [1.08e-001]
        movss     xmm0, DWORD PTR [12+rdi]                      ;872.13
        pxor      xmm1, xmm1                                    ;872.34
        comiss    xmm1, xmm0                                    ;872.34
        jbe       .B10.33       ; Prob 10%                      ;872.34
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.16::                       ; Preds .B10.15
                                ; Execution count [9.74e-002]
        lea       rcx, QWORD PTR [__STRLITPACK_185]             ;873.5
        lea       r8, QWORD PTR [368+rdi]                       ;878.18
        movups    XMMWORD PTR [752+rsp], xmm7                   ;877.5[spill]
        lea       rdx, QWORD PTR [888+rsp]                      ;873.5
        movups    XMMWORD PTR [768+rsp], xmm6                   ;877.5[spill]
        lea       rax, QWORD PTR [48+rsp]                       ;877.5
        mov       QWORD PTR [856+rsp], rbx                      ;877.5[spill]
        movaps    xmm6, xmm0                                    ;877.5
        mov       QWORD PTR [848+rsp], r12                      ;877.5[spill]
        mov       r12, rdi                                      ;877.5
        mov       QWORD PTR [840+rsp], r13                      ;877.5[spill]
        mov       r13, rdx                                      ;877.5
        mov       QWORD PTR [832+rsp], r14                      ;877.5[spill]
        mov       r14, rsi                                      ;877.5
        mov       QWORD PTR [696+rsp], r15                      ;877.5[spill]
        mov       rsi, rax                                      ;877.5
        mov       rdi, rcx                                      ;877.5
        mov       r15, r8                                       ;877.5
        pxor      xmm7, xmm7                                    ;877.5
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.17::                       ; Preds .B10.31 .B10.16
                                ; Execution count [2.83e-001]
        mov       rbx, rsp                                      ;873.5
        lea       rcx, QWORD PTR [704+rsp]                      ;873.5
        mov       r8, 012083a4ff03H                             ;873.5
        lea       r9, QWORD PTR [__STRLITPACK_197.0.7]          ;873.5
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;873.5
        mov       QWORD PTR [rcx], 0                            ;873.5
        mov       QWORD PTR [184+rcx], 23                       ;873.5
        mov       QWORD PTR [192+rcx], rdi                      ;873.5
        mov       QWORD PTR [32+rbx], r13                       ;873.5
        call      for_write_seq_lis                             ;873.5
                                ; LOE rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.18::                       ; Preds .B10.17
                                ; Execution count [2.83e-001]
        test      eax, eax                                      ;873.5
        jne       .B10.20       ; Prob 50%                      ;873.5
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.19::                       ; Preds .B10.18
                                ; Execution count [1.42e-001]
        lea       rdx, QWORD PTR [__STRLITPACK_198.0.7]         ;873.5
        lea       rcx, QWORD PTR [704+rsp]                      ;873.5
        movss     DWORD PTR [176+rcx], xmm6                     ;873.5
        lea       r8, QWORD PTR [880+rsp]                       ;873.5
        call      for_write_seq_lis_xmit                        ;873.5
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.20::                       ; Preds .B10.19 .B10.18
                                ; Execution count [2.83e-001]
        mov       rbx, rsp                                      ;876.5
        lea       rcx, QWORD PTR [400+rsp]                      ;876.5
        mov       edx, 128                                      ;876.5
        lea       r8, QWORD PTR [920+rsp]                       ;876.5
        mov       r9d, 1                                        ;876.5
        inc       DWORD PTR [ERROR_FI_mp_NRELBEFORESTART]       ;874.5
        inc       DWORD PTR [NEXTREL_FI_mp_INIT_SOURCE]         ;875.5
        mov       BYTE PTR [520+rcx], 0                         ;876.13
        mov       QWORD PTR [32+rbx], 0                         ;876.5
        call      for_cpystr                                    ;876.5
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.21::                       ; Preds .B10.20
                                ; Execution count [2.83e-001]
        mov       rbx, rsp                                      ;877.5
        lea       rcx, QWORD PTR [528+rsp]                      ;877.5
        mov       edx, 128                                      ;877.5
        lea       r8, QWORD PTR [924+rsp]                       ;877.5
        mov       r9d, 1                                        ;877.5
        mov       BYTE PTR [396+rcx], 0                         ;877.13
        mov       QWORD PTR [32+rbx], 0                         ;877.5
        call      for_cpystr                                    ;877.5
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.22::                       ; Preds .B10.21
                                ; Execution count [2.83e-001]
        mov       rcx, r15                                      ;878.9
        mov       edx, 192                                      ;878.9
        call      for_len_trim                                  ;878.9
                                ; LOE rbp rsi rdi r12 r13 r14 r15 eax xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.42::                       ; Preds .B10.22
                                ; Execution count [2.83e-001]
        mov       QWORD PTR [704+rsp], 0                        ;879.7
        test      eax, eax                                      ;878.46
        jle       .B10.35       ; Prob 16%                      ;878.46
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.23::                       ; Preds .B10.42
                                ; Execution count [2.38e-001]
        mov       r11, rsp                                      ;879.7
        lea       rcx, QWORD PTR [704+rsp]                      ;879.7
        mov       rdx, 01208384ff00H                            ;879.7
        lea       r8, QWORD PTR [__STRLITPACK_199.0.7]          ;879.7
        lea       rbx, QWORD PTR [__STRLITPACK_181]             ;879.7
        lea       r9, QWORD PTR [784+rsp]                       ;879.7
        lea       r10, QWORD PTR [CHECK_FIRST_SCN$format_pack.0.7] ;879.7
        mov       QWORD PTR [80+rcx], 128                       ;879.7
        mov       QWORD PTR [88+rcx], rsi                       ;879.7
        mov       QWORD PTR [96+rcx], 15                        ;879.7
        mov       QWORD PTR [104+rcx], rbx                      ;879.7
        mov       QWORD PTR [32+r11], r10                       ;879.7
        call      for_write_int_fmt                             ;879.7
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.24::                       ; Preds .B10.23
                                ; Execution count [2.38e-001]
        mov       ebx, DWORD PTR [NEXTREL_FI_mp_INIT_SOURCE]    ;879.7
        lea       rcx, QWORD PTR [704+rsp]                      ;879.7
        lea       rdx, QWORD PTR [__STRLITPACK_200.0.7]         ;879.7
        lea       r8, QWORD PTR [912+rsp]                       ;879.7
        mov       DWORD PTR [208+rcx], ebx                      ;879.7
        call      for_write_int_fmt_xmit                        ;879.7
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.25::                       ; Preds .B10.24
                                ; Execution count [2.38e-001]
        mov       edx, 192                                      ;879.72
        lea       rbx, QWORD PTR [176+rsp]                      ;879.72
        mov       rcx, rbx                                      ;879.72
        mov       r8, r15                                       ;879.72
        mov       r9, rdx                                       ;879.72
        call      for_trim                                      ;879.72
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.26::                       ; Preds .B10.25
                                ; Execution count [2.38e-001]
        movsxd    rax, eax                                      ;879.72
        lea       rdx, QWORD PTR [__STRLITPACK_201.0.7]         ;879.7
        mov       QWORD PTR [864+rsp], rax                      ;879.7
        lea       r8, QWORD PTR [864+rsp]                       ;879.7
        mov       QWORD PTR [8+r8], rbx                         ;879.7
                                ; LOE rdx rbp rsi rdi r8 r12 r13 r14 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.27::                       ; Preds .B10.26 .B10.36
                                ; Execution count [2.83e-001]
        lea       rcx, QWORD PTR [704+rsp]                      ;881.7
        call      for_write_int_fmt_xmit                        ;881.7
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.28::                       ; Preds .B10.27
                                ; Execution count [2.83e-001]
        mov       rbx, rsp                                      ;883.10
        mov       edx, 128                                      ;883.10
        mov       r9, rdx                                       ;883.10
        lea       rcx, QWORD PTR [400+rsp]                      ;883.10
        lea       r8, QWORD PTR [528+rsp]                       ;883.10
        mov       QWORD PTR [32+rbx], rsi                       ;883.10
        mov       QWORD PTR [40+rbx], 128                       ;883.10
        call      WRITE_PROGRESS                                ;883.10
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.29::                       ; Preds .B10.28
                                ; Execution count [2.83e-001]
        lea       rcx, QWORD PTR [FILES_FI_mp_LUN_SCN]          ;884.10
        lea       rdx, QWORD PTR [FILES_FI_mp_FILE_SCN]         ;884.10
        mov       r8d, 256                                      ;884.10
        mov       r9, r12                                       ;884.10
        call      GET_SCN                                       ;884.10
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.30::                       ; Preds .B10.29
                                ; Execution count [2.83e-001]
        cmp       DWORD PTR [464+r14], 0                        ;885.16
        jne       .B10.32       ; Prob 20%                      ;885.16
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.31::                       ; Preds .B10.30
                                ; Execution count [2.27e-001]
        movss     xmm6, DWORD PTR [12+r12]                      ;872.13
        comiss    xmm7, xmm6                                    ;872.34
        ja        .B10.17       ; Prob 82%                      ;872.34
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.32::                       ; Preds .B10.30 .B10.31
                                ; Execution count [4.08e-002]
        movups    xmm6, XMMWORD PTR [768+rsp]                   ;[spill]
        movups    xmm7, XMMWORD PTR [752+rsp]                   ;[spill]
        mov       rbx, QWORD PTR [856+rsp]                      ;[spill]
        mov       r12, QWORD PTR [848+rsp]                      ;[spill]
        mov       r13, QWORD PTR [840+rsp]                      ;[spill]
        mov       r14, QWORD PTR [832+rsp]                      ;[spill]
        mov       r15, QWORD PTR [696+rsp]                      ;[spill]
                                ; LOE rbx rbp r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.33::                       ; Preds .B10.32 .B10.15 .B10.14 .B10.5
                                ; Execution count [1.00e+000]
        add       rsp, 936                                      ;893.1
        pop       rdi                                           ;893.1
        pop       rsi                                           ;893.1
        ret                                                     ;893.1
                                ; LOE
.B10.35::                       ; Preds .B10.42
                                ; Execution count [4.53e-002]: Infreq
        mov       r11, rsp                                      ;881.7
        lea       rcx, QWORD PTR [704+rsp]                      ;881.7
        mov       rdx, 01208384ff00H                            ;881.7
        lea       r8, QWORD PTR [__STRLITPACK_202.0.7]          ;881.7
        lea       rbx, QWORD PTR [__STRLITPACK_177]             ;881.7
        lea       r9, QWORD PTR [368+rsp]                       ;881.7
        lea       r10, QWORD PTR [CHECK_FIRST_SCN$format_pack.0.7+44] ;881.7
        mov       QWORD PTR [-336+rcx], 128                     ;881.7
        mov       QWORD PTR [-328+rcx], rsi                     ;881.7
        mov       QWORD PTR [-320+rcx], 15                      ;881.7
        mov       QWORD PTR [-312+rcx], rbx                     ;881.7
        mov       QWORD PTR [32+r11], r10                       ;881.7
        call      for_write_int_fmt                             ;881.7
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.36::                       ; Preds .B10.35
                                ; Execution count [4.53e-002]: Infreq
        mov       ebx, DWORD PTR [NEXTREL_FI_mp_INIT_SOURCE]    ;881.7
        lea       rdx, QWORD PTR [__STRLITPACK_203.0.7]         ;881.7
        mov       DWORD PTR [688+rsp], ebx                      ;881.7
        lea       r8, QWORD PTR [688+rsp]                       ;881.7
        jmp       .B10.27       ; Prob 100%                     ;881.7
        ALIGN     16
                                ; LOE rdx rbp rsi rdi r8 r12 r13 r14 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.37::
; mark_end;
CHECK_FIRST_SCN ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CHECK_FIRST_SCN.B1_B15	DD	264449
	DD	7667977
	DD	1610706946
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CHECK_FIRST_SCN.B1_B15	DD	imagerel .B10.1
	DD	imagerel .B10.16
	DD	imagerel .unwind.CHECK_FIRST_SCN.B1_B15
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CHECK_FIRST_SCN.B16_B32	DD	1203969
	DD	5764191
	DD	6874196
	DD	6935625
	DD	6997054
	DD	7025715
	DD	3172390
	DD	3110934
	DD	7667968
	DD	1610641408
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CHECK_FIRST_SCN.B16_B32	DD	imagerel .B10.16
	DD	imagerel .B10.33
	DD	imagerel .unwind.CHECK_FIRST_SCN.B16_B32
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CHECK_FIRST_SCN.B33_B33	DD	262145
	DD	7667968
	DD	1610641408
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CHECK_FIRST_SCN.B33_B33	DD	imagerel .B10.33
	DD	imagerel .B10.35
	DD	imagerel .unwind.CHECK_FIRST_SCN.B33_B33
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CHECK_FIRST_SCN.B35_B36	DD	33
	DD	imagerel .B10.16
	DD	imagerel .B10.33
	DD	imagerel .unwind.CHECK_FIRST_SCN.B16_B32
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CHECK_FIRST_SCN.B35_B36	DD	imagerel .B10.35
	DD	imagerel .B10.37
	DD	imagerel .unwind.CHECK_FIRST_SCN.B35_B36
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.61_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DD 6 DUP (0H)	; pad
CHECK_FIRST_SCN$format_pack.0.7	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	36
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	5
	DB	0
	DB	0
	DB	0
	DB	28
	DB	0
	DB	1
	DB	0
	DB	40
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	28
	DB	0
	DB	1
	DB	0
	DB	41
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	36
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	5
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DD 1 DUP (0H)	; pad
.2.61_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28	DD	0000001d4H,000000000H
.2.61_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.61_2__kmpc_loc_pack.11
.2.61_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	95
	DB	70
	DB	73
	DB	82
	DB	83
	DB	84
	DB	95
	DB	83
	DB	67
	DB	78
	DB	59
	DB	56
	DB	51
	DB	57
	DB	59
	DB	56
	DB	51
	DB	57
	DB	59
	DB	59
	DB 2 DUP ( 0H)	; pad
.2.61_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.61_2__kmpc_loc_pack.19
.2.61_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	95
	DB	70
	DB	73
	DB	82
	DB	83
	DB	84
	DB	95
	DB	83
	DB	67
	DB	78
	DB	59
	DB	56
	DB	51
	DB	57
	DB	59
	DB	56
	DB	57
	DB	51
	DB	59
	DB	59
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_194.0.7	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_195.0.7	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_196.0.7	DD	66616
	DB	2
	DB 3 DUP ( 0H)	; pad
__NLITPACK_8.0.7	DD	-1
__STRLITPACK_197.0.7	DD	132152
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_198.0.7	DD	65818
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_199.0.7	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_200.0.7	DD	131337
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_201.0.7	DD	66616
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_202.0.7	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_203.0.7	DD	65801
	DB	2
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  CHECK_FIRST_SCN
_TEXT	SEGMENT      'CODE'
; -- Begin  CHECKPOLEFIELD..0
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
; --- CHECKPOLEFIELD..0
CHECKPOLEFIELD..0	PROC PRIVATE
; parameter 1: rcx
; parameter 2: rdx
.B11.1::                        ; Preds .B11.0
                                ; Execution count [0.00e+000]
L47::
                                                          ;1366.18
        push      rbx                                           ;1366.18
        push      r12                                           ;1366.18
        push      r13                                           ;1366.18
        sub       rsp, 64                                       ;1366.18
        mov       r13, rcx                                      ;1366.18
        lea       rcx, QWORD PTR [.2.62_2_kmpc_loc_struct_pack.12] ;1366.18
        call      __kmpc_global_thread_num                      ;1366.18
                                ; LOE rbx rbp rsi rdi r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.21::                       ; Preds .B11.1
                                ; Execution count [0.00e+000]
        mov       r8, QWORD PTR [.2.62_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1366.18
        test      r8, r8                                        ;1366.18
        je        .B11.3        ; Prob 50%                      ;1366.18
                                ; LOE rbx rbp rsi rdi r8 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.2::                        ; Preds .B11.21
                                ; Execution count [0.00e+000]
        lea       ecx, DWORD PTR [rax*8]                        ;1366.18
        movsxd    rcx, ecx                                      ;1366.18
        mov       r12, QWORD PTR [r8+rcx]                       ;1366.18
        test      r12, r12                                      ;1366.18
        jne       .B11.5        ; Prob 50%                      ;1366.18
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.3::                        ; Preds .B11.2 .B11.21
                                ; Execution count [0.00e+000]
        mov       r11, rsp                                      ;1366.18
        lea       rcx, QWORD PTR [.2.62_2_kmpc_loc_struct_pack.20] ;1366.18
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1366.18
        mov       edx, eax                                      ;1366.18
        mov       r9, QWORD PTR [.2.62_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28] ;1366.18
        lea       r10, QWORD PTR [.2.62_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1366.18
        mov       QWORD PTR [32+r11], r10                       ;1366.18
        call      __kmpc_threadprivate_cached                   ;1366.18
                                ; LOE rax rbx rbp rsi rdi r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.22::                       ; Preds .B11.3
                                ; Execution count [0.00e+000]
        mov       r12, rax                                      ;1366.18
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.5::                        ; Preds .B11.22 .B11.2
                                ; Execution count [1.00e+000]
        test      BYTE PTR [r13], 1                             ;1381.5
        je        .B11.13       ; Prob 60%                      ;1381.5
                                ; LOE rbx rbp rsi rdi r12 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.6::                        ; Preds .B11.5
                                ; Execution count [4.00e-001]
        mov       eax, DWORD PTR [MET_FI_mp_NUMMET]             ;1383.3
        mov       r13d, -1                                      ;1382.3
        test      eax, eax                                      ;1383.3
        jle       .B11.14       ; Prob 2%                       ;1383.3
                                ; LOE rbx rbp rsi rdi r12 r14 r15 eax r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.7::                        ; Preds .B11.6
                                ; Execution count [3.92e-001]
        mov       DWORD PTR [48+rsp], 1                         ;1383.3
        mov       ebx, eax                                      ;1383.3
        jmp       .B11.8        ; Prob 100%                     ;1383.3
                                ; LOE rbp rsi rdi r12 r14 r15 ebx r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.12::                       ; Preds .B11.11
                                ; Execution count [4.33e-001]
        mov       DWORD PTR [48+rsp], edx                       ;1383.3
                                ; LOE rbp rsi rdi r12 r14 r15 ebx r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.8::                        ; Preds .B11.7 .B11.12
                                ; Execution count [8.24e-001]
        lea       rcx, QWORD PTR [48+rsp]                       ;1384.11
        lea       rdx, QWORD PTR [52+rsp]                       ;1384.11
        call      SWIMGETGRIDTYPE                               ;1384.11
                                ; LOE rbp rsi rdi r12 r14 r15 eax ebx r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.9::                        ; Preds .B11.8
                                ; Execution count [8.24e-001]
        cmp       eax, 1                                        ;1385.13
        jne       .B11.16       ; Prob 20%                      ;1385.13
                                ; LOE rbp rsi rdi r12 r14 r15 ebx r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.10::                       ; Preds .B11.9
                                ; Execution count [6.59e-001]
        cmp       DWORD PTR [52+rsp], 2                         ;1391.15
        je        .B11.18       ; Prob 20%                      ;1391.15
                                ; LOE rbp rsi rdi r12 r14 r15 ebx r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.11::                       ; Preds .B11.10
                                ; Execution count [5.28e-001]
        mov       edx, DWORD PTR [48+rsp]                       ;1395.3
        inc       edx                                           ;1395.3
        cmp       edx, ebx                                      ;1395.3
        jle       .B11.12       ; Prob 82%                      ;1395.3
        jmp       .B11.14       ; Prob 100%                     ;1395.3
                                ; LOE rbp rsi rdi r12 r14 r15 edx ebx r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.13::                       ; Preds .B11.5
                                ; Execution count [6.00e-001]
        xor       r13d, r13d                                    ;1397.3
                                ; LOE rbx rbp rsi rdi r14 r15 r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.14::                       ; Preds .B11.11 .B11.17 .B11.18 .B11.6 .B11.13
                                ;      
                                ; Execution count [1.00e+000]
        mov       eax, r13d                                     ;1403.1
        add       rsp, 64                                       ;1403.1
        pop       r13                                           ;1403.1
        pop       r12                                           ;1403.1
        pop       rbx                                           ;1403.1
        ret                                                     ;1403.1
                                ; LOE
.B11.16::                       ; Preds .B11.9
                                ; Execution count [1.65e-001]: Infreq
        mov       r10, rsp                                      ;1387.7
        mov       rcx, r12                                      ;1387.7
        mov       edx, 80                                       ;1387.7
        lea       r8, QWORD PTR [__STRLITPACK_322]              ;1387.7
        mov       r9d, 14                                       ;1387.7
        mov       DWORD PTR [464+r12], 3                        ;1386.7
        mov       QWORD PTR [32+r10], 0                         ;1387.7
        call      for_cpystr                                    ;1387.7
                                ; LOE rbx rbp rsi rdi r12 r14 r15 r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.17::                       ; Preds .B11.16
                                ; Execution count [1.65e-001]: Infreq
        mov       r10, rsp                                      ;1388.7
        add       r12, 80                                       ;1388.7
        mov       rcx, r12                                      ;1388.7
        mov       edx, 128                                      ;1388.7
        lea       r8, QWORD PTR [__STRLITPACK_321]              ;1388.7
        mov       r9d, 20                                       ;1388.7
        mov       QWORD PTR [32+r10], 0                         ;1388.7
        call      for_cpystr                                    ;1388.7
        jmp       .B11.14       ; Prob 100%                     ;1388.7
                                ; LOE rbx rbp rsi rdi r14 r15 r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.18::                       ; Preds .B11.10
                                ; Execution count [1.32e-001]: Infreq
        mov       r13d, DWORD PTR [48+rsp]                      ;1392.7
        jmp       .B11.14       ; Prob 100%                     ;1392.7
        ALIGN     16
                                ; LOE rbx rbp rsi rdi r14 r15 r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.19::
; mark_end;
CHECKPOLEFIELD..0 ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CHECKPOLEFIELD..0.B1_B18	DD	264449
	DD	3490017801
	DD	805421059
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CHECKPOLEFIELD..0.B1_B18	DD	imagerel .B11.1
	DD	imagerel .B11.19
	DD	imagerel .unwind.CHECKPOLEFIELD..0.B1_B18
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.62_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DB 2 DUP ( 0H)	; pad
.2.62_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28	DD	0000001d4H,000000000H
.2.62_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.62_2__kmpc_loc_pack.11
.2.62_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	80
	DB	79
	DB	76
	DB	69
	DB	70
	DB	73
	DB	69
	DB	76
	DB	68
	DB	59
	DB	49
	DB	51
	DB	54
	DB	54
	DB	59
	DB	49
	DB	51
	DB	54
	DB	54
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.62_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.62_2__kmpc_loc_pack.19
.2.62_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	80
	DB	79
	DB	76
	DB	69
	DB	70
	DB	73
	DB	69
	DB	76
	DB	68
	DB	59
	DB	49
	DB	51
	DB	54
	DB	54
	DB	59
	DB	49
	DB	52
	DB	48
	DB	51
	DB	59
	DB	59
_DATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  CHECKPOLEFIELD..0
_TEXT	SEGMENT      'CODE'
; -- Begin  CHECKPOLEFIELD..1
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
; --- CHECKPOLEFIELD..1
CHECKPOLEFIELD..1	PROC PRIVATE
; parameter 1: rcx
; parameter 2: rdx
.B12.1::                        ; Preds .B12.0
                                ; Execution count [0.00e+000]
L48::
                                                          ;1366.18
        push      rbx                                           ;1366.18
        push      r12                                           ;1366.18
        push      r13                                           ;1366.18
        sub       rsp, 64                                       ;1366.18
        mov       r13, rcx                                      ;1366.18
        lea       rcx, QWORD PTR [.2.63_2_kmpc_loc_struct_pack.12] ;1366.18
        call      __kmpc_global_thread_num                      ;1366.18
                                ; LOE rbx rbp rsi rdi r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.21::                       ; Preds .B12.1
                                ; Execution count [0.00e+000]
        mov       r8, QWORD PTR [.2.63_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1366.18
        test      r8, r8                                        ;1366.18
        je        .B12.3        ; Prob 50%                      ;1366.18
                                ; LOE rbx rbp rsi rdi r8 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.2::                        ; Preds .B12.21
                                ; Execution count [0.00e+000]
        lea       ecx, DWORD PTR [rax*8]                        ;1366.18
        movsxd    rcx, ecx                                      ;1366.18
        mov       r12, QWORD PTR [r8+rcx]                       ;1366.18
        test      r12, r12                                      ;1366.18
        jne       .B12.5        ; Prob 50%                      ;1366.18
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.3::                        ; Preds .B12.2 .B12.21
                                ; Execution count [0.00e+000]
        mov       r11, rsp                                      ;1366.18
        lea       rcx, QWORD PTR [.2.63_2_kmpc_loc_struct_pack.20] ;1366.18
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1366.18
        mov       edx, eax                                      ;1366.18
        mov       r9, QWORD PTR [.2.63_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28] ;1366.18
        lea       r10, QWORD PTR [.2.63_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;1366.18
        mov       QWORD PTR [32+r11], r10                       ;1366.18
        call      __kmpc_threadprivate_cached                   ;1366.18
                                ; LOE rax rbx rbp rsi rdi r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.22::                       ; Preds .B12.3
                                ; Execution count [0.00e+000]
        mov       r12, rax                                      ;1366.18
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.5::                        ; Preds .B12.22 .B12.2
                                ; Execution count [1.00e+000]
        test      BYTE PTR [r13], 1                             ;1381.5
        je        .B12.13       ; Prob 60%                      ;1381.5
                                ; LOE rbx rbp rsi rdi r12 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.6::                        ; Preds .B12.5
                                ; Execution count [4.00e-001]
        mov       eax, DWORD PTR [MET_FI_mp_NUMMET]             ;1383.3
        mov       r13d, -1                                      ;1382.3
        test      eax, eax                                      ;1383.3
        jle       .B12.14       ; Prob 2%                       ;1383.3
                                ; LOE rbx rbp rsi rdi r12 r14 r15 eax r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.7::                        ; Preds .B12.6
                                ; Execution count [3.92e-001]
        mov       DWORD PTR [48+rsp], 1                         ;1383.3
        mov       ebx, eax                                      ;1383.3
        jmp       .B12.8        ; Prob 100%                     ;1383.3
                                ; LOE rbp rsi rdi r12 r14 r15 ebx r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.12::                       ; Preds .B12.11
                                ; Execution count [4.33e-001]
        mov       DWORD PTR [48+rsp], edx                       ;1383.3
                                ; LOE rbp rsi rdi r12 r14 r15 ebx r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.8::                        ; Preds .B12.7 .B12.12
                                ; Execution count [8.24e-001]
        lea       rcx, QWORD PTR [48+rsp]                       ;1384.11
        lea       rdx, QWORD PTR [52+rsp]                       ;1384.11
        call      SWIMGETGRIDTYPE                               ;1384.11
                                ; LOE rbp rsi rdi r12 r14 r15 eax ebx r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.9::                        ; Preds .B12.8
                                ; Execution count [8.24e-001]
        cmp       eax, 1                                        ;1385.13
        jne       .B12.16       ; Prob 20%                      ;1385.13
                                ; LOE rbp rsi rdi r12 r14 r15 ebx r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.10::                       ; Preds .B12.9
                                ; Execution count [6.59e-001]
        cmp       DWORD PTR [52+rsp], 1                         ;1391.15
        je        .B12.18       ; Prob 20%                      ;1391.15
                                ; LOE rbp rsi rdi r12 r14 r15 ebx r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.11::                       ; Preds .B12.10
                                ; Execution count [5.28e-001]
        mov       edx, DWORD PTR [48+rsp]                       ;1395.3
        inc       edx                                           ;1395.3
        cmp       edx, ebx                                      ;1395.3
        jle       .B12.12       ; Prob 82%                      ;1395.3
        jmp       .B12.14       ; Prob 100%                     ;1395.3
                                ; LOE rbp rsi rdi r12 r14 r15 edx ebx r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.13::                       ; Preds .B12.5
                                ; Execution count [6.00e-001]
        xor       r13d, r13d                                    ;1397.3
                                ; LOE rbx rbp rsi rdi r14 r15 r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.14::                       ; Preds .B12.11 .B12.17 .B12.18 .B12.6 .B12.13
                                ;      
                                ; Execution count [1.00e+000]
        mov       eax, r13d                                     ;1403.1
        add       rsp, 64                                       ;1403.1
        pop       r13                                           ;1403.1
        pop       r12                                           ;1403.1
        pop       rbx                                           ;1403.1
        ret                                                     ;1403.1
                                ; LOE
.B12.16::                       ; Preds .B12.9
                                ; Execution count [1.65e-001]: Infreq
        mov       r10, rsp                                      ;1387.7
        mov       rcx, r12                                      ;1387.7
        mov       edx, 80                                       ;1387.7
        lea       r8, QWORD PTR [__STRLITPACK_322]              ;1387.7
        mov       r9d, 14                                       ;1387.7
        mov       DWORD PTR [464+r12], 3                        ;1386.7
        mov       QWORD PTR [32+r10], 0                         ;1387.7
        call      for_cpystr                                    ;1387.7
                                ; LOE rbx rbp rsi rdi r12 r14 r15 r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.17::                       ; Preds .B12.16
                                ; Execution count [1.65e-001]: Infreq
        mov       r10, rsp                                      ;1388.7
        add       r12, 80                                       ;1388.7
        mov       rcx, r12                                      ;1388.7
        mov       edx, 128                                      ;1388.7
        lea       r8, QWORD PTR [__STRLITPACK_321]              ;1388.7
        mov       r9d, 20                                       ;1388.7
        mov       QWORD PTR [32+r10], 0                         ;1388.7
        call      for_cpystr                                    ;1388.7
        jmp       .B12.14       ; Prob 100%                     ;1388.7
                                ; LOE rbx rbp rsi rdi r14 r15 r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.18::                       ; Preds .B12.10
                                ; Execution count [1.32e-001]: Infreq
        mov       r13d, DWORD PTR [48+rsp]                      ;1392.7
        jmp       .B12.14       ; Prob 100%                     ;1392.7
        ALIGN     16
                                ; LOE rbx rbp rsi rdi r14 r15 r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B12.19::
; mark_end;
CHECKPOLEFIELD..1 ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CHECKPOLEFIELD..1.B1_B18	DD	264449
	DD	3490017801
	DD	805421059
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CHECKPOLEFIELD..1.B1_B18	DD	imagerel .B12.1
	DD	imagerel .B12.19
	DD	imagerel .unwind.CHECKPOLEFIELD..1.B1_B18
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.63_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DB 1 DUP ( 0H)	; pad
.2.63_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28	DD	0000001d4H,000000000H
.2.63_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.63_2__kmpc_loc_pack.11
.2.63_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	80
	DB	79
	DB	76
	DB	69
	DB	70
	DB	73
	DB	69
	DB	76
	DB	68
	DB	59
	DB	49
	DB	51
	DB	54
	DB	54
	DB	59
	DB	49
	DB	51
	DB	54
	DB	54
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.63_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.63_2__kmpc_loc_pack.19
.2.63_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	67
	DB	72
	DB	69
	DB	67
	DB	75
	DB	80
	DB	79
	DB	76
	DB	69
	DB	70
	DB	73
	DB	69
	DB	76
	DB	68
	DB	59
	DB	49
	DB	51
	DB	54
	DB	54
	DB	59
	DB	49
	DB	52
	DB	48
	DB	51
	DB	59
	DB	59
_DATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  CHECKPOLEFIELD..1
_TEXT	SEGMENT      'CODE'
; -- Begin  INIT_CLOCK
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC INIT_CLOCK
; --- INIT_CLOCK
INIT_CLOCK	PROC 
.B13.1::                        ; Preds .B13.0
                                ; Execution count [0.00e+000]
L49::
                                                          ;549.12
        push      rbp                                           ;549.12
        push      rbx                                           ;549.12
        push      rsi                                           ;549.12
        push      rdi                                           ;549.12
        push      r12                                           ;549.12
        sub       rsp, 192                                      ;549.12
        lea       rbp, QWORD PTR [48+rsp]                       ;549.12
        lea       rcx, QWORD PTR [.2.64_2_kmpc_loc_struct_pack.12] ;549.12
        call      __kmpc_global_thread_num                      ;549.12
                                ; LOE r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.20::                       ; Preds .B13.1
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.64_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;549.12
        mov       edx, eax                                      ;549.12
        test      rcx, rcx                                      ;549.12
        je        .B13.3        ; Prob 50%                      ;549.12
                                ; LOE rcx r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.2::                        ; Preds .B13.20
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [rdx*8]                        ;549.12
        cdqe                                                    ;549.12
        mov       r12, QWORD PTR [rax+rcx]                      ;549.12
        test      r12, r12                                      ;549.12
        jne       .B13.5        ; Prob 50%                      ;549.12
                                ; LOE r12 r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.3::                        ; Preds .B13.2 .B13.20
                                ; Execution count [0.00e+000]
        mov       rbx, rsp                                      ;549.12
        lea       rcx, QWORD PTR [.2.64_2_kmpc_loc_struct_pack.20] ;549.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;549.12
        lea       rax, QWORD PTR [.2.64_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;549.12
        mov       r9, QWORD PTR [.2.64_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28] ;549.12
        mov       QWORD PTR [32+rbx], rax                       ;549.12
        call      __kmpc_threadprivate_cached                   ;549.12
                                ; LOE rax r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.21::                       ; Preds .B13.3
                                ; Execution count [0.00e+000]
        mov       r12, rax                                      ;549.12
                                ; LOE r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.5::                        ; Preds .B13.21 .B13.2
                                ; Execution count [1.00e+000]
        mov       edx, 12                                       ;565.11
        lea       rcx, QWORD PTR [96+rbp]                       ;565.11
        call      SYSGETTIME                                    ;565.11
                                ; LOE r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.6::                        ; Preds .B13.5
                                ; Execution count [1.00e+000]
        mov       rax, QWORD PTR [96+rbp]                       ;565.1
        mov       edx, DWORD PTR [104+rbp]                      ;565.1
        mov       QWORD PTR [112+rbp], rax                      ;565.1
        mov       DWORD PTR [120+rbp], edx                      ;565.1
                                ; LOE r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.7::                        ; Preds .B13.6
                                ; Execution count [1.00e+000]
        mov       edx, 12                                       ;566.58
        lea       rsi, QWORD PTR [128+rbp]                      ;566.58
        mov       rcx, rsi                                      ;566.58
        lea       r8, QWORD PTR [112+rbp]                       ;566.58
        mov       r9, rdx                                       ;566.58
        lea       rbx, QWORD PTR [__STRLITPACK_121]             ;566.56
        mov       QWORD PTR [48+rbp], rbx                       ;566.56
        mov       rdi, rsp                                      ;566.1
        mov       QWORD PTR [56+rbp], 22                        ;566.56
        call      for_trim                                      ;566.58
                                ; LOE rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.8::                        ; Preds .B13.7
                                ; Execution count [1.00e+000]
        movsxd    rbx, eax                                      ;566.58
        mov       QWORD PTR [72+rbp], rbx                       ;566.56
        add       rbx, 22                                       ;566.56
        mov       rax, rbx                                      ;566.56
        mov       QWORD PTR [64+rbp], rsi                       ;566.56
        add       rax, 15                                       ;566.56
        and       rax, -16                                      ;566.56
        call      __chkstk                                      ;566.56
        sub       rsp, rax                                      ;566.56
        lea       rax, QWORD PTR [48+rsp]                       ;566.56
                                ; LOE rax rbx rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.23::                       ; Preds .B13.8
                                ; Execution count [1.00e+000]
        mov       rsi, rax                                      ;566.56
        lea       rcx, QWORD PTR [48+rbp]                       ;566.56
        mov       edx, 2                                        ;566.56
        mov       r8, rsi                                       ;566.56
        mov       r9, rbx                                       ;566.56
        call      for_concat                                    ;566.56
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.9::                        ; Preds .B13.23
                                ; Execution count [1.00e+000]
        mov       r10, rsp                                      ;566.1
        lea       rcx, QWORD PTR [rbp]                          ;566.1
        mov       r8, 012083a4ff03H                             ;566.1
        lea       r9, QWORD PTR [__STRLITPACK_125.0.2]          ;566.1
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;566.1
        mov       QWORD PTR [80+rbp], rbx                       ;566.1
        lea       rbx, QWORD PTR [80+rbp]                       ;566.1
        mov       QWORD PTR [88+rbp], rsi                       ;566.1
        lea       rsi, QWORD PTR [INIT_CLOCK$format_pack.0.2]   ;566.1
        mov       QWORD PTR [rcx], 0                            ;566.1
        mov       QWORD PTR [32+r10], rbx                       ;566.1
        mov       QWORD PTR [40+r10], rsi                       ;566.1
        call      for_write_seq_fmt                             ;566.1
                                ; LOE rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.24::                       ; Preds .B13.9
                                ; Execution count [1.00e+000]
        mov       edx, eax                                      ;566.1
                                ; LOE rdi r12 r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.10::                       ; Preds .B13.24
                                ; Execution count [1.00e+000]
        mov       rax, rdi                                      ;566.1
        mov       rsp, rax                                      ;566.1
                                ; LOE r12 r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.25::                       ; Preds .B13.10
                                ; Execution count [1.00e+000]
        test      edx, edx                                      ;567.9
        je        .B13.15       ; Prob 5%                       ;567.9
                                ; LOE r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.11::                       ; Preds .B13.25
                                ; Execution count [9.50e-001]
        mov       rax, rsp                                      ;569.3
        mov       rcx, r12                                      ;569.3
        mov       edx, 80                                       ;569.3
        lea       r8, QWORD PTR [__STRLITPACK_120]              ;569.3
        mov       r9d, 10                                       ;569.3
        mov       DWORD PTR [464+r12], 7                        ;568.3
        mov       QWORD PTR [32+rax], 0                         ;569.3
        call      for_cpystr                                    ;569.3
                                ; LOE r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.12::                       ; Preds .B13.11
                                ; Execution count [9.50e-001]
        mov       rax, rsp                                      ;570.3
        lea       rcx, QWORD PTR [80+r12]                       ;570.3
        mov       edx, 128                                      ;570.3
        lea       r8, QWORD PTR [__STRLITPACK_119]              ;570.3
        mov       r9d, 30                                       ;570.3
        mov       QWORD PTR [32+rax], 0                         ;570.3
        call      for_cpystr                                    ;570.3
                                ; LOE r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.13::                       ; Preds .B13.12
                                ; Execution count [9.50e-001]
        mov       rdx, rsp                                      ;571.8
        add       r12, 208                                      ;571.8
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_LOG]         ;571.8
        mov       rcx, r12                                      ;571.8
        lea       r8, QWORD PTR [__STRLITPACK_118]              ;571.8
        mov       r9d, 5                                        ;571.8
        mov       QWORD PTR [32+rdx], rax                       ;571.8
        mov       QWORD PTR [40+rdx], 256                       ;571.8
        mov       edx, 128                                      ;571.8
        call      REPORTFILENAME                                ;571.8
                                ; LOE r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.14::                       ; Preds .B13.13 .B13.17
                                ; Execution count [1.00e+000]
        lea       rsp, QWORD PTR [144+rbp]                      ;595.1
        pop       r12                                           ;595.1
        pop       rdi                                           ;595.1
        pop       rsi                                           ;595.1
        pop       rbx                                           ;595.1
        pop       rbp                                           ;595.1
        ret                                                     ;595.1
                                ; LOE
.B13.15::                       ; Preds .B13.25
                                ; Execution count [5.00e-002]: Infreq
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC]    ;577.6
        call      INITRELEASESPEC                               ;577.6
                                ; LOE r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.16::                       ; Preds .B13.15
                                ; Execution count [5.00e-002]: Infreq
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_INSTRELEASELIST] ;582.6
        mov       DWORD PTR [FLAGS_FI_mp_RESTART], 0            ;579.1
        mov       DWORD PTR [NEXTREL_FI_mp_ACTIVESOURCE], -1    ;580.1
        call      INITRELEASESPEC                               ;582.6
                                ; LOE r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.17::                       ; Preds .B13.16
                                ; Execution count [5.00e-002]: Infreq
        xor       eax, eax                                      ;585.1
        mov       QWORD PTR [NEXTREL_FI_mp_INSTRELEASELIST+584], 0 ;583.1
        mov       DWORD PTR [CONT_REL_FI_mp_INITSTATICS], eax   ;585.1
        mov       DWORD PTR [CONT_REL_FI_mp_NUMCOLLECTION], eax ;586.1
        mov       DWORD PTR [CONT_REL_FI_mp_MAXCOLLECTION], eax ;587.1
        mov       DWORD PTR [CONT_REL_FI_mp_NUMDEFINITION], eax ;588.1
        mov       DWORD PTR [CONT_REL_FI_mp_MAXDEFINITION], eax ;589.1
        mov       DWORD PTR [CONT_REL_FI_mp_RUNUPDATES], eax    ;590.1
        jmp       .B13.14       ; Prob 100%                     ;590.1
        ALIGN     16
                                ; LOE r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B13.18::
; mark_end;
INIT_CLOCK ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INIT_CLOCK.B1_B17	DD	889721345
	DD	17629970
	DD	3221618712
	DD	1610838020
	DD	1342255106
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INIT_CLOCK.B1_B17	DD	imagerel .B13.1
	DD	imagerel .B13.18
	DD	imagerel .unwind.INIT_CLOCK.B1_B17
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.64_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DB 1 DUP ( 0H)	; pad
.2.64_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28	DD	0000001d4H,000000000H
.2.64_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.64_2__kmpc_loc_pack.11
.2.64_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	73
	DB	78
	DB	73
	DB	84
	DB	95
	DB	67
	DB	76
	DB	79
	DB	67
	DB	75
	DB	59
	DB	53
	DB	52
	DB	57
	DB	59
	DB	53
	DB	52
	DB	57
	DB	59
	DB	59
	DB 3 DUP ( 0H)	; pad
.2.64_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.64_2__kmpc_loc_pack.19
.2.64_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	73
	DB	78
	DB	73
	DB	84
	DB	95
	DB	67
	DB	76
	DB	79
	DB	67
	DB	75
	DB	59
	DB	53
	DB	52
	DB	57
	DB	59
	DB	53
	DB	57
	DB	53
	DB	59
	DB	59
	DB 3 DUP ( 0H)	; pad
INIT_CLOCK$format_pack.0.2	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_125.0.2	DD	66616
	DB	2
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  INIT_CLOCK
_TEXT	SEGMENT      'CODE'
; -- Begin  INIT_TIME1
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC INIT_TIME1
; --- INIT_TIME1
INIT_TIME1	PROC 
.B14.1::                        ; Preds .B14.0
                                ; Execution count [1.00e+000]
L50::
                                                          ;599.12
        xor       edx, edx                                      ;607.1
        mov       eax, -65535                                   ;608.1
        mov       DWORD PTR [TIME_FI_mp_TSTART], edx            ;607.1
        mov       DWORD PTR [TIME_FI_mp_YEAR_START], eax        ;608.1
        mov       DWORD PTR [TIME_FI_mp_MONTH_START], eax       ;609.1
        mov       DWORD PTR [TIME_FI_mp_DAY_START], eax         ;610.1
        mov       DWORD PTR [FLAGS_FI_mp_LOCAL], edx            ;612.1
        mov       DWORD PTR [TIME_FI_mp_TZONE], 2067830734      ;613.1
        ret                                                     ;616.1
        ALIGN     16
                                ; LOE
.B14.2::
; mark_end;
INIT_TIME1 ENDP
_TEXT	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  INIT_TIME1
_TEXT	SEGMENT      'CODE'
; -- Begin  INIT_TIME2
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC INIT_TIME2
; --- INIT_TIME2
INIT_TIME2	PROC 
.B15.1::                        ; Preds .B15.0
                                ; Execution count [1.00e+000]
L51::
                                                          ;620.12
        mov       eax, -79652914                                ;628.1
        mov       edx, -65535                                   ;630.1
        mov       DWORD PTR [TIME_FI_mp_TEND], eax              ;628.1
        mov       DWORD PTR [TIME_FI_mp_TEND_HR], eax           ;629.1
        mov       DWORD PTR [TIME_FI_mp_YEAR_END], edx          ;630.1
        mov       DWORD PTR [TIME_FI_mp_MONTH_END], edx         ;631.1
        mov       DWORD PTR [TIME_FI_mp_DAY_END], edx           ;632.1
        mov       DWORD PTR [TIME_FI_mp_DT_SAVE], 2067830734    ;634.1
        mov       DWORD PTR [TIME_FI_mp_DELT], 0                ;635.1
        ret                                                     ;638.1
        ALIGN     16
                                ; LOE
.B15.2::
; mark_end;
INIT_TIME2 ENDP
_TEXT	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  INIT_TIME2
_TEXT	SEGMENT      'CODE'
; -- Begin  INITRUNMC
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC INITRUNMC
; --- INITRUNMC
INITRUNMC	PROC 
.B16.1::                        ; Preds .B16.0
                                ; Execution count [0.00e+000]
L52::
                                                          ;1432.12
        push      rbx                                           ;1432.12
        push      rsi                                           ;1432.12
        push      rdi                                           ;1432.12
        push      r12                                           ;1432.12
        push      r13                                           ;1432.12
        sub       rsp, 48                                       ;1432.12
        lea       rcx, QWORD PTR [.2.67_2_kmpc_loc_struct_pack.12] ;1432.12
        call      __kmpc_global_thread_num                      ;1432.12
                                ; LOE rbx rbp rsi r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.36::                       ; Preds .B16.1
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.67_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_cache_0.27] ;1432.12
        mov       edi, eax                                      ;1432.12
        test      rcx, rcx                                      ;1432.12
        je        .B16.3        ; Prob 50%                      ;1432.12
                                ; LOE rcx rbx rbp rsi r13 r14 r15 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.2::                        ; Preds .B16.36
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [rdi*8]                        ;1432.12
        cdqe                                                    ;1432.12
        mov       r12, QWORD PTR [rcx+rax]                      ;1432.12
        test      r12, r12                                      ;1432.12
        jne       .B16.5        ; Prob 50%                      ;1432.12
                                ; LOE rbx rbp rsi r12 r13 r14 r15 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.3::                        ; Preds .B16.36 .B16.2
                                ; Execution count [0.00e+000]
        mov       r10, rsp                                      ;1432.12
        lea       rcx, QWORD PTR [.2.67_2_kmpc_loc_struct_pack.20] ;1432.12
        lea       r8, QWORD PTR [CHEM_FI_CMN]                   ;1432.12
        mov       edx, edi                                      ;1432.12
        mov       r9, QWORD PTR [.2.67_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_size_0.28] ;1432.12
        lea       rax, QWORD PTR [.2.67_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_cache_0.27] ;1432.12
        mov       QWORD PTR [32+r10], rax                       ;1432.12
        call      __kmpc_threadprivate_cached                   ;1432.12
                                ; LOE rax rbx rbp rsi r13 r14 r15 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.37::                       ; Preds .B16.3
                                ; Execution count [0.00e+000]
        mov       r12, rax                                      ;1432.12
                                ; LOE rbx rbp rsi r12 r13 r14 r15 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.5::                        ; Preds .B16.37 .B16.2
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.67_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_1.29] ;1432.12
        test      rcx, rcx                                      ;1432.12
        je        .B16.7        ; Prob 50%                      ;1432.12
                                ; LOE rcx rbx rbp rsi r12 r13 r14 r15 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.6::                        ; Preds .B16.5
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [rdi*8]                        ;1432.12
        cdqe                                                    ;1432.12
        mov       rax, QWORD PTR [rcx+rax]                      ;1432.12
        test      rax, rax                                      ;1432.12
        jne       .B16.9        ; Prob 50%                      ;1432.12
                                ; LOE rax rbx rbp rsi r12 r13 r14 r15 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.7::                        ; Preds .B16.5 .B16.6
                                ; Execution count [0.00e+000]
        mov       r10, rsp                                      ;1432.12
        lea       rcx, QWORD PTR [.2.67_2_kmpc_loc_struct_pack.20] ;1432.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1432.12
        mov       edx, edi                                      ;1432.12
        mov       r9, QWORD PTR [.2.67_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_1.30] ;1432.12
        lea       rax, QWORD PTR [.2.67_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_1.29] ;1432.12
        mov       QWORD PTR [32+r10], rax                       ;1432.12
        call      __kmpc_threadprivate_cached                   ;1432.12
                                ; LOE rax rbx rbp rsi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.9::                        ; Preds .B16.7 .B16.6
                                ; Execution count [1.00e+000]
        movsxd    rdx, DWORD PTR [MATL_FI_mp_MAT_MC]            ;1446.1
        mov       edi, 1                                        ;1446.1
        test      rdx, rdx                                      ;1446.1
        jle       .B16.14       ; Prob 2%                       ;1446.1
                                ; LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.10::                       ; Preds .B16.9
                                ; Execution count [9.79e-001]
        mov       r13, r12                                      ;
        mov       r12, rax                                      ;
        mov       rsi, rdx                                      ;
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.11::                       ; Preds .B16.12 .B16.10
                                ; Execution count [5.39e+000]
        mov       rbx, rdi                                      ;1448.7
        sub       rbx, QWORD PTR [MATL_FI_mp_MAT_MC+72]         ;1448.7
        imul      rbx, QWORD PTR [MATL_FI_mp_MAT_MC+64]         ;1448.7
        mov       rcx, QWORD PTR [MATL_FI_mp_MAT_MC+8]          ;1448.3
        cmp       DWORD PTR [rcx+rbx], 1                        ;1448.23
        je        .B16.15       ; Prob 16%                      ;1448.23
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.12::                       ; Preds .B16.23 .B16.30 .B16.28 .B16.20 .B16.19
                                ;       .B16.11 .B16.16
                                ; Execution count [5.38e+000]
        inc       rdi                                           ;1472.1
        cmp       rdi, rsi                                      ;1472.1
        jle       .B16.11       ; Prob 82%                      ;1472.1
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.14::                       ; Preds .B16.30 .B16.27 .B16.18 .B16.12 .B16.9
                                ;      
                                ; Execution count [1.00e+000]
        add       rsp, 48                                       ;1477.1
        pop       r13                                           ;1477.1
        pop       r12                                           ;1477.1
        pop       rdi                                           ;1477.1
        pop       rsi                                           ;1477.1
        pop       rbx                                           ;1477.1
        ret                                                     ;1477.1
                                ; LOE
.B16.15::                       ; Preds .B16.11
                                ; Execution count [8.62e-001]: Infreq
        mov       rcx, rdi                                      ;1450.5
        sub       rcx, QWORD PTR [MATL_FI_mp_MAT_MC+144]        ;1450.5
        imul      rcx, QWORD PTR [MATL_FI_mp_MAT_MC+136]        ;1450.5
        imul      r10, QWORD PTR [CHEM_FI_mp_CHEMMC+64], -15120 ;1452.13
        mov       rbx, QWORD PTR [MATL_FI_mp_MAT_MC+80]         ;1450.5
        mov       r11, QWORD PTR [CHEM_FI_mp_CHEMMC+80]         ;1452.13
        mov       r9, QWORD PTR [CHEM_FI_mp_CHEMMC+88]          ;1452.13
        movsxd    r8, DWORD PTR [rbx+rcx]                       ;1450.5
        imul      rbx, r8, 15120                                ;1452.13
        imul      r9, r11                                       ;1452.13
        mov       rcx, QWORD PTR [CHEM_FI_mp_CHEMMC]            ;1452.5
        add       r11, r10                                      ;1452.13
        sub       rcx, r9                                       ;1452.13
        add       rcx, r11                                      ;1452.5
        add       rcx, rbx                                      ;1452.13
        mov       QWORD PTR [568+r13], rcx                      ;1452.5
        test      BYTE PTR [1536+rcx], 1                        ;1454.9
        jne       .B16.26       ; Prob 3%                       ;1454.9
                                ; LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.16::                       ; Preds .B16.15
                                ; Execution count [8.33e-001]: Infreq
        test      BYTE PTR [2220+rcx], 1                        ;1461.14
        je        .B16.12       ; Prob 96%                      ;1461.14
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.17::                       ; Preds .B16.16
                                ; Execution count [2.82e-002]: Infreq
        call      INITCHEMAMB                                   ;1462.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.18::                       ; Preds .B16.17
                                ; Execution count [2.82e-002]: Infreq
        cmp       DWORD PTR [464+r12], 0                        ;1463.18
        jne       .B16.14       ; Prob 20%                      ;1463.18
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.19::                       ; Preds .B16.18
                                ; Execution count [2.26e-002]: Infreq
        movsxd    rcx, DWORD PTR [ERROR_FI_mp_NTHREADS]         ;1464.7
        cmp       rcx, 1                                        ;1464.20
        jle       .B16.12       ; Prob 16%                      ;1464.20
                                ; LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.20::                       ; Preds .B16.19
                                ; Execution count [1.90e-002]: Infreq
        mov       eax, 2                                        ;1465.9
        cmp       rcx, 2                                        ;1465.9
        jl        .B16.12       ; Prob 10%                      ;1465.9
                                ; LOE rax rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.22::                       ; Preds .B16.20 .B16.23
                                ; Execution count [9.48e-002]: Infreq
        imul      r8, QWORD PTR [CHEM_FI_mp_CHEMMC+64], -15120  ;1466.11
        mov       rdx, QWORD PTR [CHEM_FI_mp_CHEMMC+88]         ;1466.11
        neg       rdx                                           ;1466.11
        add       rdx, rax                                      ;1466.11
        imul      rdx, QWORD PTR [CHEM_FI_mp_CHEMMC+80]         ;1466.11
        add       r8, QWORD PTR [CHEM_FI_mp_CHEMMC]             ;1466.11
        lea       r9, QWORD PTR [2488+r8+rbx]                   ;1466.11
        mov       r8d, 896                                      ;1466.11
        add       rdx, r9                                       ;1466.11
        mov       r9, QWORD PTR [568+r13]                       ;1466.11
        movups    xmm0, XMMWORD PTR [3384+r9]                   ;1466.11
        movups    XMMWORD PTR [896+rdx], xmm0                   ;1466.11
        movups    xmm1, XMMWORD PTR [3400+r9]                   ;1466.11
        movups    XMMWORD PTR [912+rdx], xmm1                   ;1466.11
        movups    xmm2, XMMWORD PTR [3416+r9]                   ;1466.11
        movups    XMMWORD PTR [928+rdx], xmm2                   ;1466.11
        mov       r10, QWORD PTR [3432+r9]                      ;1466.11
        mov       QWORD PTR [944+rdx], r10                      ;1466.11
                                ; LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.35::                       ; Preds .B16.35 .B16.22
                                ; Execution count [1.33e+000]: Infreq
        movups    xmm0, XMMWORD PTR [2472+r9+r8]                ;1466.11
        movups    XMMWORD PTR [-16+rdx+r8], xmm0                ;1466.11
        movups    xmm1, XMMWORD PTR [2456+r9+r8]                ;1466.11
        movups    XMMWORD PTR [-32+rdx+r8], xmm1                ;1466.11
        movups    xmm2, XMMWORD PTR [2440+r9+r8]                ;1466.11
        movups    XMMWORD PTR [-48+rdx+r8], xmm2                ;1466.11
        movups    xmm3, XMMWORD PTR [2424+r9+r8]                ;1466.11
        movups    XMMWORD PTR [-64+rdx+r8], xmm3                ;1466.11
        sub       r8, 64                                        ;1466.11
        jne       .B16.35       ; Prob 92%                      ;1466.11
                                ; LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.23::                       ; Preds .B16.35
                                ; Execution count [9.48e-002]: Infreq
        inc       rax                                           ;1467.9
        cmp       rax, rcx                                      ;1467.9
        jle       .B16.22       ; Prob 82%                      ;1467.9
        jmp       .B16.12       ; Prob 100%                     ;1467.9
                                ; LOE rax rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.26::                       ; Preds .B16.15
                                ; Execution count [2.92e-002]: Infreq
        lea       rcx, QWORD PTR [__NLITPACK_11.0.14]           ;1455.12
        call      INITCHEMSTEPAMB                               ;1455.12
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.27::                       ; Preds .B16.26
                                ; Execution count [2.92e-002]: Infreq
        cmp       DWORD PTR [464+r12], 0                        ;1456.18
        jne       .B16.14       ; Prob 20%                      ;1456.18
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.28::                       ; Preds .B16.27
                                ; Execution count [2.34e-002]: Infreq
        mov       rcx, QWORD PTR [568+r13]                      ;1457.7
        test      BYTE PTR [1544+rcx], 1                        ;1457.11
        je        .B16.12       ; Prob 96%                      ;1457.11
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.29::                       ; Preds .B16.28
                                ; Execution count [7.92e-004]: Infreq
        call      INITCHEMSFCFLUX                               ;1458.14
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.30::                       ; Preds .B16.29
                                ; Execution count [7.92e-004]: Infreq
        cmp       DWORD PTR [464+r12], 0                        ;1459.20
        jne       .B16.14       ; Prob 20%                      ;1459.20
        jmp       .B16.12       ; Prob 100%                     ;1459.20
        ALIGN     16
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B16.33::
; mark_end;
INITRUNMC ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITRUNMC.B1_B30	DD	396033
	DD	3490140683
	DD	1879293957
	DD	805396482
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITRUNMC.B1_B30	DD	imagerel .B16.1
	DD	imagerel .B16.33
	DD	imagerel .unwind.INITRUNMC.B1_B30
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.67_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_cache_0.27	DD 2 DUP (?)	; pad
.2.67_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_1.29	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DD 1 DUP (0H)	; pad
.2.67_2_kmpv_INITRUNMC$BLK.CHEM_FI_mp_CHEM_V$2430_size_0.28	DD	000000510H,000000000H
.2.67_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_1.30	DD	0000001d4H,000000000H
.2.67_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.67_2__kmpc_loc_pack.11
.2.67_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	73
	DB	78
	DB	73
	DB	84
	DB	82
	DB	85
	DB	78
	DB	77
	DB	67
	DB	59
	DB	49
	DB	52
	DB	51
	DB	50
	DB	59
	DB	49
	DB	52
	DB	51
	DB	50
	DB	59
	DB	59
	DB 2 DUP ( 0H)	; pad
.2.67_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.67_2__kmpc_loc_pack.19
.2.67_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	73
	DB	78
	DB	73
	DB	84
	DB	82
	DB	85
	DB	78
	DB	77
	DB	67
	DB	59
	DB	49
	DB	52
	DB	51
	DB	50
	DB	59
	DB	49
	DB	52
	DB	55
	DB	55
	DB	59
	DB	59
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
	DB 3 DUP ( 0H)	; pad
__NLITPACK_11.0.14	DD	0
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  INITRUNMC
_TEXT	SEGMENT      'CODE'
; -- Begin  INITADJOINTMAT
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC INITADJOINTMAT
; --- INITADJOINTMAT
INITADJOINTMAT	PROC 
.B17.1::                        ; Preds .B17.0
                                ; Execution count [0.00e+000]
L53::
                                                          ;950.12
        push      rbx                                           ;950.12
        push      rsi                                           ;950.12
        push      rdi                                           ;950.12
        push      r12                                           ;950.12
        sub       rsp, 888                                      ;950.12
        lea       rcx, QWORD PTR [.2.68_2_kmpc_loc_struct_pack.12] ;950.12
        call      __kmpc_global_thread_num                      ;950.12
                                ; LOE rbp r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.61::                       ; Preds .B17.1
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.68_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;950.12
        mov       edx, eax                                      ;950.12
        test      rcx, rcx                                      ;950.12
        je        .B17.3        ; Prob 50%                      ;950.12
                                ; LOE rcx rbp r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.2::                        ; Preds .B17.61
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [rdx*8]                        ;950.12
        cdqe                                                    ;950.12
        mov       r12, QWORD PTR [rcx+rax]                      ;950.12
        test      r12, r12                                      ;950.12
        jne       .B17.5        ; Prob 50%                      ;950.12
                                ; LOE rbp r12 r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.3::                        ; Preds .B17.61 .B17.2
                                ; Execution count [0.00e+000]
        mov       rbx, rsp                                      ;950.12
        lea       rcx, QWORD PTR [.2.68_2_kmpc_loc_struct_pack.20] ;950.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;950.12
        lea       rax, QWORD PTR [.2.68_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27] ;950.12
        mov       r9, QWORD PTR [.2.68_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28] ;950.12
        mov       QWORD PTR [32+rbx], rax                       ;950.12
        call      __kmpc_threadprivate_cached                   ;950.12
                                ; LOE rax rbp r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.62::                       ; Preds .B17.3
                                ; Execution count [0.00e+000]
        mov       r12, rax                                      ;950.12
                                ; LOE rbp r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.5::                        ; Preds .B17.62 .B17.2
                                ; Execution count [1.00e+000]
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;967.1
        pxor      xmm1, xmm1                                    ;967.7
        comiss    xmm0, xmm1                                    ;967.7
        jbe       .B17.13       ; Prob 50%                      ;967.7
                                ; LOE rbp r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.6::                        ; Preds .B17.5
                                ; Execution count [5.00e-001]
        movsxd    rdi, DWORD PTR [MATL_FI_mp_NTYPM]             ;969.3
        mov       esi, 1                                        ;969.3
        pxor      xmm0, xmm0                                    ;968.3
        mov       r12d, 32                                      ;969.3
        movss     DWORD PTR [ADJOINT_FI_mp_TFIRSTTRIGGER], xmm0 ;968.3
        mov       ebx, 284                                      ;969.3
        test      rdi, rdi                                      ;969.3
        jle       .B17.12       ; Prob 2%                       ;969.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.8::                        ; Preds .B17.6 .B17.11
                                ; Execution count [2.72e+000]
        imul      rcx, QWORD PTR [MATL_FI_mp_MATERIAL+64], -284 ;970.14
        add       rcx, QWORD PTR [MATL_FI_mp_MATERIAL]          ;970.14
        add       rcx, rbx                                      ;970.14
        call      ISNULLSENSOR                                  ;970.14
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.9::                        ; Preds .B17.8
                                ; Execution count [2.72e+000]
        test      al, 1                                         ;970.14
        jne       .B17.11       ; Prob 39%                      ;970.14
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.10::                       ; Preds .B17.9
                                ; Execution count [1.63e+000]
        mov       rax, QWORD PTR [ADJOINT_FI_mp_ADJMAT+64]      ;971.7
        shl       rax, 5                                        ;971.41
        neg       rax                                           ;971.41
        add       rax, QWORD PTR [ADJOINT_FI_mp_ADJMAT]         ;971.7
        movss     xmm0, DWORD PTR [ADJOINT_FI_mp_TFIRSTTRIGGER] ;971.7
        maxss     xmm0, DWORD PTR [12+rax+r12]                  ;971.7
        movss     DWORD PTR [ADJOINT_FI_mp_TFIRSTTRIGGER], xmm0 ;971.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.11::                       ; Preds .B17.9 .B17.10
                                ; Execution count [2.72e+000]
        inc       rsi                                           ;973.3
        add       r12, 32                                       ;973.3
        add       rbx, 284                                      ;973.3
        cmp       rsi, rdi                                      ;973.3
        jle       .B17.8        ; Prob 82%                      ;973.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.12::                       ; Preds .B17.6 .B17.11
                                ; Execution count [4.90e-001]
        xor       esi, esi                                      ;981.1
        jmp       .B17.29       ; Prob 100%                     ;981.1
                                ; LOE rbp rsi r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.13::                       ; Preds .B17.5
                                ; Execution count [5.00e-001]
        mov       rbx, QWORD PTR [ADJOINT_FI_mp_ADJMAT+24]      ;979.5
        mov       esi, ebx                                      ;979.5
        test      esi, 1                                        ;979.5
        je        .B17.16       ; Prob 60%                      ;979.5
                                ; LOE rbx rbp r12 r13 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.14::                       ; Preds .B17.13
                                ; Execution count [1.69e-002]
        mov       rax, rbx                                      ;979.24
        and       esi, 1                                        ;979.24
        and       rax, 2                                        ;979.24
        add       esi, esi                                      ;979.24
        shr       rax, 1                                        ;979.24
        mov       rdi, rbx                                      ;979.24
        and       rdi, -256                                     ;979.24
        lea       edx, DWORD PTR [1+rax*4]                      ;979.24
        or        edx, esi                                      ;979.24
        mov       rsi, rbx                                      ;979.24
        and       rsi, -2048                                    ;979.24
        mov       r8, 0f000000000H                              ;979.24
        shr       rsi, 11                                       ;979.24
        and       r8, rbx                                       ;979.24
        shr       rdi, 8                                        ;979.24
        and       esi, 1                                        ;979.24
        shl       esi, 8                                        ;979.24
        and       edi, 1                                        ;979.24
        shl       edi, 21                                       ;979.24
        or        edx, esi                                      ;979.24
        shr       r8, 36                                        ;979.24
        or        edx, edi                                      ;979.24
        and       edx, -31457281                                ;979.24
        shl       r8d, 21                                       ;979.24
        or        edx, r8d                                      ;979.24
        add       edx, 262144                                   ;979.24
        mov       rcx, QWORD PTR [ADJOINT_FI_mp_ADJMAT]         ;979.24
        call      for_dealloc_allocatable                       ;979.24
                                ; LOE rbx rbp r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.15::                       ; Preds .B17.14
                                ; Execution count [1.69e-002]
        mov       rax, 0ffffff0ffffff7feH                       ;979.24
        and       rax, rbx                                      ;979.24
        mov       QWORD PTR [ADJOINT_FI_mp_ADJMAT], 0           ;979.24
        mov       QWORD PTR [ADJOINT_FI_mp_ADJMAT+24], rax      ;979.24
                                ; LOE rbp r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.16::                       ; Preds .B17.13 .B17.15
                                ; Execution count [5.00e-001]
        movsxd    r8, DWORD PTR [MATL_FI_mp_NTYPM]              ;981.1
        xor       esi, esi                                      ;981.1
        test      r8, r8                                        ;981.1
        lea       rcx, QWORD PTR [872+rsp]                      ;981.1
        cmovle    r8, rsi                                       ;981.1
        mov       edx, 2                                        ;981.1
        mov       r9d, 32                                       ;981.1
        call      for_check_mult_overflow64                     ;981.1
                                ; LOE rbp rsi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.64::                       ; Preds .B17.16
                                ; Execution count [5.00e-001]
        mov       edx, eax                                      ;981.1
                                ; LOE rbp rsi r12 r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.17::                       ; Preds .B17.64
                                ; Execution count [5.00e-001]
        mov       r9, 0fffffff00fffffffH                        ;981.1
        and       edx, 1                                        ;981.1
        and       r9, QWORD PTR [ADJOINT_FI_mp_ADJMAT+24]       ;981.1
        mov       rdi, 0f000000000H                             ;981.1
        add       r9, 1073741824                                ;981.1
        mov       eax, r9d                                      ;981.1
        mov       rbx, r9                                       ;981.1
        and       eax, 1                                        ;981.1
        and       rbx, -256                                     ;981.1
        shr       rbx, 8                                        ;981.1
        shl       edx, 4                                        ;981.1
        and       ebx, 1                                        ;981.1
        mov       QWORD PTR [ADJOINT_FI_mp_ADJMAT+24], r9       ;981.1
        lea       r8d, DWORD PTR [1+rax+rax]                    ;981.1
        and       r9, rdi                                       ;981.1
        or        r8d, edx                                      ;981.1
        shl       ebx, 21                                       ;981.1
        lea       rdx, QWORD PTR [ADJOINT_FI_mp_ADJMAT]         ;981.1
        shr       r9, 36                                        ;981.1
        or        r8d, ebx                                      ;981.1
        and       r8d, -31457281                                ;981.1
        shl       r9d, 21                                       ;981.1
        or        r8d, r9d                                      ;981.1
        add       r8d, 262144                                   ;981.1
        mov       rcx, QWORD PTR [872+rsp]                      ;981.1
        call      for_alloc_allocatable                         ;981.1
                                ; LOE rax rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.65::                       ; Preds .B17.17
                                ; Execution count [5.00e-001]
        mov       rbx, rax                                      ;981.1
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.18::                       ; Preds .B17.65
                                ; Execution count [5.00e-001]
        test      rbx, rbx                                      ;981.1
        jne       .B17.20       ; Prob 50%                      ;981.1
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.19::                       ; Preds .B17.18
                                ; Execution count [2.50e-001]
        mov       r10, QWORD PTR [ADJOINT_FI_mp_ADJMAT+24]      ;981.1
        mov       r11, r10                                      ;981.1
        and       r11, -256                                     ;981.1
        shr       r11, 8                                        ;981.1
        and       r10, rdi                                      ;981.1
        shl       r11, 63                                       ;981.1
        mov       rdi, 0ffffff0fffffffffH                       ;981.1
        shr       r11, 55                                       ;981.1
        mov       eax, 32                                       ;981.1
        shr       r10, 36                                       ;981.1
        add       r11, 133                                      ;981.1
        movsxd    r8, DWORD PTR [MATL_FI_mp_NTYPM]              ;981.1
        mov       edx, 1                                        ;981.1
        test      r8, r8                                        ;981.1
        lea       rcx, QWORD PTR [864+rsp]                      ;981.1
        mov       QWORD PTR [ADJOINT_FI_mp_ADJMAT+32], rdx      ;981.1
        cmovle    r8, rsi                                       ;981.1
        shl       r10, 60                                       ;981.1
        and       r11, rdi                                      ;981.1
        shr       r10, 24                                       ;981.1
        mov       r9, rax                                       ;981.1
        mov       QWORD PTR [ADJOINT_FI_mp_ADJMAT+64], rdx      ;981.1
        mov       edx, 2                                        ;981.1
        or        r11, r10                                      ;981.1
        mov       QWORD PTR [ADJOINT_FI_mp_ADJMAT+24], r11      ;981.1
        mov       QWORD PTR [ADJOINT_FI_mp_ADJMAT+8], rax       ;981.1
        mov       QWORD PTR [ADJOINT_FI_mp_ADJMAT+16], rsi      ;981.1
        mov       QWORD PTR [ADJOINT_FI_mp_ADJMAT+48], r8       ;981.1
        mov       QWORD PTR [ADJOINT_FI_mp_ADJMAT+56], rax      ;981.1
        call      for_check_mult_overflow64                     ;981.1
                                ; LOE rbx rbp rsi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.20::                       ; Preds .B17.19 .B17.18
                                ; Execution count [5.00e-001]
        test      ebx, ebx                                      ;982.9
        je        .B17.23       ; Prob 50%                      ;982.9
                                ; LOE rbp rsi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.21::                       ; Preds .B17.20
                                ; Execution count [2.50e-001]
        mov       rax, rsp                                      ;984.3
        lea       rcx, QWORD PTR [80+r12]                       ;984.3
        mov       edx, 128                                      ;984.3
        lea       r8, QWORD PTR [__STRLITPACK_218]              ;984.3
        mov       r9d, 43                                       ;984.3
        mov       DWORD PTR [384+rcx], 99                       ;983.3
        mov       QWORD PTR [32+rax], 0                         ;984.3
        call      for_cpystr                                    ;984.3
                                ; LOE rbp rsi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.22::                       ; Preds .B17.21
                                ; Execution count [2.50e-001]
        mov       rax, rsp                                      ;985.3
        mov       rcx, r12                                      ;985.3
        mov       edx, 80                                       ;985.3
        lea       r8, QWORD PTR [__STRLITPACK_217]              ;985.3
        mov       r9d, 14                                       ;985.3
        mov       QWORD PTR [32+rax], 0                         ;985.3
        call      for_cpystr                                    ;985.3
        jmp       .B17.29       ; Prob 100%                     ;985.3
                                ; LOE rbp rsi r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.23::                       ; Preds .B17.20
                                ; Execution count [2.50e-001]
        mov       r11, rsp                                      ;991.1
        lea       rcx, QWORD PTR [816+rsp]                      ;991.1
        mov       r8, 012083a4ff03H                             ;991.1
        lea       r9, QWORD PTR [__STRLITPACK_219.0.9]          ;991.1
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_SCN]          ;991.1
        lea       rdi, QWORD PTR [FILES_FI_mp_FILE_SCN]         ;991.1
        lea       rax, QWORD PTR [__STRLITPACK_216]             ;991.1
        lea       rbx, QWORD PTR [__STRLITPACK_215]             ;991.1
        mov       QWORD PTR [rcx], 0                            ;991.1
        lea       r10, QWORD PTR [736+rsp]                      ;991.1
        mov       QWORD PTR [-80+rcx], 256                      ;991.1
        mov       QWORD PTR [-72+rcx], rdi                      ;991.1
        mov       QWORD PTR [-64+rcx], 3                        ;991.1
        mov       QWORD PTR [-56+rcx], rax                      ;991.1
        mov       QWORD PTR [-48+rcx], 4                        ;991.1
        mov       QWORD PTR [-40+rcx], rbx                      ;991.1
        mov       QWORD PTR [32+r11], r10                       ;991.1
        call      for_open                                      ;991.1
                                ; LOE rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.24::                       ; Preds .B17.23
                                ; Execution count [2.50e-001]
        test      eax, eax                                      ;992.9
        je        .B17.31       ; Prob 5%                       ;992.9
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.25::                       ; Preds .B17.24
                                ; Execution count [2.37e-001]
        mov       rax, rsp                                      ;994.3
        mov       rcx, r12                                      ;994.3
        mov       edx, 80                                       ;994.3
        lea       r8, QWORD PTR [__STRLITPACK_214]              ;994.3
        mov       r9d, 14                                       ;994.3
        mov       DWORD PTR [464+r12], 4                        ;993.3
        mov       QWORD PTR [32+rax], 0                         ;994.3
        call      for_cpystr                                    ;994.3
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.26::                       ; Preds .B17.25
                                ; Execution count [2.37e-001]
        mov       rax, rsp                                      ;995.3
        lea       rcx, QWORD PTR [80+r12]                       ;995.3
        mov       edx, 128                                      ;995.3
        lea       r8, QWORD PTR [__STRLITPACK_213]              ;995.3
        mov       r9d, 49                                       ;995.3
        mov       QWORD PTR [32+rax], 0                         ;995.3
        call      for_cpystr                                    ;995.3
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.27::                       ; Preds .B17.26
                                ; Execution count [2.37e-001]
        mov       rax, rsp                                      ;996.8
        lea       rcx, QWORD PTR [208+r12]                      ;996.8
        mov       edx, 128                                      ;996.8
        lea       r8, QWORD PTR [__STRLITPACK_212]              ;996.8
        mov       r9d, 5                                        ;996.8
        mov       QWORD PTR [32+rax], rdi                       ;996.8
        mov       QWORD PTR [40+rax], 256                       ;996.8
        call      REPORTFILENAME                                ;996.8
                                ; LOE rbp rsi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.28::                       ; Preds .B17.27
                                ; Execution count [2.37e-001]
        mov       rax, rsp                                      ;997.3
        add       r12, 336                                      ;997.3
        mov       rcx, r12                                      ;997.3
        mov       edx, 128                                      ;997.3
        lea       r8, QWORD PTR [__STRLITPACK_211]              ;997.3
        mov       r9d, 21                                       ;997.3
        mov       QWORD PTR [32+rax], 0                         ;997.3
        call      for_cpystr                                    ;997.3
                                ; LOE rbp rsi r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.29::                       ; Preds .B17.22 .B17.28 .B17.57 .B17.51 .B17.12
                                ;       .B17.53 .B17.58
                                ; Execution count [1.00e+000]
        mov       rax, rsp                                      ;1058.7
        lea       rcx, QWORD PTR [816+rsp]                      ;1058.7
        mov       r8, 012083a4ff03H                             ;1058.7
        lea       r9, QWORD PTR [__STRLITPACK_220.0.9]          ;1058.7
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_SCN]          ;1058.7
        mov       DWORD PTR [NEXTREL_FI_mp_ACTIVESOURCE], -1    ;1056.1
        mov       QWORD PTR [rcx], rsi                          ;1058.7
        mov       QWORD PTR [32+rax], rsi                       ;1058.7
        call      for_close                                     ;1058.7
                                ; LOE rbp r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.30::                       ; Preds .B17.29
                                ; Execution count [1.00e+000]
        add       rsp, 888                                      ;1061.1
        pop       r12                                           ;1061.1
        pop       rdi                                           ;1061.1
        pop       rsi                                           ;1061.1
        pop       rbx                                           ;1061.1
        ret                                                     ;1061.1
                                ; LOE
.B17.31::                       ; Preds .B17.24
                                ; Execution count [1.25e-002]: Infreq
        xor       ebx, ebx                                      ;1001.1
        lea       rcx, QWORD PTR [80+rsp]                       ;1005.6
        pxor      xmm0, xmm0                                    ;1003.1
        movss     DWORD PTR [ADJOINT_FI_mp_TFIRSTTRIGGER], xmm0 ;1003.1
        call      INITRELEASESPEC                               ;1005.6
        nop                                                     ;1005.6
                                ; LOE rbp rsi rdi r12 r13 r14 r15 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.32::                       ; Preds .B17.31
                                ; Execution count [1.25e-002]: Infreq
        movss     xmm0, DWORD PTR [_2il0floatpacket.1]          ;1011.28
        mov       eax, -79652914                                ;1034.3
        movups    XMMWORD PTR [688+rsp], xmm15                  ;1034.3[spill]
        movaps    xmm15, xmm0                                   ;1034.3
        mov       QWORD PTR [664+rsp], r13                      ;1034.3[spill]
        mov       QWORD PTR [704+rsp], r14                      ;1034.3[spill]
        mov       QWORD PTR [712+rsp], r15                      ;1034.3[spill]
        mov       r15d, eax                                     ;1034.3
        mov       QWORD PTR [720+rsp], rbp                      ;1034.3[spill]
                                ; LOE rsi rdi r12 ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.33::                       ; Preds .B17.45 .B17.46 .B17.32
                                ; Execution count [2.56e-002]: Infreq
        lea       rcx, QWORD PTR [FILES_FI_mp_LUN_SCN]          ;1008.8
        mov       rdx, rdi                                      ;1008.8
        mov       r8d, 256                                      ;1008.8
        lea       r9, QWORD PTR [80+rsp]                        ;1008.8
        call      GET_SCN                                       ;1008.8
                                ; LOE rsi rdi r12 ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.34::                       ; Preds .B17.33
                                ; Execution count [2.56e-002]: Infreq
        cmp       DWORD PTR [464+r12], 0                        ;1009.14
        jne       .B17.58       ; Prob 20%                      ;1009.14
                                ; LOE rsi rdi r12 ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.35::                       ; Preds .B17.34
                                ; Execution count [2.05e-002]: Infreq
        movss     xmm1, DWORD PTR [92+rsp]                      ;1011.3
        ucomiss   xmm1, xmm15                                   ;1011.28
        jp        .B17.36       ; Prob 0%                       ;1011.28
        je        .B17.53       ; Prob 20%                      ;1011.28
                                ; LOE rsi rdi r12 ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.36::                       ; Preds .B17.35
                                ; Execution count [1.64e-002]: Infreq
        movsxd    rax, DWORD PTR [MATL_FI_mp_NTYPM]             ;1014.3
        mov       r14, rsi                                      ;1013.3
        mov       ebp, 1                                        ;1014.3
        mov       r13d, 284                                     ;1014.3
        test      rax, rax                                      ;1014.3
        jle       .B17.47       ; Prob 2%                       ;1014.3
                                ; LOE rax rbp rsi rdi r12 r13 r14 ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.37::                       ; Preds .B17.36
                                ; Execution count [1.61e-002]: Infreq
        mov       QWORD PTR [48+rsp], r12                       ;[spill]
        mov       r12, rax                                      ;
                                ; LOE rbp rdi r12 r13 r14 ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.38::                       ; Preds .B17.69 .B17.37
                                ; Execution count [8.92e-002]: Infreq
        mov       edx, 16                                       ;1015.9
        lea       rcx, QWORD PTR [784+rsp]                      ;1015.9
        mov       r9, rdx                                       ;1015.9
        lea       r8, QWORD PTR [400+rsp]                       ;1015.9
        call      for_trim                                      ;1015.9
                                ; LOE rbp rdi r12 r13 r14 eax ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.67::                       ; Preds .B17.38
                                ; Execution count [8.92e-002]: Infreq
        mov       esi, eax                                      ;1015.9
                                ; LOE rbp rdi r12 r13 r14 ebx esi r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.39::                       ; Preds .B17.67
                                ; Execution count [8.92e-002]: Infreq
        imul      r11, QWORD PTR [MATL_FI_mp_MATERIAL+64], -284 ;1015.43
        mov       r10, QWORD PTR [MATL_FI_mp_MATERIAL]          ;1015.43
        mov       edx, 16                                       ;1015.43
        mov       r9, rdx                                       ;1015.43
        lea       rcx, QWORD PTR [800+rsp]                      ;1015.43
        lea       r8, QWORD PTR [108+r10+r11]                   ;1015.43
        add       r8, r13                                       ;1015.43
        call      for_trim                                      ;1015.43
                                ; LOE rbp rdi r12 r13 r14 eax ebx esi r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.40::                       ; Preds .B17.39
                                ; Execution count [8.92e-002]: Infreq
        mov       r10, rsp                                      ;1015.40
        lea       rcx, QWORD PTR [784+rsp]                      ;1015.40
        movsxd    rsi, esi                                      ;1015.40
        lea       r8, QWORD PTR [800+rsp]                       ;1015.40
        movsxd    r9, eax                                       ;1015.40
        mov       rdx, rsi                                      ;1015.40
        mov       QWORD PTR [32+r10], 2                         ;1015.40
        call      for_cpstr                                     ;1015.40
                                ; LOE rax rbp rdi r12 r13 r14 ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.69::                       ; Preds .B17.40
                                ; Execution count [8.92e-002]: Infreq
        test      eax, eax                                      ;1015.67
        movsxd    rcx, ebp                                      ;1015.67
        cmovne    r14, rcx                                      ;1015.67
        inc       rbp                                           ;1016.3
        add       r13, 284                                      ;1016.3
        cmp       rbp, r12                                      ;1016.3
        jle       .B17.38       ; Prob 82%                      ;1016.3
                                ; LOE rbp rdi r12 r13 r14 ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.41::                       ; Preds .B17.69
                                ; Execution count [1.61e-002]: Infreq
        mov       r12, QWORD PTR [48+rsp]                       ;[spill]
        xor       esi, esi                                      ;
        test      r14, r14                                      ;1018.12
        je        .B17.47       ; Prob 20%                      ;1018.12
                                ; LOE rsi rdi r12 r14 ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.42::                       ; Preds .B17.41
                                ; Execution count [1.31e-002]: Infreq
        lea       rcx, QWORD PTR [80+rsp]                       ;1026.8
        lea       rdx, QWORD PTR [728+rsp]                      ;1026.8
        call      GETRELEASEDURATION                            ;1026.8
                                ; LOE rsi rdi r12 r14 ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.43::                       ; Preds .B17.42
                                ; Execution count [1.31e-002]: Infreq
        lea       rcx, QWORD PTR [80+rsp]                       ;1027.8
        lea       rdx, QWORD PTR [732+rsp]                      ;1027.8
        call      GETRELEASEMASS                                ;1027.8
                                ; LOE rsi rdi r12 r14 ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.44::                       ; Preds .B17.43
                                ; Execution count [1.31e-002]: Infreq
        mov       r13, QWORD PTR [ADJOINT_FI_mp_ADJMAT+64]      ;1028.23
        inc       ebx                                           ;1037.3
        neg       r13                                           ;1028.3
        add       r13, r14                                      ;1028.3
        shl       r13, 5                                        ;1028.3
        mov       r11, QWORD PTR [ADJOINT_FI_mp_ADJMAT]         ;1028.23
        mov       ebp, DWORD PTR [112+rsp]                      ;1030.3
        movsd     xmm1, QWORD PTR [96+rsp]                      ;1028.3
        mov       DWORD PTR [8+r11+r13], ebp                    ;1030.3
        mov       rbp, QWORD PTR [MATL_FI_mp_MATERIAL+64]       ;1039.12
        neg       rbp                                           ;1039.12
        add       rbp, r14                                      ;1039.12
        imul      rcx, rbp, 284                                 ;1039.12
        cvtsd2ss  xmm1, xmm1                                    ;1028.3
        movsd     xmm2, QWORD PTR [104+rsp]                     ;1029.3
        cvtsd2ss  xmm2, xmm2                                    ;1029.3
        mov       r8d, DWORD PTR [92+rsp]                       ;1031.3
        mov       r9d, DWORD PTR [728+rsp]                      ;1032.3
        mov       r10d, DWORD PTR [732+rsp]                     ;1033.3
        add       rcx, QWORD PTR [MATL_FI_mp_MATERIAL]          ;1039.12
        movss     DWORD PTR [r11+r13], xmm1                     ;1028.3
        movss     DWORD PTR [4+r11+r13], xmm2                   ;1029.3
        mov       DWORD PTR [12+r11+r13], r8d                   ;1031.3
        mov       DWORD PTR [16+r11+r13], r9d                   ;1032.3
        mov       DWORD PTR [20+r11+r13], r10d                  ;1033.3
        mov       DWORD PTR [24+r11+r13], r15d                  ;1034.3
        mov       DWORD PTR [28+r11+r13], r15d                  ;1035.3
        call      ISNULLSENSOR                                  ;1039.12
                                ; LOE rsi rdi r12 eax ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.45::                       ; Preds .B17.44
                                ; Execution count [1.31e-002]: Infreq
        test      al, 1                                         ;1039.12
        jne       .B17.33       ; Prob 18%                      ;1039.12
                                ; LOE rsi rdi r12 ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.46::                       ; Preds .B17.45
                                ; Execution count [1.08e-002]: Infreq
        movss     xmm1, DWORD PTR [ADJOINT_FI_mp_TFIRSTTRIGGER] ;1040.5
        maxss     xmm1, DWORD PTR [92+rsp]                      ;1040.5
        movss     DWORD PTR [ADJOINT_FI_mp_TFIRSTTRIGGER], xmm1 ;1040.5
        jmp       .B17.33       ; Prob 100%                     ;1040.5
                                ; LOE rsi rdi r12 ebx r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.47::                       ; Preds .B17.36 .B17.41
                                ; Execution count [3.21e-003]: Infreq
        movups    xmm15, XMMWORD PTR [688+rsp]                  ;[spill]
        mov       r13, QWORD PTR [664+rsp]                      ;[spill]
        mov       r14, QWORD PTR [704+rsp]                      ;[spill]
        mov       r15, QWORD PTR [712+rsp]                      ;[spill]
        mov       rbp, QWORD PTR [720+rsp]                      ;[spill]
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.48::                       ; Preds .B17.47
                                ; Execution count [3.28e-003]: Infreq
        mov       rax, rsp                                      ;1020.5
        mov       rcx, r12                                      ;1020.5
        mov       edx, 80                                       ;1020.5
        lea       r8, QWORD PTR [__STRLITPACK_210]              ;1020.5
        mov       r9d, 14                                       ;1020.5
        mov       DWORD PTR [464+r12], 99                       ;1019.5
        mov       QWORD PTR [32+rax], 0                         ;1020.5
        call      for_cpystr                                    ;1020.5
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.49::                       ; Preds .B17.48
                                ; Execution count [3.28e-003]: Infreq
        mov       edx, 16                                       ;1021.73
        lea       rbx, QWORD PTR [672+rsp]                      ;1021.73
        mov       rcx, rbx                                      ;1021.73
        lea       r8, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+320] ;1021.73
        mov       r9, rdx                                       ;1021.73
        lea       rax, QWORD PTR [__STRLITPACK_209]             ;1021.71
        mov       QWORD PTR [48+rsp], rax                       ;1021.71
        mov       QWORD PTR [56+rsp], 53                        ;1021.71
        call      for_trim                                      ;1021.73
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.50::                       ; Preds .B17.49
                                ; Execution count [3.28e-003]: Infreq
        mov       edx, 2                                        ;1021.5
        lea       r8, QWORD PTR [80+r12]                        ;1021.5
        mov       r9d, 128                                      ;1021.5
        lea       rcx, QWORD PTR [48+rsp]                       ;1021.5
        movsxd    rax, eax                                      ;1021.73
        mov       QWORD PTR [16+rcx], rbx                       ;1021.71
        mov       QWORD PTR [24+rcx], rax                       ;1021.71
        call      for_concat                                    ;1021.5
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.51::                       ; Preds .B17.50
                                ; Execution count [3.28e-003]: Infreq
        mov       rax, rsp                                      ;1022.10
        add       r12, 208                                      ;1022.10
        mov       rcx, r12                                      ;1022.10
        mov       edx, 128                                      ;1022.10
        lea       r8, QWORD PTR [__STRLITPACK_208]              ;1022.10
        mov       r9d, 5                                        ;1022.10
        mov       QWORD PTR [32+rax], rdi                       ;1022.10
        mov       QWORD PTR [40+rax], 256                       ;1022.10
        call      REPORTFILENAME                                ;1022.10
        nop                                                     ;1022.10
        jmp       .B17.29       ; Prob 100%                     ;1022.10
                                ; LOE rbp rsi r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.53::                       ; Preds .B17.35
                                ; Execution count [4.10e-003]: Infreq
        movups    xmm15, XMMWORD PTR [688+rsp]                  ;[spill]
        mov       r13, QWORD PTR [664+rsp]                      ;[spill]
        mov       r14, QWORD PTR [704+rsp]                      ;[spill]
        mov       r15, QWORD PTR [712+rsp]                      ;[spill]
        mov       rbp, QWORD PTR [720+rsp]                      ;[spill]
        cmp       ebx, DWORD PTR [MATL_FI_mp_NTYPM]             ;1045.9
        je        .B17.29       ; Prob 50%                      ;1045.9
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.54::                       ; Preds .B17.53
                                ; Execution count [2.05e-003]: Infreq
        mov       rax, rsp                                      ;1047.3
        mov       rcx, r12                                      ;1047.3
        mov       edx, 80                                       ;1047.3
        lea       r8, QWORD PTR [__STRLITPACK_207]              ;1047.3
        mov       r9d, 14                                       ;1047.3
        mov       DWORD PTR [464+r12], 99                       ;1046.3
        mov       QWORD PTR [32+rax], 0                         ;1047.3
        call      for_cpystr                                    ;1047.3
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.55::                       ; Preds .B17.54
                                ; Execution count [2.05e-003]: Infreq
        mov       rax, rsp                                      ;1048.3
        lea       rcx, QWORD PTR [80+r12]                       ;1048.3
        mov       edx, 128                                      ;1048.3
        lea       r8, QWORD PTR [__STRLITPACK_206]              ;1048.3
        mov       r9d, 61                                       ;1048.3
        mov       QWORD PTR [32+rax], 0                         ;1048.3
        call      for_cpystr                                    ;1048.3
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.56::                       ; Preds .B17.55
                                ; Execution count [2.05e-003]: Infreq
        mov       rax, rsp                                      ;1049.8
        lea       rcx, QWORD PTR [208+r12]                      ;1049.8
        mov       edx, 128                                      ;1049.8
        lea       r8, QWORD PTR [__STRLITPACK_205]              ;1049.8
        mov       r9d, 5                                        ;1049.8
        mov       QWORD PTR [32+rax], rdi                       ;1049.8
        mov       QWORD PTR [40+rax], 256                       ;1049.8
        call      REPORTFILENAME                                ;1049.8
                                ; LOE rbp rsi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.57::                       ; Preds .B17.56
                                ; Execution count [2.05e-003]: Infreq
        mov       rax, rsp                                      ;1050.3
        add       r12, 336                                      ;1050.3
        mov       rcx, r12                                      ;1050.3
        mov       edx, 128                                      ;1050.3
        lea       r8, QWORD PTR [__STRLITPACK_204]              ;1050.3
        mov       r9d, 46                                       ;1050.3
        mov       QWORD PTR [32+rax], 0                         ;1050.3
        call      for_cpystr                                    ;1050.3
        nop                                                     ;1050.3
        jmp       .B17.29       ; Prob 100%                     ;1050.3
                                ; LOE rbp rsi r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.58::                       ; Preds .B17.34
                                ; Execution count [5.12e-003]: Infreq
        movups    xmm15, XMMWORD PTR [688+rsp]                  ;[spill]
        mov       r13, QWORD PTR [664+rsp]                      ;[spill]
        mov       r14, QWORD PTR [704+rsp]                      ;[spill]
        mov       r15, QWORD PTR [712+rsp]                      ;[spill]
        mov       rbp, QWORD PTR [720+rsp]                      ;[spill]
        jmp       .B17.29       ; Prob 100%                     ;
        ALIGN     16
                                ; LOE rbp rsi r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B17.59::
; mark_end;
INITADJOINTMAT ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITADJOINTMAT.B1_B31	DD	396289
	DD	7274764
	DD	1879293957
	DD	805396482
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITADJOINTMAT.B1_B31	DD	imagerel .B17.1
	DD	imagerel .B17.32
	DD	imagerel .unwind.INITADJOINTMAT.B1_B31
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITADJOINTMAT.B32_B47	DD	1064193
	DD	5919805
	DD	5895218
	DD	5825578
	DD	5493794
	DD	2881558
	DD	7274752
	DD	1879097344
	DD	805330944
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITADJOINTMAT.B32_B47	DD	imagerel .B17.32
	DD	imagerel .B17.48
	DD	imagerel .unwind.INITADJOINTMAT.B32_B47
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITADJOINTMAT.B48_B51	DD	393217
	DD	7274752
	DD	1879097344
	DD	805330944
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITADJOINTMAT.B48_B51	DD	imagerel .B17.48
	DD	imagerel .B17.53
	DD	imagerel .unwind.INITADJOINTMAT.B48_B51
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITADJOINTMAT.B53_B53	DD	33
	DD	imagerel .B17.32
	DD	imagerel .B17.48
	DD	imagerel .unwind.INITADJOINTMAT.B32_B47
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITADJOINTMAT.B53_B53	DD	imagerel .B17.53
	DD	imagerel .B17.54
	DD	imagerel .unwind.INITADJOINTMAT.B53_B53
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITADJOINTMAT.B54_B57	DD	393217
	DD	7274752
	DD	1879097344
	DD	805330944
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITADJOINTMAT.B54_B57	DD	imagerel .B17.54
	DD	imagerel .B17.58
	DD	imagerel .unwind.INITADJOINTMAT.B54_B57
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITADJOINTMAT.B58_B58	DD	33
	DD	imagerel .B17.32
	DD	imagerel .B17.48
	DD	imagerel .unwind.INITADJOINTMAT.B32_B47
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITADJOINTMAT.B58_B58	DD	imagerel .B17.58
	DD	imagerel .B17.59
	DD	imagerel .unwind.INITADJOINTMAT.B58_B58
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.68_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DB 2 DUP ( 0H)	; pad
.2.68_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.28	DD	0000001d4H,000000000H
.2.68_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.68_2__kmpc_loc_pack.11
.2.68_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	73
	DB	78
	DB	73
	DB	84
	DB	65
	DB	68
	DB	74
	DB	79
	DB	73
	DB	78
	DB	84
	DB	77
	DB	65
	DB	84
	DB	59
	DB	57
	DB	53
	DB	48
	DB	59
	DB	57
	DB	53
	DB	48
	DB	59
	DB	59
	DB 3 DUP ( 0H)	; pad
.2.68_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.68_2__kmpc_loc_pack.19
.2.68_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	73
	DB	78
	DB	73
	DB	84
	DB	65
	DB	68
	DB	74
	DB	79
	DB	73
	DB	78
	DB	84
	DB	77
	DB	65
	DB	84
	DB	59
	DB	57
	DB	53
	DB	48
	DB	59
	DB	49
	DB	48
	DB	54
	DB	49
	DB	59
	DB	59
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
__STRLITPACK_219.0.9	DD	853048
	DD	1705016
	DD	3802168
	DD	1
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_220.0.9	DD	1
	DB	56
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  INITADJOINTMAT
_TEXT	SEGMENT      'CODE'
; -- Begin  SCN_INIT
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC SCN_INIT
; --- SCN_INIT
SCN_INIT	PROC 
.B18.1::                        ; Preds .B18.0
                                ; Execution count [0.00e+000]
L76::
                                                          ;642.12
        push      r13                                           ;642.12
        push      r14                                           ;642.12
        push      r15                                           ;642.12
        push      rbp                                           ;642.12
        sub       rsp, 1736                                     ;642.12
        lea       rcx, QWORD PTR [.2.69_2_kmpc_loc_struct_pack.18] ;642.12
        movups    XMMWORD PTR [1712+rsp], xmm9                  ;642.12[spill]
        call      __kmpc_global_thread_num                      ;642.12
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.128::                      ; Preds .B18.1
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.69_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.33] ;642.12
        mov       edx, eax                                      ;642.12
        test      rcx, rcx                                      ;642.12
        je        .B18.3        ; Prob 50%                      ;642.12
                                ; LOE rcx rbx rsi rdi r12 edx xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.2::                        ; Preds .B18.128
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [rdx*8]                        ;642.12
        cdqe                                                    ;642.12
        mov       r13, QWORD PTR [rcx+rax]                      ;642.12
        test      r13, r13                                      ;642.12
        jne       .B18.5        ; Prob 50%                      ;642.12
                                ; LOE rbx rsi rdi r12 r13 edx xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.3::                        ; Preds .B18.2 .B18.128
                                ; Execution count [0.00e+000]
        mov       rbp, rsp                                      ;642.12
        lea       rcx, QWORD PTR [.2.69_2_kmpc_loc_struct_pack.26] ;642.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;642.12
        lea       rax, QWORD PTR [.2.69_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.33] ;642.12
        mov       r9, QWORD PTR [.2.69_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.34] ;642.12
        mov       QWORD PTR [32+rbp], rax                       ;642.12
        call      __kmpc_threadprivate_cached                   ;642.12
                                ; LOE rax rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.129::                      ; Preds .B18.3
                                ; Execution count [0.00e+000]
        mov       r13, rax                                      ;642.12
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.5::                        ; Preds .B18.129 .B18.2
                                ; Execution count [1.00e+000]
        mov       r11, rsp                                      ;664.1
        lea       rcx, QWORD PTR [1664+rsp]                     ;664.1
        mov       r8, 012083a4ff03H                             ;664.1
        lea       r9, QWORD PTR [__STRLITPACK_164.0.5]          ;664.1
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_SCN]          ;664.1
        lea       r15, QWORD PTR [FILES_FI_mp_FILE_SCN]         ;664.1
        lea       rax, QWORD PTR [__STRLITPACK_163]             ;664.1
        lea       rbp, QWORD PTR [__STRLITPACK_162]             ;664.1
        mov       QWORD PTR [rcx], 0                            ;664.1
        lea       r10, QWORD PTR [1616+rsp]                     ;664.1
        mov       QWORD PTR [-48+rcx], 256                      ;664.1
        mov       QWORD PTR [-40+rcx], r15                      ;664.1
        mov       QWORD PTR [-32+rcx], 3                        ;664.1
        mov       QWORD PTR [-24+rcx], rax                      ;664.1
        mov       QWORD PTR [-16+rcx], 4                        ;664.1
        mov       QWORD PTR [-8+rcx], rbp                       ;664.1
        mov       QWORD PTR [32+r11], r10                       ;664.1
        call      for_open                                      ;664.1
                                ; LOE rbx rsi rdi r12 r13 r15 eax xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.6::                        ; Preds .B18.5
                                ; Execution count [1.00e+000]
        test      eax, eax                                      ;665.9
        je        .B18.11       ; Prob 22%                      ;665.9
                                ; LOE rbx rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.7::                        ; Preds .B18.6
                                ; Execution count [7.80e-001]
        mov       rax, rsp                                      ;667.3
        mov       rcx, r13                                      ;667.3
        mov       edx, 80                                       ;667.3
        lea       r8, QWORD PTR [__STRLITPACK_161]              ;667.3
        mov       r9d, 8                                        ;667.3
        mov       DWORD PTR [464+r13], 4                        ;666.3
        mov       QWORD PTR [32+rax], 0                         ;667.3
        call      for_cpystr                                    ;667.3
                                ; LOE rbx rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.8::                        ; Preds .B18.7
                                ; Execution count [7.80e-001]
        mov       rax, rsp                                      ;668.3
        lea       rcx, QWORD PTR [80+r13]                       ;668.3
        mov       edx, 128                                      ;668.3
        lea       r8, QWORD PTR [__STRLITPACK_160]              ;668.3
        mov       r9d, 49                                       ;668.3
        mov       QWORD PTR [32+rax], 0                         ;668.3
        call      for_cpystr                                    ;668.3
                                ; LOE rbx rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.9::                        ; Preds .B18.8
                                ; Execution count [7.80e-001]
        mov       rax, rsp                                      ;669.8
        lea       rcx, QWORD PTR [208+r13]                      ;669.8
        mov       edx, 128                                      ;669.8
        lea       r8, QWORD PTR [__STRLITPACK_159]              ;669.8
        mov       r9d, 5                                        ;669.8
        mov       QWORD PTR [32+rax], r15                       ;669.8
        mov       QWORD PTR [40+rax], 256                       ;669.8
        call      REPORTFILENAME                                ;669.8
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.10::                       ; Preds .B18.9
                                ; Execution count [7.80e-001]
        mov       rax, rsp                                      ;670.3
        add       r13, 336                                      ;670.3
        mov       rcx, r13                                      ;670.3
        mov       edx, 128                                      ;670.3
        lea       r8, QWORD PTR [__STRLITPACK_158]              ;670.3
        mov       r9d, 21                                       ;670.3
        mov       QWORD PTR [32+rax], 0                         ;670.3
        call      for_cpystr                                    ;670.3
        nop                                                     ;670.3
        jmp       .B18.93       ; Prob 100%                     ;670.3
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.11::                       ; Preds .B18.6
                                ; Execution count [2.20e-001]
        call      START_CLOCK                                   ;676.6
                                ; LOE rbx rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.12::                       ; Preds .B18.11
                                ; Execution count [2.20e-001]
        lea       rcx, QWORD PTR [FILES_FI_mp_LUN_SCN]          ;680.6
        mov       rdx, r15                                      ;680.6
        mov       r8d, 256                                      ;680.6
        lea       r9, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC]     ;680.6
        mov       DWORD PTR [NEXTREL_FI_mp_INIT_SOURCE], 0      ;678.1
        call      GET_SCN                                       ;680.6
                                ; LOE rbx rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.13::                       ; Preds .B18.12
                                ; Execution count [2.20e-001]
        cmp       DWORD PTR [464+r13], 0                        ;681.12
        jne       .B18.93       ; Prob 50%                      ;681.12
                                ; LOE rbx rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.14::                       ; Preds .B18.13
                                ; Execution count [1.10e-001]
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;685.1
        pxor      xmm1, xmm1                                    ;685.7
        ucomiss   xmm0, xmm1                                    ;685.7
        jp        .B18.15       ; Prob 0%                       ;685.7
        je        .B18.124      ; Prob 5%                       ;685.7
                                ; LOE rbx rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.15::                       ; Preds .B18.125 .B18.14
                                ; Execution count [1.07e-001]
        test      BYTE PTR [NEXTREL_FI_mp_ACTIVESOURCE], 1      ;692.10
        jne       .B18.19       ; Prob 39%                      ;692.10
                                ; LOE rbx rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.16::                       ; Preds .B18.15
                                ; Execution count [6.43e-002]
        mov       rax, rsp                                      ;694.3
        mov       rcx, r13                                      ;694.3
        mov       edx, 80                                       ;694.3
        lea       r8, QWORD PTR [__STRLITPACK_157]              ;694.3
        mov       r9d, 8                                        ;694.3
        mov       DWORD PTR [464+r13], 5                        ;693.3
        mov       QWORD PTR [32+rax], 0                         ;694.3
        call      for_cpystr                                    ;694.3
                                ; LOE rbx rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.17::                       ; Preds .B18.16
                                ; Execution count [6.43e-002]
        mov       rax, rsp                                      ;695.3
        lea       rcx, QWORD PTR [80+r13]                       ;695.3
        mov       edx, 128                                      ;695.3
        lea       r8, QWORD PTR [__STRLITPACK_156]              ;695.3
        mov       r9d, 28                                       ;695.3
        mov       QWORD PTR [32+rax], 0                         ;695.3
        call      for_cpystr                                    ;695.3
                                ; LOE rbx rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.18::                       ; Preds .B18.17
                                ; Execution count [6.43e-002]
        mov       rax, rsp                                      ;696.8
        add       r13, 208                                      ;696.8
        mov       rcx, r13                                      ;696.8
        mov       edx, 128                                      ;696.8
        lea       r8, QWORD PTR [__STRLITPACK_155]              ;696.8
        mov       r9d, 5                                        ;696.8
        mov       QWORD PTR [32+rax], r15                       ;696.8
        mov       QWORD PTR [40+rax], 256                       ;696.8
        call      REPORTFILENAME                                ;696.8
        nop                                                     ;696.8
        jmp       .B18.93       ; Prob 100%                     ;696.8
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.19::                       ; Preds .B18.15
                                ; Execution count [4.29e-002]
        mov       r14d, DWORD PTR [PUFF_FI_mp_NPUF]             ;702.1
;       COUNT_NREL
        call      CONT_REL_FUNCTIONS_mp_COUNT_NREL              ;703.10
                                ; LOE rbx rsi rdi r12 r13 r15 eax r14d xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.131::                      ; Preds .B18.19
                                ; Execution count [4.29e-002]
        mov       ebp, eax                                      ;703.10
                                ; LOE rbx rsi rdi r12 r13 r15 ebp r14d xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.20::                       ; Preds .B18.131
                                ; Execution count [4.29e-002]
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+12] ;706.11
        lea       rdx, QWORD PTR [__NLITPACK_4.0.5]             ;706.11
        movss     xmm9, DWORD PTR [TIME_FI_mp_T_OLD_R]          ;704.1
        call      SCALEREAL                                     ;706.11
                                ; LOE rbx rsi rdi r12 r13 r15 ebp r14d xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.132::                      ; Preds .B18.20
                                ; Execution count [4.29e-002]
        movaps    xmm1, xmm0                                    ;706.11
                                ; LOE rbx rsi rdi r12 r13 r15 ebp r14d xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.21::                       ; Preds .B18.132
                                ; Execution count [4.29e-002]
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;706.11
        addss     xmm0, DWORD PTR [TIME_FI_mp_DELT]             ;706.63
        comiss    xmm0, xmm1                                    ;706.60
        jbe       .B18.70       ; Prob 10%                      ;706.60
                                ; LOE rbx rsi rdi r12 r13 r15 ebp r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.22::                       ; Preds .B18.21
                                ; Execution count [3.86e-002]
        movups    XMMWORD PTR [1520+rsp], xmm6                  ;715.7[spill]
        lea       rax, QWORD PTR [144+rsp]                      ;715.7
        mov       QWORD PTR [1592+rsp], rbx                     ;715.7[spill]
        mov       rbx, rax                                      ;715.7
        mov       QWORD PTR [1584+rsp], rsi                     ;715.7[spill]
        mov       rsi, r15                                      ;715.7
        mov       QWORD PTR [1576+rsp], rdi                     ;715.7[spill]
        mov       r15d, edx                                     ;715.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.23::                       ; Preds .B18.68 .B18.22
                                ; Execution count [9.33e-002]
        mov       rdi, rsp                                      ;710.3
        lea       rcx, QWORD PTR [880+rsp]                      ;710.3
        mov       edx, 256                                      ;710.3
        lea       r8, QWORD PTR [1728+rsp]                      ;710.3
        mov       r9d, 1                                        ;710.3
        inc       DWORD PTR [NEXTREL_FI_mp_INIT_SOURCE]         ;708.3
        mov       BYTE PTR [848+rcx], 0                         ;710.11
        mov       QWORD PTR [32+rdi], 0                         ;710.3
        call      for_cpystr                                    ;710.3
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.24::                       ; Preds .B18.23
                                ; Execution count [9.33e-002]
        mov       rdi, rsp                                      ;711.3
        lea       rcx, QWORD PTR [1136+rsp]                     ;711.3
        mov       edx, 256                                      ;711.3
        lea       r8, QWORD PTR [1732+rsp]                      ;711.3
        mov       r9d, 1                                        ;711.3
        mov       BYTE PTR [596+rcx], 0                         ;711.11
        mov       QWORD PTR [32+rdi], 0                         ;711.3
        call      for_cpystr                                    ;711.3
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.25::                       ; Preds .B18.24
                                ; Execution count [9.33e-002]
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+12] ;715.7
        lea       rdx, QWORD PTR [__NLITPACK_7.0.6]             ;715.7
        call      SCALEREAL                                     ;715.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm0 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.133::                      ; Preds .B18.25
                                ; Execution count [9.33e-002]
        movaps    xmm6, xmm0                                    ;715.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.26::                       ; Preds .B18.133
                                ; Execution count [9.33e-002]
        mov       edi, DWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+4]  ;715.7
        test      edi, 2                                        ;715.7
        je        .B18.29       ; Prob 60%                      ;715.7
                                ; LOE rbx rsi r12 r13 ebp edi r14d r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.27::                       ; Preds .B18.26
                                ; Execution count [1.48e-002]
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC]    ;715.7
        lea       rdx, QWORD PTR [1560+rsp]                     ;715.7
        call      GETRELEASEDURATION                            ;715.7
                                ; LOE rbx rsi r12 r13 ebp r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.28::                       ; Preds .B18.27
                                ; Execution count [1.48e-002]
        movss     xmm0, DWORD PTR [1560+rsp]                    ;715.7
        movss     xmm1, DWORD PTR [_2il0floatpacket.0]          ;715.7
        addss     xmm6, xmm0                                    ;715.7
        mulss     xmm1, xmm0                                    ;715.7
        subss     xmm6, DWORD PTR [TIME_FI_mp_T]                ;715.7
        cmpltss   xmm1, xmm6                                    ;715.7
        movss     xmm6, DWORD PTR [_2il0floatpacket.1]          ;715.7
        cmpeqss   xmm0, xmm6                                    ;715.7
        orps      xmm1, xmm0                                    ;715.7
        movd      r15d, xmm1                                    ;715.7
        jmp       .B18.31       ; Prob 100%                     ;715.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.29::                       ; Preds .B18.26
                                ; Execution count [7.86e-002]
        test      edi, 1                                        ;715.7
        je        .B18.31       ; Prob 60%                      ;715.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.30::                       ; Preds .B18.29
                                ; Execution count [3.14e-002]
        movaps    xmm0, xmm9                                    ;715.7
        cmpltss   xmm0, xmm6                                    ;715.7
        movd      r15d, xmm0                                    ;715.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.31::                       ; Preds .B18.28 .B18.30 .B18.29
                                ; Execution count [9.33e-002]
        test      r15d, 1                                       ;715.7
        je        .B18.56       ; Prob 60%                      ;715.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.32::                       ; Preds .B18.31
                                ; Execution count [3.73e-002]
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+368] ;717.9
        mov       edx, 192                                      ;717.9
        call      for_len_trim                                  ;717.9
                                ; LOE rbx rsi r12 r13 eax ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.134::                      ; Preds .B18.32
                                ; Execution count [3.73e-002]
        mov       QWORD PTR [1664+rsp], 0                       ;718.7
        test      eax, eax                                      ;717.50
        jle       .B18.118      ; Prob 16%                      ;717.50
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.33::                       ; Preds .B18.134
                                ; Execution count [3.14e-002]
        mov       r11, rsp                                      ;718.7
        lea       rcx, QWORD PTR [1664+rsp]                     ;718.7
        mov       rdx, 01208384ff00H                            ;718.7
        lea       r8, QWORD PTR [__STRLITPACK_165.0.5]          ;718.7
        lea       rdi, QWORD PTR [__STRLITPACK_151]             ;718.7
        lea       r9, QWORD PTR [1432+rsp]                      ;718.7
        lea       r10, QWORD PTR [SCN_INIT$format_pack.0.5]     ;718.7
        mov       QWORD PTR [-232+rcx], 256                     ;718.7
        mov       QWORD PTR [-224+rcx], rbx                     ;718.7
        mov       QWORD PTR [-216+rcx], 16                      ;718.7
        mov       QWORD PTR [-208+rcx], rdi                     ;718.7
        mov       QWORD PTR [32+r11], r10                       ;718.7
        call      for_write_int_fmt                             ;718.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.34::                       ; Preds .B18.33
                                ; Execution count [3.14e-002]
        mov       edi, DWORD PTR [NEXTREL_FI_mp_INIT_SOURCE]    ;718.7
        lea       rcx, QWORD PTR [1664+rsp]                     ;718.7
        lea       rdx, QWORD PTR [__STRLITPACK_166.0.5]         ;718.7
        lea       r8, QWORD PTR [1568+rsp]                      ;718.7
        mov       DWORD PTR [-96+rcx], edi                      ;718.7
        call      for_write_int_fmt_xmit                        ;718.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.35::                       ; Preds .B18.34
                                ; Execution count [3.14e-002]
        mov       edx, 192                                      ;718.73
        lea       rdi, QWORD PTR [400+rsp]                      ;718.73
        mov       rcx, rdi                                      ;718.73
        lea       r8, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+368] ;718.73
        mov       r9, rdx                                       ;718.73
        call      for_trim                                      ;718.73
                                ; LOE rbx rsi rdi r12 r13 eax ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.36::                       ; Preds .B18.35
                                ; Execution count [3.14e-002]
        movsxd    rax, eax                                      ;718.73
        lea       rdx, QWORD PTR [__STRLITPACK_167.0.5]         ;718.7
        mov       QWORD PTR [1504+rsp], rax                     ;718.7
        lea       r8, QWORD PTR [1504+rsp]                      ;718.7
        mov       QWORD PTR [8+r8], rdi                         ;718.7
                                ; LOE rdx rbx rsi r8 r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.37::                       ; Preds .B18.36 .B18.119
                                ; Execution count [3.73e-002]
        lea       rcx, QWORD PTR [1664+rsp]                     ;720.7
        call      for_write_int_fmt_xmit                        ;720.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.38::                       ; Preds .B18.37
                                ; Execution count [3.73e-002]
        mov       rdi, rsp                                      ;722.10
        mov       edx, 256                                      ;722.10
        mov       r9, rdx                                       ;722.10
        lea       rcx, QWORD PTR [880+rsp]                      ;722.10
        lea       r8, QWORD PTR [1136+rsp]                      ;722.10
        mov       QWORD PTR [32+rdi], rbx                       ;722.10
        mov       QWORD PTR [40+rdi], 256                       ;722.10
        call      WRITE_PROGRESS                                ;722.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.39::                       ; Preds .B18.38
                                ; Execution count [3.73e-002]
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+12] ;724.9
        lea       rdx, QWORD PTR [__NLITPACK_4.0.5]             ;724.9
        call      SCALEREAL                                     ;724.9
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm0 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.40::                       ; Preds .B18.39
                                ; Execution count [3.73e-002]
        comiss    xmm0, xmm9                                    ;724.58
        ja        .B18.48       ; Prob 78%                      ;724.58
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.42::                       ; Preds .B18.40
                                ; Execution count [8.21e-003]
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+12] ;726.14
        lea       rdx, QWORD PTR [__NLITPACK_4.0.5]             ;726.14
        call      SCALEREAL                                     ;726.14
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm0 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.43::                       ; Preds .B18.42
                                ; Execution count [8.21e-003]
        comiss    xmm9, xmm0                                    ;726.63
        jbe       .B18.45       ; Prob 22%                      ;726.63
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.44::                       ; Preds .B18.46 .B18.43
                                ; Execution count [6.41e-003]
        mov       DWORD PTR [1612+rsp], 1                       ;727.7
        jmp       .B18.49       ; Prob 100%                     ;727.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.45::                       ; Preds .B18.43
                                ; Execution count [1.81e-003]
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+12] ;729.11
        lea       rdx, QWORD PTR [__NLITPACK_4.0.5]             ;729.11
        call      SCALEREAL                                     ;729.11
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm0 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.138::                      ; Preds .B18.45
                                ; Execution count [1.81e-003]
        movaps    xmm1, xmm0                                    ;729.11
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm1 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.46::                       ; Preds .B18.138
                                ; Execution count [1.81e-003]
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;729.11
        comiss    xmm0, xmm1                                    ;729.60
        ja        .B18.44       ; Prob 50%                      ;729.60
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.48::                       ; Preds .B18.40 .B18.46
                                ; Execution count [9.04e-004]
        mov       DWORD PTR [1612+rsp], 0                       ;732.9
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.49::                       ; Preds .B18.44 .B18.48
                                ; Execution count [3.73e-002]
        call      UPDATE_SCN                                    ;738.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.50::                       ; Preds .B18.49
                                ; Execution count [3.73e-002]
        mov       edi, DWORD PTR [464+r13]                      ;738.10
        cmp       edi, 17                                       ;738.10
        je        .B18.116      ; Prob 0%                       ;738.10
                                ; LOE rbx rsi r12 r13 ebp edi r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.51::                       ; Preds .B18.50
                                ; Execution count [3.70e-002]
        test      edi, edi                                      ;738.10
        jne       .B18.55       ; Prob 78%                      ;738.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.53::                       ; Preds .B18.51
                                ; Execution count [8.13e-003]
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC]    ;738.10
        call      VALID_SCN                                     ;738.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.54::                       ; Preds .B18.53
                                ; Execution count [8.13e-003]
        cmp       DWORD PTR [464+r13], 0                        ;738.10
        je        .B18.96       ; Prob 5%                       ;738.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.55::                       ; Preds .B18.109 .B18.66 .B18.105 .B18.97 .B18.51
                                ;       .B18.54
                                ; Execution count [7.73e-003]
        movups    xmm6, XMMWORD PTR [1520+rsp]                  ;[spill]
        mov       rbx, QWORD PTR [1592+rsp]                     ;[spill]
        mov       rsi, QWORD PTR [1584+rsp]                     ;[spill]
        mov       rdi, QWORD PTR [1576+rsp]                     ;[spill]
        jmp       .B18.93       ; Prob 100%                     ;
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.56::                       ; Preds .B18.31
                                ; Execution count [5.60e-002]
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+368] ;751.9
        mov       edx, 192                                      ;751.9
        call      for_len_trim                                  ;751.9
                                ; LOE rbx rsi r12 r13 eax ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.139::                      ; Preds .B18.56
                                ; Execution count [5.60e-002]
        mov       QWORD PTR [1664+rsp], 0                       ;752.7
        test      eax, eax                                      ;751.50
        jle       .B18.122      ; Prob 16%                      ;751.50
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.57::                       ; Preds .B18.139
                                ; Execution count [4.70e-002]
        mov       r11, rsp                                      ;752.7
        lea       rcx, QWORD PTR [1664+rsp]                     ;752.7
        mov       rdx, 01208384ff00H                            ;752.7
        lea       r8, QWORD PTR [__STRLITPACK_170.0.5]          ;752.7
        lea       rdi, QWORD PTR [__STRLITPACK_140]             ;752.7
        lea       r9, QWORD PTR [1472+rsp]                      ;752.7
        lea       r10, QWORD PTR [SCN_INIT$format_pack.0.5+68]  ;752.7
        mov       QWORD PTR [-192+rcx], 256                     ;752.7
        mov       QWORD PTR [-184+rcx], rbx                     ;752.7
        mov       QWORD PTR [-176+rcx], 15                      ;752.7
        mov       QWORD PTR [-168+rcx], rdi                     ;752.7
        mov       QWORD PTR [32+r11], r10                       ;752.7
        call      for_write_int_fmt                             ;752.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.58::                       ; Preds .B18.57
                                ; Execution count [4.70e-002]
        mov       edi, DWORD PTR [NEXTREL_FI_mp_INIT_SOURCE]    ;752.7
        lea       rcx, QWORD PTR [1664+rsp]                     ;752.7
        lea       rdx, QWORD PTR [__STRLITPACK_171.0.5]         ;752.7
        lea       r8, QWORD PTR [1600+rsp]                      ;752.7
        mov       DWORD PTR [-64+rcx], edi                      ;752.7
        call      for_write_int_fmt_xmit                        ;752.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.59::                       ; Preds .B18.58
                                ; Execution count [4.70e-002]
        mov       edx, 192                                      ;752.72
        lea       rdi, QWORD PTR [656+rsp]                      ;752.72
        mov       rcx, rdi                                      ;752.72
        lea       r8, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+368] ;752.72
        mov       r9, rdx                                       ;752.72
        call      for_trim                                      ;752.72
                                ; LOE rbx rsi rdi r12 r13 eax ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.60::                       ; Preds .B18.59
                                ; Execution count [4.70e-002]
        movsxd    rax, eax                                      ;752.72
        lea       rdx, QWORD PTR [__STRLITPACK_172.0.5]         ;752.7
        mov       QWORD PTR [1544+rsp], rax                     ;752.7
        lea       r8, QWORD PTR [1544+rsp]                      ;752.7
        mov       QWORD PTR [8+r8], rdi                         ;752.7
                                ; LOE rdx rbx rsi r8 r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.61::                       ; Preds .B18.60 .B18.123
                                ; Execution count [5.60e-002]
        lea       rcx, QWORD PTR [1664+rsp]                     ;754.7
        call      for_write_int_fmt_xmit                        ;754.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.62::                       ; Preds .B18.61
                                ; Execution count [5.60e-002]
        mov       rdi, rsp                                      ;756.10
        mov       edx, 256                                      ;756.10
        mov       r9, rdx                                       ;756.10
        lea       rcx, QWORD PTR [880+rsp]                      ;756.10
        lea       r8, QWORD PTR [1136+rsp]                      ;756.10
        mov       QWORD PTR [32+rdi], rbx                       ;756.10
        mov       QWORD PTR [40+rdi], 256                       ;756.10
        call      WRITE_PROGRESS                                ;756.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.63::                       ; Preds .B18.62 .B18.112 .B18.111
                                ; Execution count [8.35e-002]
        call      STEP_CLOCK                                    ;760.8
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.64::                       ; Preds .B18.63
                                ; Execution count [8.35e-002]
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+12] ;764.25
        lea       rdx, QWORD PTR [__NLITPACK_4.0.5]             ;764.25
        call      SCALEREAL                                     ;764.25
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm0 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.141::                      ; Preds .B18.64
                                ; Execution count [8.35e-002]
        movaps    xmm1, xmm0                                    ;764.25
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm1 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.65::                       ; Preds .B18.141
                                ; Execution count [8.35e-002]
        movss     xmm0, DWORD PTR [TIME_FI_mp_T_OLD_R]          ;764.3
        lea       rcx, QWORD PTR [FILES_FI_mp_LUN_SCN]          ;766.8
        mov       rdx, rsi                                      ;766.8
        mov       r8d, 256                                      ;766.8
        lea       r9, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC]     ;766.8
        maxss     xmm0, xmm1                                    ;764.3
        movss     DWORD PTR [TIME_FI_mp_T_OLD_R], xmm0          ;764.3
        call      GET_SCN                                       ;766.8
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.66::                       ; Preds .B18.65
                                ; Execution count [8.35e-002]
        cmp       DWORD PTR [464+r13], 0                        ;767.14
        jne       .B18.55       ; Prob 20%                      ;767.14
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.67::                       ; Preds .B18.66
                                ; Execution count [6.68e-002]
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+12] ;706.11
        lea       rdx, QWORD PTR [__NLITPACK_4.0.5]             ;706.11
        call      SCALEREAL                                     ;706.11
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm0 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.142::                      ; Preds .B18.67
                                ; Execution count [6.68e-002]
        movaps    xmm1, xmm0                                    ;706.11
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm1 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.68::                       ; Preds .B18.142
                                ; Execution count [6.68e-002]
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;706.11
        addss     xmm0, DWORD PTR [TIME_FI_mp_DELT]             ;706.63
        comiss    xmm0, xmm1                                    ;706.60
        ja        .B18.23       ; Prob 82%                      ;706.60
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.69::                       ; Preds .B18.68
                                ; Execution count [1.20e-002]
        movups    xmm6, XMMWORD PTR [1520+rsp]                  ;[spill]
        mov       rbx, QWORD PTR [1592+rsp]                     ;[spill]
        mov       rsi, QWORD PTR [1584+rsp]                     ;[spill]
        mov       rdi, QWORD PTR [1576+rsp]                     ;[spill]
                                ; LOE rbx rsi rdi r12 r13 ebp r14d xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.70::                       ; Preds .B18.69 .B18.21
                                ; Execution count [1.63e-002]
;       COUNT_NREL
        call      CONT_REL_FUNCTIONS_mp_COUNT_NREL              ;771.5
                                ; LOE rbx rsi rdi r12 r13 eax ebp r14d xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.71::                       ; Preds .B18.70
                                ; Execution count [1.63e-002]
        cmp       eax, ebp                                      ;771.18
        jge       .B18.74       ; Prob 50%                      ;771.18
                                ; LOE rbx rsi rdi r12 r13 r14d xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.72::                       ; Preds .B18.71
                                ; Execution count [8.15e-003]
        mov       rax, rsp                                      ;773.3
        lea       rcx, QWORD PTR [80+r13]                       ;773.3
        mov       edx, 128                                      ;773.3
        lea       r8, QWORD PTR [__STRLITPACK_135]              ;773.3
        mov       r9d, 41                                       ;773.3
        mov       DWORD PTR [384+rcx], 5                        ;772.3
        mov       QWORD PTR [32+rax], 0                         ;773.3
        call      for_cpystr                                    ;773.3
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.73::                       ; Preds .B18.72
                                ; Execution count [8.15e-003]
        mov       rax, rsp                                      ;774.3
        mov       rcx, r13                                      ;774.3
        mov       edx, 80                                       ;774.3
        lea       r8, QWORD PTR [__STRLITPACK_134]              ;774.3
        mov       r9d, 7                                        ;774.3
        mov       QWORD PTR [32+rax], 0                         ;774.3
        call      for_cpystr                                    ;774.3
        jmp       .B18.93       ; Prob 100%                     ;774.3
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.74::                       ; Preds .B18.71
                                ; Execution count [8.15e-003]
        cmp       r14d, DWORD PTR [PUFF_FI_mp_NPUF]             ;780.10
        jge       .B18.83       ; Prob 22%                      ;780.10
                                ; LOE rbx rsi rdi r12 r13 r14d xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.75::                       ; Preds .B18.74
                                ; Execution count [6.36e-003]
        mov       rax, rsp                                      ;781.3
        lea       rcx, QWORD PTR [880+rsp]                      ;781.3
        mov       edx, 256                                      ;781.3
        lea       r8, QWORD PTR [1564+rsp]                      ;781.3
        mov       r9d, 1                                        ;781.3
        mov       BYTE PTR [684+rcx], 0                         ;781.11
        mov       QWORD PTR [32+rax], 0                         ;781.3
        call      for_cpystr                                    ;781.3
                                ; LOE rbx rsi rdi r12 r13 r14d xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.76::                       ; Preds .B18.75
                                ; Execution count [6.36e-003]
        mov       rax, rsp                                      ;782.3
        lea       rcx, QWORD PTR [1136+rsp]                     ;782.3
        mov       edx, 256                                      ;782.3
        lea       r8, QWORD PTR [1608+rsp]                      ;782.3
        mov       r9d, 1                                        ;782.3
        mov       BYTE PTR [472+rcx], 0                         ;782.11
        mov       QWORD PTR [32+rax], 0                         ;782.3
        call      for_cpystr                                    ;782.3
                                ; LOE rbx rsi rdi r12 r13 r14d xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.77::                       ; Preds .B18.76
                                ; Execution count [6.36e-003]
        mov       edx, 12                                       ;783.33
        lea       rcx, QWORD PTR [1392+rsp]                     ;783.33
        mov       ebp, DWORD PTR [PUFF_FI_mp_NPUF]              ;783.33
        lea       r8, QWORD PTR [652+rsp]                       ;783.33
        lea       rax, QWORD PTR [__STRLITPACK_133]             ;783.26
        sub       ebp, r14d                                     ;783.33
        mov       QWORD PTR [96+rsp], rax                       ;783.26
        mov       QWORD PTR [104+rsp], 13                       ;783.26
        mov       DWORD PTR [-740+rcx], ebp                     ;783.49
        call      FORMATPUFFS                                   ;783.33
                                ; LOE rbx rsi rdi r12 r13 r14d xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.78::                       ; Preds .B18.77
                                ; Execution count [6.36e-003]
        mov       edx, 12                                       ;783.28
        lea       rbp, QWORD PTR [1408+rsp]                     ;783.28
        mov       rcx, rbp                                      ;783.28
        lea       r8, QWORD PTR [1392+rsp]                      ;783.28
        mov       r9, rdx                                       ;783.28
        call      for_trim                                      ;783.28
                                ; LOE rbx rbp rsi rdi r12 r13 eax r14d xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.79::                       ; Preds .B18.78
                                ; Execution count [6.36e-003]
        mov       QWORD PTR [112+rsp], rbp                      ;783.26
        lea       rbp, QWORD PTR [__STRLITPACK_132]             ;783.56
        mov       QWORD PTR [128+rsp], rbp                      ;783.56
        lea       rbp, QWORD PTR [144+rsp]                      ;783.3
        mov       edx, 3                                        ;783.3
        lea       rcx, QWORD PTR [96+rsp]                       ;783.3
        mov       r8, rbp                                       ;783.3
        mov       r9d, 256                                      ;783.3
        movsxd    rax, eax                                      ;783.28
        mov       QWORD PTR [24+rcx], rax                       ;783.26
        mov       QWORD PTR [40+rcx], 10                        ;783.56
        call      for_concat                                    ;783.3
                                ; LOE rbx rbp rsi rdi r12 r13 r14d xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.80::                       ; Preds .B18.79
                                ; Execution count [6.36e-003]
        mov       rax, rsp                                      ;784.8
        mov       edx, 256                                      ;784.8
        mov       r9, rdx                                       ;784.8
        lea       rcx, QWORD PTR [880+rsp]                      ;784.8
        lea       r8, QWORD PTR [1136+rsp]                      ;784.8
        mov       QWORD PTR [32+rax], rbp                       ;784.8
        mov       QWORD PTR [40+rax], 256                       ;784.8
        call      WRITE_PROGRESS                                ;784.8
                                ; LOE rbx rsi rdi r12 r13 r14d xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.81::                       ; Preds .B18.80
                                ; Execution count [6.36e-003]
        mov       eax, DWORD PTR [PUFF_FI_mp_NPUF]              ;787.3
        lea       rcx, QWORD PTR [1404+rsp]                     ;788.8
        lea       r8, QWORD PTR [__NLITPACK_5.0.5]              ;788.8
        lea       rdx, QWORD PTR [1420+rsp]                     ;788.8
        inc       r14d                                          ;786.3
        mov       DWORD PTR [-16+rdx], r14d                     ;786.3
        mov       DWORD PTR [rdx], eax                          ;787.3
        call      SET_REL                                       ;788.8
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.82::                       ; Preds .B18.81
                                ; Execution count [6.36e-003]
        cmp       DWORD PTR [464+r13], 0                        ;789.14
        jne       .B18.93       ; Prob 78%                      ;789.14
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.83::                       ; Preds .B18.82 .B18.74
                                ; Execution count [3.19e-003]
;       COUNT_NREL
        call      CONT_REL_FUNCTIONS_mp_COUNT_NREL              ;794.5
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.84::                       ; Preds .B18.83
                                ; Execution count [3.19e-003]
        test      eax, eax                                      ;794.18
        jle       .B18.93       ; Prob 16%                      ;794.18
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.85::                       ; Preds .B18.84
                                ; Execution count [2.68e-003]
        mov       rax, rsp                                      ;795.3
        lea       rcx, QWORD PTR [880+rsp]                      ;795.3
        mov       edx, 256                                      ;795.3
        lea       r8, QWORD PTR [1536+rsp]                      ;795.3
        mov       r9d, 1                                        ;795.3
        mov       BYTE PTR [656+rcx], 0                         ;795.11
        mov       QWORD PTR [32+rax], 0                         ;795.3
        call      for_cpystr                                    ;795.3
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.86::                       ; Preds .B18.85
                                ; Execution count [2.68e-003]
        mov       rax, rsp                                      ;796.3
        lea       rcx, QWORD PTR [1136+rsp]                     ;796.3
        mov       edx, 256                                      ;796.3
        lea       r8, QWORD PTR [1540+rsp]                      ;796.3
        mov       r9d, 1                                        ;796.3
        mov       BYTE PTR [404+rcx], 0                         ;796.11
        mov       QWORD PTR [32+rax], 0                         ;796.3
        call      for_cpystr                                    ;796.3
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.87::                       ; Preds .B18.86
                                ; Execution count [2.68e-003]
        lea       rax, QWORD PTR [__STRLITPACK_131]             ;797.26
        mov       QWORD PTR [48+rsp], rax                       ;797.26
        mov       QWORD PTR [56+rsp], 13                        ;797.26
;       COUNT_NREL
        call      CONT_REL_FUNCTIONS_mp_COUNT_NREL              ;797.45
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.88::                       ; Preds .B18.87
                                ; Execution count [2.68e-003]
        mov       edx, 12                                       ;797.33
        lea       rcx, QWORD PTR [624+rsp]                      ;797.33
        mov       DWORD PTR [12+rcx], eax                       ;797.45
        lea       r8, QWORD PTR [636+rsp]                       ;797.33
        call      FORMATPUFFS                                   ;797.33
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.89::                       ; Preds .B18.88
                                ; Execution count [2.68e-003]
        mov       edx, 12                                       ;797.28
        lea       rbp, QWORD PTR [640+rsp]                      ;797.28
        mov       rcx, rbp                                      ;797.28
        lea       r8, QWORD PTR [624+rsp]                       ;797.28
        mov       r9, rdx                                       ;797.28
        call      for_trim                                      ;797.28
                                ; LOE rbx rbp rsi rdi r12 eax xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.90::                       ; Preds .B18.89
                                ; Execution count [2.68e-003]
        mov       QWORD PTR [64+rsp], rbp                       ;797.26
        lea       rbp, QWORD PTR [__STRLITPACK_130]             ;797.59
        mov       QWORD PTR [80+rsp], rbp                       ;797.59
        lea       rbp, QWORD PTR [144+rsp]                      ;797.3
        mov       edx, 3                                        ;797.3
        lea       rcx, QWORD PTR [48+rsp]                       ;797.3
        mov       r8, rbp                                       ;797.3
        mov       r9d, 256                                      ;797.3
        movsxd    rax, eax                                      ;797.28
        mov       QWORD PTR [24+rcx], rax                       ;797.26
        mov       QWORD PTR [40+rcx], 13                        ;797.59
        call      for_concat                                    ;797.3
                                ; LOE rbx rbp rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.91::                       ; Preds .B18.90
                                ; Execution count [2.68e-003]
        mov       rax, rsp                                      ;798.8
        mov       edx, 256                                      ;798.8
        mov       r9, rdx                                       ;798.8
        lea       rcx, QWORD PTR [880+rsp]                      ;798.8
        lea       r8, QWORD PTR [1136+rsp]                      ;798.8
        mov       QWORD PTR [32+rax], rbp                       ;798.8
        mov       QWORD PTR [40+rax], 256                       ;798.8
        call      WRITE_PROGRESS                                ;798.8
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.92::                       ; Preds .B18.91
                                ; Execution count [2.68e-003]
        lea       rcx, QWORD PTR [__NLITPACK_6.0.5]             ;800.8
        call      INTERACTCONTINUOUSRELEASES                    ;800.8
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.93::                       ; Preds .B18.55 .B18.10 .B18.18 .B18.73 .B18.92
                                ;       .B18.115 .B18.84 .B18.82 .B18.13 .B18.125
                                ;      
                                ; Execution count [1.00e+000]
        call      CLEAR_RANDOM_LOC                              ;806.6
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.94::                       ; Preds .B18.93
                                ; Execution count [1.00e+000]
        call      STOP_CLOCK                                    ;808.6
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.95::                       ; Preds .B18.94
                                ; Execution count [1.00e+000]
        movups    xmm9, XMMWORD PTR [1712+rsp]                  ;811.1[spill]
        add       rsp, 1736                                     ;811.1
        pop       rbp                                           ;811.1
        pop       r15                                           ;811.1
        pop       r14                                           ;811.1
        pop       r13                                           ;811.1
        ret                                                     ;811.1
                                ; LOE
.B18.96::                       ; Preds .B18.54
                                ; Execution count [4.07e-004]: Infreq
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC]    ;738.10
        call      INIT_RANDOM_LOC                               ;738.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.97::                       ; Preds .B18.96
                                ; Execution count [4.07e-004]: Infreq
        cmp       DWORD PTR [464+r13], 0                        ;738.10
        jne       .B18.55       ; Prob 50%                      ;738.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.99::                       ; Preds .B18.97
                                ; Execution count [2.03e-004]: Infreq
        mov       edi, DWORD PTR [NEXTREL_FI_mp_CURRENTSPEC+4]  ;738.23
        test      edi, 2                                        ;738.10
        je        .B18.102      ; Prob 60%                      ;738.10
                                ; LOE rbx rsi r12 r13 ebp edi r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.100::                      ; Preds .B18.99
                                ; Execution count [3.22e-005]: Infreq
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC]    ;738.10
        lea       rdx, QWORD PTR [1612+rsp]                     ;738.10
        xor       r8d, r8d                                      ;738.10
        call      PROCESS_SCN_CONT                              ;738.10
        jmp       .B18.104      ; Prob 100%                     ;738.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.102::                      ; Preds .B18.99
                                ; Execution count [1.71e-004]: Infreq
        test      edi, 1                                        ;738.10
        je        .B18.107      ; Prob 60%                      ;738.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.103::                      ; Preds .B18.102
                                ; Execution count [2.71e-005]: Infreq
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC]    ;738.10
        lea       rdx, QWORD PTR [__NLITPACK_9.0.8]             ;738.10
        call      I_RELEASE                                     ;738.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.104::                      ; Preds .B18.100 .B18.103
                                ; Execution count [2.71e-005]: Infreq
        mov       edi, DWORD PTR [464+r13]                      ;738.10
                                ; LOE rbx rsi r12 r13 ebp edi r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.105::                      ; Preds .B18.104
                                ; Execution count [1.01e-004]: Infreq
        test      edi, edi                                      ;738.10
        jne       .B18.55       ; Prob 78%                      ;738.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.107::                      ; Preds .B18.102 .B18.105
                                ; Execution count [4.47e-005]: Infreq
        call      CLEAR_RANDOM_LOC                              ;738.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.108::                      ; Preds .B18.116 .B18.107
                                ; Execution count [4.47e-005]: Infreq
        mov       edi, DWORD PTR [464+r13]                      ;739.5
                                ; LOE rbx rsi r12 r13 ebp edi r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.109::                      ; Preds .B18.108
                                ; Execution count [4.95e-004]: Infreq
        test      edi, edi                                      ;739.16
        jne       .B18.55       ; Prob 20%                      ;739.16
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.110::                      ; Preds .B18.109
                                ; Execution count [2.99e-002]: Infreq
;       COUNT_NREL
        call      CONT_REL_FUNCTIONS_mp_COUNT_NREL              ;741.40
                                ; LOE rbx rsi r12 r13 eax ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.111::                      ; Preds .B18.110
                                ; Execution count [2.99e-002]: Infreq
        cmp       DWORD PTR [1612+rsp], 1                       ;741.16
        jne       .B18.63       ; Prob 59%                      ;741.16
                                ; LOE rbx rsi r12 r13 eax ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.112::                      ; Preds .B18.111
                                ; Execution count [1.20e-002]: Infreq
        cmp       eax, ebp                                      ;741.53
        jle       .B18.63       ; Prob 80%                      ;741.53
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.113::                      ; Preds .B18.112
                                ; Execution count [2.41e-003]: Infreq
        mov       rax, rsp                                      ;743.7
        lea       rcx, QWORD PTR [80+r13]                       ;743.7
        mov       edx, 128                                      ;743.7
        lea       r8, QWORD PTR [__STRLITPACK_146]              ;743.7
        mov       r9d, 26                                       ;743.7
        movups    xmm6, XMMWORD PTR [1520+rsp]                  ;[spill]
        mov       rbx, QWORD PTR [1592+rsp]                     ;[spill]
        mov       rsi, QWORD PTR [1584+rsp]                     ;[spill]
        mov       rdi, QWORD PTR [1576+rsp]                     ;[spill]
        mov       DWORD PTR [384+rcx], 3                        ;742.7
        mov       QWORD PTR [32+rax], 0                         ;743.7
        call      for_cpystr                                    ;743.7
        nop                                                     ;743.7
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.114::                      ; Preds .B18.113
                                ; Execution count [2.41e-003]: Infreq
        mov       rax, rsp                                      ;744.7
        lea       rcx, QWORD PTR [208+r13]                      ;744.7
        mov       edx, 128                                      ;744.7
        lea       r8, QWORD PTR [__STRLITPACK_145]              ;744.7
        mov       r9d, 44                                       ;744.7
        mov       QWORD PTR [32+rax], 0                         ;744.7
        call      for_cpystr                                    ;744.7
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.115::                      ; Preds .B18.114
                                ; Execution count [2.41e-003]: Infreq
        mov       rax, rsp                                      ;745.7
        mov       rcx, r13                                      ;745.7
        mov       edx, 80                                       ;745.7
        lea       r8, QWORD PTR [__STRLITPACK_144]              ;745.7
        mov       r9d, 8                                        ;745.7
        mov       QWORD PTR [32+rax], 0                         ;745.7
        call      for_cpystr                                    ;745.7
        nop                                                     ;745.7
        jmp       .B18.93       ; Prob 100%                     ;745.7
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.116::                      ; Preds .B18.50
                                ; Execution count [3.71e-004]: Infreq
        call      INIT_ERROR                                    ;738.10
        nop                                                     ;738.10
        jmp       .B18.108      ; Prob 100%                     ;738.10
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.118::                      ; Preds .B18.134
                                ; Execution count [5.97e-003]: Infreq
        mov       r11, rsp                                      ;720.7
        lea       rcx, QWORD PTR [1664+rsp]                     ;720.7
        mov       rdx, 01208384ff00H                            ;720.7
        lea       r8, QWORD PTR [__STRLITPACK_168.0.5]          ;720.7
        lea       rdi, QWORD PTR [__STRLITPACK_147]             ;720.7
        lea       r9, QWORD PTR [592+rsp]                       ;720.7
        lea       r10, QWORD PTR [SCN_INIT$format_pack.0.5+44]  ;720.7
        mov       QWORD PTR [-1072+rcx], 256                    ;720.7
        mov       QWORD PTR [-1064+rcx], rbx                    ;720.7
        mov       QWORD PTR [-1056+rcx], 16                     ;720.7
        mov       QWORD PTR [-1048+rcx], rdi                    ;720.7
        mov       QWORD PTR [32+r11], r10                       ;720.7
        call      for_write_int_fmt                             ;720.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.119::                      ; Preds .B18.118
                                ; Execution count [5.97e-003]: Infreq
        mov       edi, DWORD PTR [NEXTREL_FI_mp_INIT_SOURCE]    ;720.7
        lea       rdx, QWORD PTR [__STRLITPACK_169.0.5]         ;720.7
        mov       DWORD PTR [1424+rsp], edi                     ;720.7
        lea       r8, QWORD PTR [1424+rsp]                      ;720.7
        jmp       .B18.37       ; Prob 100%                     ;720.7
                                ; LOE rdx rbx rsi r8 r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.122::                      ; Preds .B18.139
                                ; Execution count [8.96e-003]: Infreq
        mov       r11, rsp                                      ;754.7
        lea       rcx, QWORD PTR [1664+rsp]                     ;754.7
        mov       rdx, 01208384ff00H                            ;754.7
        lea       r8, QWORD PTR [__STRLITPACK_173.0.5]          ;754.7
        lea       rdi, QWORD PTR [__STRLITPACK_136]             ;754.7
        lea       r9, QWORD PTR [848+rsp]                       ;754.7
        lea       r10, QWORD PTR [SCN_INIT$format_pack.0.5+112] ;754.7
        mov       QWORD PTR [-816+rcx], 256                     ;754.7
        mov       QWORD PTR [-808+rcx], rbx                     ;754.7
        mov       QWORD PTR [-800+rcx], 15                      ;754.7
        mov       QWORD PTR [-792+rcx], rdi                     ;754.7
        mov       QWORD PTR [32+r11], r10                       ;754.7
        call      for_write_int_fmt                             ;754.7
                                ; LOE rbx rsi r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.123::                      ; Preds .B18.122
                                ; Execution count [8.96e-003]: Infreq
        mov       edi, DWORD PTR [NEXTREL_FI_mp_INIT_SOURCE]    ;754.7
        lea       rdx, QWORD PTR [__STRLITPACK_174.0.5]         ;754.7
        mov       DWORD PTR [1464+rsp], edi                     ;754.7
        lea       r8, QWORD PTR [1464+rsp]                      ;754.7
        jmp       .B18.61       ; Prob 100%                     ;754.7
                                ; LOE rdx rbx rsi r8 r12 r13 ebp r14d r15d xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.124::                      ; Preds .B18.14
                                ; Execution count [5.61e-003]: Infreq
        lea       rcx, QWORD PTR [NEXTREL_FI_mp_CURRENTSPEC]    ;686.8
;       CHECK_FIRST_SCN
        call      CHECK_FIRST_SCN                               ;686.8
                                ; LOE rbx rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.125::                      ; Preds .B18.124
                                ; Execution count [5.61e-003]: Infreq
        cmp       DWORD PTR [464+r13], 0                        ;687.14
        jne       .B18.93       ; Prob 50%                      ;687.14
        jmp       .B18.15       ; Prob 100%                     ;687.14
        ALIGN     16
                                ; LOE rbx rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B18.126::
; mark_end;
SCN_INIT ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SCN_INIT.B1_B21	DD	531969
	DD	7051294
	DD	14221582
	DD	4026945543
	DD	3489849348
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SCN_INIT.B1_B21	DD	imagerel .B18.1
	DD	imagerel .B18.22
	DD	imagerel .unwind.SCN_INIT.B1_B21
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SCN_INIT.B22_B69	DD	536097
	DD	12940334
	DD	13001763
	DD	13055000
	DD	6252552
	DD	imagerel .B18.1
	DD	imagerel .B18.22
	DD	imagerel .unwind.SCN_INIT.B1_B21
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SCN_INIT.B22_B69	DD	imagerel .B18.22
	DD	imagerel .B18.70
	DD	imagerel .unwind.SCN_INIT.B22_B69
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SCN_INIT.B70_B95	DD	33
	DD	imagerel .B18.1
	DD	imagerel .B18.22
	DD	imagerel .unwind.SCN_INIT.B1_B21
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SCN_INIT.B70_B95	DD	imagerel .B18.70
	DD	imagerel .B18.96
	DD	imagerel .unwind.SCN_INIT.B70_B95
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SCN_INIT.B96_B113	DD	33
	DD	imagerel .B18.22
	DD	imagerel .B18.70
	DD	imagerel .unwind.SCN_INIT.B22_B69
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SCN_INIT.B96_B113	DD	imagerel .B18.96
	DD	imagerel .B18.114
	DD	imagerel .unwind.SCN_INIT.B96_B113
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SCN_INIT.B114_B115	DD	33
	DD	imagerel .B18.1
	DD	imagerel .B18.22
	DD	imagerel .unwind.SCN_INIT.B1_B21
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SCN_INIT.B114_B115	DD	imagerel .B18.114
	DD	imagerel .B18.116
	DD	imagerel .unwind.SCN_INIT.B114_B115
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SCN_INIT.B116_B123	DD	33
	DD	imagerel .B18.22
	DD	imagerel .B18.70
	DD	imagerel .unwind.SCN_INIT.B22_B69
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SCN_INIT.B116_B123	DD	imagerel .B18.116
	DD	imagerel .B18.124
	DD	imagerel .unwind.SCN_INIT.B116_B123
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SCN_INIT.B124_B125	DD	33
	DD	imagerel .B18.1
	DD	imagerel .B18.22
	DD	imagerel .unwind.SCN_INIT.B1_B21
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SCN_INIT.B124_B125	DD	imagerel .B18.124
	DD	imagerel .B18.126
	DD	imagerel .unwind.SCN_INIT.B124_B125
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.69_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_0.33	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DD 4 DUP (0H)	; pad
	DB 2 DUP ( 0H)	; pad
SCN_INIT$format_pack.0.5	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	36
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	5
	DB	0
	DB	0
	DB	0
	DB	28
	DB	0
	DB	1
	DB	0
	DB	40
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	28
	DB	0
	DB	1
	DB	0
	DB	41
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	36
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	5
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	36
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	5
	DB	0
	DB	0
	DB	0
	DB	28
	DB	0
	DB	1
	DB	0
	DB	40
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	28
	DB	0
	DB	1
	DB	0
	DB	41
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	36
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	5
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
.2.69_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_0.34	DD	0000001d4H,000000000H
.2.69_2_kmpc_loc_struct_pack.18	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.69_2__kmpc_loc_pack.17
.2.69_2__kmpc_loc_pack.17	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	83
	DB	67
	DB	78
	DB	95
	DB	73
	DB	78
	DB	73
	DB	84
	DB	59
	DB	54
	DB	52
	DB	50
	DB	59
	DB	54
	DB	52
	DB	50
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.69_2_kmpc_loc_struct_pack.26	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.69_2__kmpc_loc_pack.25
.2.69_2__kmpc_loc_pack.25	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	83
	DB	67
	DB	78
	DB	95
	DB	73
	DB	78
	DB	73
	DB	84
	DB	59
	DB	54
	DB	52
	DB	50
	DB	59
	DB	56
	DB	49
	DB	49
	DB	59
	DB	59
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_164.0.5	DD	853048
	DD	1705016
	DD	3802168
	DD	1
	DB	0
	DB 3 DUP ( 0H)	; pad
__NLITPACK_4.0.5	DD	045610000H
__STRLITPACK_165.0.5	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_166.0.5	DD	131337
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_167.0.5	DD	66616
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_170.0.5	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_171.0.5	DD	131337
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_172.0.5	DD	66616
	DB	2
	DB 3 DUP ( 0H)	; pad
__NLITPACK_5.0.5	DD	0
__NLITPACK_6.0.5	DD	-1
__STRLITPACK_168.0.5	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_169.0.5	DD	65801
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_173.0.5	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_174.0.5	DD	65801
	DB	2
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  SCN_INIT
_TEXT	SEGMENT      'CODE'
; -- Begin  INITIAL
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC INITIAL
; --- INITIAL
INITIAL	PROC 
.B19.1::                        ; Preds .B19.0
                                ; Execution count [0.00e+000]
L95::
                                                          ;5.12
        push      rbp                                           ;5.12
        push      rbx                                           ;5.12
        push      rdi                                           ;5.12
        push      r12                                           ;5.12
        push      r13                                           ;5.12
        push      r14                                           ;5.12
        push      r15                                           ;5.12
        sub       rsp, 3888                                     ;5.12
        lea       rbp, QWORD PTR [48+rsp]                       ;5.12
        lea       rcx, QWORD PTR [.2.70_2_kmpc_loc_struct_pack.12] ;5.12
        lea       r14, QWORD PTR [__ImageBase]                  ;5.12
        call      __kmpc_global_thread_num                      ;5.12
                                ; LOE rsi r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.342::                      ; Preds .B19.1
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.70_2_kmpv_SURFACE_FI_mp_SRFDOS_V$3503_cache_0.27] ;5.12
        mov       r12d, eax                                     ;5.12
        test      rcx, rcx                                      ;5.12
        je        .B19.3        ; Prob 50%                      ;5.12
                                ; LOE rcx rsi r14 r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.2::                        ; Preds .B19.342
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [r12*8]                        ;5.12
        cdqe                                                    ;5.12
        mov       r13, QWORD PTR [rcx+rax]                      ;5.12
        test      r13, r13                                      ;5.12
        jne       .B19.5        ; Prob 50%                      ;5.12
                                ; LOE rsi r13 r14 r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.3::                        ; Preds .B19.342 .B19.2
                                ; Execution count [0.00e+000]
        mov       rbx, rsp                                      ;5.12
        lea       rcx, QWORD PTR [.2.70_2_kmpc_loc_struct_pack.20] ;5.12
        lea       r8, QWORD PTR [SURFACE_FI_mp_SRFDOS]          ;5.12
        mov       edx, r12d                                     ;5.12
        mov       r9, QWORD PTR [.2.70_2_kmpv_SURFACE_FI_mp_SRFDOS_V$3503_size_0.28] ;5.12
        lea       rax, QWORD PTR [.2.70_2_kmpv_SURFACE_FI_mp_SRFDOS_V$3503_cache_0.27] ;5.12
        mov       QWORD PTR [32+rbx], rax                       ;5.12
        call      __kmpc_threadprivate_cached                   ;5.12
                                ; LOE rax rsi r14 r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.343::                      ; Preds .B19.3
                                ; Execution count [0.00e+000]
        mov       r13, rax                                      ;5.12
                                ; LOE rsi r13 r14 r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.5::                        ; Preds .B19.343 .B19.2
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.70_2_kmpv_INITIAL$BLK.STEP_P_FI_mp_MYTID_V$105a_cache_1.29] ;5.12
        test      rcx, rcx                                      ;5.12
        je        .B19.7        ; Prob 50%                      ;5.12
                                ; LOE rcx rsi r13 r14 r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.6::                        ; Preds .B19.5
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [r12*8]                        ;5.12
        cdqe                                                    ;5.12
        mov       rbx, QWORD PTR [rcx+rax]                      ;5.12
        test      rbx, rbx                                      ;5.12
        jne       .B19.9        ; Prob 50%                      ;5.12
                                ; LOE rbx rsi r13 r14 r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.7::                        ; Preds .B19.5 .B19.6
                                ; Execution count [0.00e+000]
        mov       rbx, rsp                                      ;5.12
        lea       rcx, QWORD PTR [.2.70_2_kmpc_loc_struct_pack.20] ;5.12
        lea       r8, QWORD PTR [STEP_P_FI_CMN]                 ;5.12
        mov       edx, r12d                                     ;5.12
        mov       r9, QWORD PTR [.2.70_2_kmpv_INITIAL$BLK.STEP_P_FI_mp_MYTID_V$105a_size_1.30] ;5.12
        lea       rax, QWORD PTR [.2.70_2_kmpv_INITIAL$BLK.STEP_P_FI_mp_MYTID_V$105a_cache_1.29] ;5.12
        mov       QWORD PTR [32+rbx], rax                       ;5.12
        call      __kmpc_threadprivate_cached                   ;5.12
                                ; LOE rax rsi r13 r14 r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.344::                      ; Preds .B19.7
                                ; Execution count [0.00e+000]
        mov       rbx, rax                                      ;5.12
                                ; LOE rbx rsi r13 r14 r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.9::                        ; Preds .B19.344 .B19.6
                                ; Execution count [0.00e+000]
        mov       rcx, QWORD PTR [.2.70_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_2.31] ;5.12
        test      rcx, rcx                                      ;5.12
        je        .B19.11       ; Prob 50%                      ;5.12
                                ; LOE rcx rbx rsi r13 r14 r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.10::                       ; Preds .B19.9
                                ; Execution count [0.00e+000]
        lea       eax, DWORD PTR [r12*8]                        ;5.12
        cdqe                                                    ;5.12
        mov       rdi, QWORD PTR [rcx+rax]                      ;5.12
        test      rdi, rdi                                      ;5.12
        jne       .B19.13       ; Prob 50%                      ;5.12
                                ; LOE rbx rsi rdi r13 r14 r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.11::                       ; Preds .B19.9 .B19.10
                                ; Execution count [0.00e+000]
        mov       rdi, rsp                                      ;5.12
        lea       rcx, QWORD PTR [.2.70_2_kmpc_loc_struct_pack.20] ;5.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;5.12
        mov       edx, r12d                                     ;5.12
        mov       r9, QWORD PTR [.2.70_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_2.32] ;5.12
        lea       rax, QWORD PTR [.2.70_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_2.31] ;5.12
        mov       QWORD PTR [32+rdi], rax                       ;5.12
        call      __kmpc_threadprivate_cached                   ;5.12
                                ; LOE rax rbx rsi r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.345::                      ; Preds .B19.11
                                ; Execution count [0.00e+000]
        mov       rdi, rax                                      ;5.12
                                ; LOE rbx rsi rdi r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.13::                       ; Preds .B19.345 .B19.10
                                ; Execution count [1.00e+000]
        mov       r10, rsp                                      ;63.6
        mov       edx, 256                                      ;63.6
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_INP]         ;63.6
        lea       r8, QWORD PTR [2741+rbp]                      ;63.6
        mov       r9, rdx                                       ;63.6
        xor       r12d, r12d                                    ;47.1
        mov       QWORD PTR [376+rbx], r12                      ;47.1
        xor       eax, eax                                      ;40.1
        mov       DWORD PTR [rbx], 1                            ;59.1
        lea       rbx, QWORD PTR [2997+rbp]                     ;63.6
        mov       DWORD PTR [SURFACE_FI_mp_SRFDEP], eax         ;40.1
        mov       DWORD PTR [r13], eax                          ;41.1
        mov       DWORD PTR [SAMPLER_FI_mp_LBINOUT], eax        ;43.1
        mov       DWORD PTR [SURFACE_FI_mp_SRFADOS], eax        ;44.1
        mov       DWORD PTR [CHEM_FI_mp_LCHEMAMBDOSRES], eax    ;45.1
        mov       QWORD PTR [SURFACE_FI_mp_PSRFDEP], r12        ;48.1
        mov       QWORD PTR [SURFACE_FI_mp_PSRFDOS], r12        ;48.1
        mov       QWORD PTR [SURFACE_FI_mp_PAUXDEP], r12        ;48.1
        mov       QWORD PTR [SURFACE_FI_mp_PAUXDEP+24], r12     ;48.1
        mov       QWORD PTR [SURFACE_FI_mp_PAUXDOS], r12        ;48.1
        mov       QWORD PTR [SURFACE_FI_mp_PAUXDOS+24], r12     ;48.1
        mov       QWORD PTR [SURFACE_FI_mp_PSRFADOS], r12       ;49.1
        mov       QWORD PTR [SURFACE_FI_mp_PAUXADOS], r12       ;49.1
        mov       QWORD PTR [SURFACE_FI_mp_PAUXADOS+24], r12    ;49.1
        mov       DWORD PTR [INTER_FI_mp_LPROCESSALL], eax      ;52.1
        mov       DWORD PTR [SAMPLER_FI_mp_NSMP], eax           ;56.1
        mov       DWORD PTR [FLAGS_FI_mp_MULTICOMP], eax        ;57.1
        mov       DWORD PTR [FLAGS_FI_mp_SAMPAMB], eax          ;58.1
        mov       QWORD PTR [32+r10], rbx                       ;63.6
        mov       QWORD PTR [40+r10], 256                       ;63.6
        call      SPLITNAME                                     ;63.6
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.14::                       ; Preds .B19.13
                                ; Execution count [1.00e+000]
        mov       rax, rsp                                      ;64.5
        lea       rcx, QWORD PTR [2741+rbp]                     ;64.5
        mov       edx, 256                                      ;64.5
        lea       r8, QWORD PTR [__STRLITPACK_99]               ;64.5
        mov       r9d, 1                                        ;64.5
        mov       DWORD PTR [32+rax], 0                         ;64.5
        call      for_f90_index                                 ;64.5
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.346::                      ; Preds .B19.14
                                ; Execution count [1.00e+000]
        mov       DWORD PTR [3688+rbp], eax                     ;64.1
        cmp       eax, 1                                        ;65.7
        jle       .B19.28       ; Prob 16%                      ;65.7
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.15::                       ; Preds .B19.346
                                ; Execution count [8.40e-001]
        cmp       eax, 65                                       ;65.21
        jg        .B19.28       ; Prob 50%                      ;65.21
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.16::                       ; Preds .B19.15
                                ; Execution count [4.20e-001]
        movsxd    rax, eax                                      ;66.10
        mov       rbx, rsp                                      ;66.3
        dec       rax                                           ;66.10
        lea       rcx, QWORD PTR [PROJECT_FI_mp_NAME]           ;66.3
        lea       r8, QWORD PTR [2741+rbp]                      ;66.3
        cmovle    rax, r12                                      ;66.3
        mov       edx, 64                                       ;66.3
        mov       r9, rax                                       ;66.3
        mov       QWORD PTR [32+rbx], r12                       ;66.3
        call      for_cpystr                                    ;66.3
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.17::                       ; Preds .B19.16
                                ; Execution count [4.20e-001]
        mov       r15, rsp                                      ;77.1
        lea       rcx, QWORD PTR [3760+rbp]                     ;77.1
        mov       r8, 012083a4ff03H                             ;77.1
        lea       r9, QWORD PTR [__STRLITPACK_100.0.1]          ;77.1
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_INP]          ;77.1
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_INP]         ;77.1
        lea       rbx, QWORD PTR [__STRLITPACK_95]              ;77.1
        lea       r10, QWORD PTR [__STRLITPACK_94]              ;77.1
        mov       QWORD PTR [rcx], 0                            ;77.1
        lea       r11, QWORD PTR [3640+rbp]                     ;77.1
        mov       QWORD PTR [-120+rcx], 256                     ;77.1
        mov       QWORD PTR [-112+rcx], rax                     ;77.1
        mov       QWORD PTR [-104+rcx], 3                       ;77.1
        mov       QWORD PTR [-96+rcx], rbx                      ;77.1
        mov       QWORD PTR [-88+rcx], 4                        ;77.1
        mov       QWORD PTR [-80+rcx], r10                      ;77.1
        mov       QWORD PTR [32+r15], r11                       ;77.1
        call      for_open                                      ;77.1
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.18::                       ; Preds .B19.17
                                ; Execution count [4.20e-001]
        test      eax, eax                                      ;78.9
        je        .B19.23       ; Prob 22%                      ;78.9
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.19::                       ; Preds .B19.18
                                ; Execution count [3.28e-001]
        mov       rax, rsp                                      ;80.3
        mov       rcx, rdi                                      ;80.3
        mov       edx, 80                                       ;80.3
        lea       r8, QWORD PTR [__STRLITPACK_93]               ;80.3
        mov       r9d, 7                                        ;80.3
        mov       DWORD PTR [464+rdi], 4                        ;79.3
        mov       QWORD PTR [32+rax], 0                         ;80.3
        call      for_cpystr                                    ;80.3
                                ; LOE rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.20::                       ; Preds .B19.19
                                ; Execution count [3.28e-001]
        mov       rax, rsp                                      ;81.3
        lea       rcx, QWORD PTR [80+rdi]                       ;81.3
        mov       edx, 128                                      ;81.3
        lea       r8, QWORD PTR [__STRLITPACK_92]               ;81.3
        mov       r9d, 37                                       ;81.3
        mov       QWORD PTR [32+rax], 0                         ;81.3
        call      for_cpystr                                    ;81.3
                                ; LOE rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.21::                       ; Preds .B19.20
                                ; Execution count [3.28e-001]
        mov       rbx, rsp                                      ;82.8
        lea       rcx, QWORD PTR [208+rdi]                      ;82.8
        mov       edx, 128                                      ;82.8
        lea       r8, QWORD PTR [__STRLITPACK_91]               ;82.8
        mov       r9d, 5                                        ;82.8
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_INP]         ;82.8
        mov       QWORD PTR [32+rbx], rax                       ;82.8
        mov       QWORD PTR [40+rbx], 256                       ;82.8
        call      REPORTFILENAME                                ;82.8
                                ; LOE rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.22::                       ; Preds .B19.21
                                ; Execution count [3.28e-001]
        mov       rax, rsp                                      ;83.3
        add       rdi, 336                                      ;83.3
        mov       rcx, rdi                                      ;83.3
        mov       edx, 128                                      ;83.3
        lea       r8, QWORD PTR [__STRLITPACK_90]               ;83.3
        mov       r9d, 21                                       ;83.3
        mov       QWORD PTR [32+rax], 0                         ;83.3
        call      for_cpystr                                    ;83.3
        lea       rbx, QWORD PTR [3253+rbp]                     ;83.3
        jmp       .B19.31       ; Prob 100%                     ;83.3
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.23::                       ; Preds .B19.18
                                ; Execution count [9.24e-002]
        mov       rax, rsp                                      ;87.1
        lea       rcx, QWORD PTR [3381+rbp]                     ;87.1
        mov       edx, 128                                      ;87.1
        lea       r8, QWORD PTR [__STRLITPACK_89]               ;87.1
        mov       r9d, 20                                       ;87.1
        mov       QWORD PTR [32+rax], 0                         ;87.1
        call      for_cpystr                                    ;87.1
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.24::                       ; Preds .B19.23
                                ; Execution count [9.24e-002]
        mov       rax, rsp                                      ;88.1
        lea       rcx, QWORD PTR [3509+rbp]                     ;88.1
        mov       edx, 128                                      ;88.1
        lea       r8, QWORD PTR [__STRLITPACK_88]               ;88.1
        mov       r9d, 1                                        ;88.1
        mov       QWORD PTR [32+rax], 0                         ;88.1
        call      for_cpystr                                    ;88.1
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.25::                       ; Preds .B19.24
                                ; Execution count [9.24e-002]
        mov       rax, rsp                                      ;89.1
        lea       rbx, QWORD PTR [3253+rbp]                     ;89.1
        mov       rcx, rbx                                      ;89.1
        mov       edx, 128                                      ;89.1
        lea       r8, QWORD PTR [__STRLITPACK_87]               ;89.1
        mov       r9d, 1                                        ;89.1
        mov       QWORD PTR [32+rax], 0                         ;89.1
        call      for_cpystr                                    ;89.1
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.26::                       ; Preds .B19.25
                                ; Execution count [9.24e-002]
        mov       rax, rsp                                      ;90.6
        mov       edx, 128                                      ;90.6
        mov       r9, rdx                                       ;90.6
        lea       rcx, QWORD PTR [3381+rbp]                     ;90.6
        lea       r8, QWORD PTR [3509+rbp]                      ;90.6
        mov       QWORD PTR [32+rax], rbx                       ;90.6
        mov       QWORD PTR [40+rax], 128                       ;90.6
        call      WRITE_PROGRESS                                ;90.6
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.27::                       ; Preds .B19.26
                                ; Execution count [9.24e-002]
        cmp       DWORD PTR [464+rdi], 0                        ;91.12
        jne       .B19.31       ; Prob 95%                      ;91.12
        jmp       .B19.38       ; Prob 100%                     ;91.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.28::                       ; Preds .B19.346 .B19.15
                                ; Execution count [5.80e-001]
        mov       rax, rsp                                      ;69.3
        mov       rcx, rdi                                      ;69.3
        mov       edx, 80                                       ;69.3
        lea       r8, QWORD PTR [__STRLITPACK_98]               ;69.3
        mov       r9d, 7                                        ;69.3
        mov       DWORD PTR [464+rdi], 3                        ;68.3
        mov       QWORD PTR [32+rax], 0                         ;69.3
        call      for_cpystr                                    ;69.3
                                ; LOE rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.29::                       ; Preds .B19.28
                                ; Execution count [5.80e-001]
        mov       rax, rsp                                      ;70.3
        lea       rcx, QWORD PTR [80+rdi]                       ;70.3
        mov       edx, 128                                      ;70.3
        lea       r8, QWORD PTR [__STRLITPACK_97]               ;70.3
        mov       r9d, 48                                       ;70.3
        mov       QWORD PTR [32+rax], 0                         ;70.3
        call      for_cpystr                                    ;70.3
                                ; LOE rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.30::                       ; Preds .B19.29
                                ; Execution count [5.80e-001]
        mov       rbx, rsp                                      ;71.8
        add       rdi, 208                                      ;71.8
        mov       rcx, rdi                                      ;71.8
        mov       edx, 128                                      ;71.8
        lea       r8, QWORD PTR [__STRLITPACK_96]               ;71.8
        mov       r9d, 5                                        ;71.8
        lea       rax, QWORD PTR [PROJECT_FI_mp_NAME]           ;71.8
        mov       QWORD PTR [32+rbx], rax                       ;71.8
        mov       QWORD PTR [40+rbx], 64                        ;71.8
        call      REPORTFILENAME                                ;71.8
        lea       rbx, QWORD PTR [3253+rbp]                     ;77.1
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.31::                       ; Preds .B19.30 .B19.22 .B19.44 .B19.114 .B19.248
                                ;       .B19.316 .B19.283 .B19.267 .B19.239 .B19.234
                                ;       .B19.241 .B19.217 .B19.111 .B19.104 .B19.244
                                ;       .B19.312 .B19.275 .B19.265 .B19.261 .B19.254
                                ;       .B19.252 .B19.126 .B19.116 .B19.51 .B19.331
                                ;       .B19.57 .B19.59 .B19.66 .B19.68 .B19.70
                                ;       .B19.320 .B19.77 .B19.79 .B19.85 .B19.318
                                ;       .B19.89 .B19.95 .B19.97 .B19.39 .B19.129
                                ;       .B19.131 .B19.133 .B19.141 .B19.143 .B19.149
                                ;       .B19.156 .B19.159 .B19.170 .B19.180 .B19.190
                                ;       .B19.197 .B19.27
                                ; Execution count [1.00e+000]
        mov       rax, rsp                                      ;520.8
        lea       rcx, QWORD PTR [3760+rbp]                     ;520.8
        mov       r8, 012083a4ff03H                             ;520.8
        lea       r9, QWORD PTR [__STRLITPACK_117.0.1]          ;520.8
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_INP]          ;520.8
        mov       QWORD PTR [rcx], r12                          ;520.8
        mov       QWORD PTR [32+rax], r12                       ;520.8
        call      for_close                                     ;520.8
                                ; LOE rbx rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.32::                       ; Preds .B19.31
                                ; Execution count [1.00e+000]
        mov       edx, 64                                       ;522.9
        lea       rdi, QWORD PTR [3696+rbp]                     ;522.9
        mov       rcx, rdi                                      ;522.9
        lea       r8, QWORD PTR [PROJECT_FI_mp_NAME]            ;522.9
        mov       r9, rdx                                       ;522.9
        call      for_trim                                      ;522.9
                                ; LOE rbx rsi rdi eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.33::                       ; Preds .B19.32
                                ; Execution count [1.00e+000]
        mov       edx, 2                                        ;522.1
        lea       rcx, QWORD PTR [3808+rbp]                     ;522.1
        mov       r9d, 128                                      ;522.1
        lea       r8, QWORD PTR [3381+rbp]                      ;522.1
        mov       QWORD PTR [rcx], rdi                          ;522.19
        lea       rdi, QWORD PTR [__STRLITPACK_7]               ;522.19
        movsxd    rax, eax                                      ;522.9
        mov       QWORD PTR [8+rcx], rax                        ;522.19
        mov       QWORD PTR [16+rcx], rdi                       ;522.19
        mov       QWORD PTR [24+rcx], 14                        ;522.19
        call      for_concat                                    ;522.1
                                ; LOE rbx rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.34::                       ; Preds .B19.33
                                ; Execution count [1.00e+000]
        mov       rax, rsp                                      ;523.1
        lea       rcx, QWORD PTR [3509+rbp]                     ;523.1
        mov       edx, 128                                      ;523.1
        lea       r8, QWORD PTR [__STRLITPACK_6]                ;523.1
        mov       r9d, 1                                        ;523.1
        mov       QWORD PTR [32+rax], 0                         ;523.1
        call      for_cpystr                                    ;523.1
                                ; LOE rbx rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.35::                       ; Preds .B19.34
                                ; Execution count [1.00e+000]
        mov       rax, rsp                                      ;524.1
        mov       rcx, rbx                                      ;524.1
        mov       edx, 128                                      ;524.1
        lea       r8, QWORD PTR [__STRLITPACK_5]                ;524.1
        mov       r9d, 1                                        ;524.1
        mov       QWORD PTR [32+rax], 0                         ;524.1
        call      for_cpystr                                    ;524.1
                                ; LOE rbx rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.36::                       ; Preds .B19.35
                                ; Execution count [1.00e+000]
        mov       rax, rsp                                      ;525.6
        mov       edx, 128                                      ;525.6
        mov       r9, rdx                                       ;525.6
        lea       rcx, QWORD PTR [3381+rbp]                     ;525.6
        lea       r8, QWORD PTR [3509+rbp]                      ;525.6
        mov       QWORD PTR [32+rax], rbx                       ;525.6
        mov       QWORD PTR [40+rax], 128                       ;525.6
        call      WRITE_PROGRESS                                ;525.6
                                ; LOE rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.37::                       ; Preds .B19.36
                                ; Execution count [1.00e+000]
        lea       rsp, QWORD PTR [3840+rbp]                     ;545.1
        pop       r15                                           ;545.1
        pop       r14                                           ;545.1
        pop       r13                                           ;545.1
        pop       r12                                           ;545.1
        pop       rdi                                           ;545.1
        pop       rbx                                           ;545.1
        pop       rbp                                           ;545.1
        ret                                                     ;545.1
                                ; LOE
.B19.38::                       ; Preds .B19.27
                                ; Execution count [4.62e-003]: Infreq
;       INIT_CLOCK
        call      INIT_CLOCK                                    ;93.6
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.39::                       ; Preds .B19.38
                                ; Execution count [4.62e-003]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;94.12
        jne       .B19.31       ; Prob 95%                      ;94.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.40::                       ; Preds .B19.39
                                ; Execution count [2.31e-004]: Infreq
        lea       rcx, QWORD PTR [__NLITPACK_0.0.1]             ;96.6
        call      ENABLESCIPUFFHALT                             ;96.6
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.41::                       ; Preds .B19.40
                                ; Execution count [2.31e-004]: Infreq
        lea       rcx, QWORD PTR [FILES_FI_mp_LUN_INP]          ;98.6
        call      READNAMELISTCTRL                              ;98.6
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.42::                       ; Preds .B19.41
                                ; Execution count [2.31e-004]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;99.12
        je        .B19.45       ; Prob 22%                      ;99.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.43::                       ; Preds .B19.42 .B19.326 .B19.329
                                ; Execution count [1.82e-004]: Infreq
        mov       rax, rsp                                      ;541.1
        mov       rcx, rdi                                      ;541.1
        mov       edx, 80                                       ;541.1
        lea       r8, QWORD PTR [__STRLITPACK_1]                ;541.1
        mov       r9d, 7                                        ;541.1
        mov       QWORD PTR [32+rax], 0                         ;541.1
        call      for_cpystr                                    ;541.1
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.44::                       ; Preds .B19.43
                                ; Execution count [1.82e-004]: Infreq
        mov       r10, rsp                                      ;542.6
        add       rdi, 208                                      ;542.6
        mov       rcx, rdi                                      ;542.6
        mov       edx, 128                                      ;542.6
        lea       r8, QWORD PTR [__STRLITPACK_0]                ;542.6
        mov       r9d, 5                                        ;542.6
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_INP]         ;542.6
        mov       QWORD PTR [32+r10], rax                       ;542.6
        mov       QWORD PTR [40+r10], 256                       ;542.6
        call      REPORTFILENAME                                ;542.6
        jmp       .B19.31       ; Prob 100%                     ;542.6
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.45::                       ; Preds .B19.42
                                ; Execution count [5.08e-005]: Infreq
        lea       rcx, QWORD PTR [__NLITPACK_1.0.1]             ;101.6
        call      SET_MXGRD                                     ;101.6
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.46::                       ; Preds .B19.45
                                ; Execution count [5.08e-005]: Infreq
        mov       edx, 64                                       ;105.9
        lea       r15, QWORD PTR [2640+rbp]                     ;105.9
        mov       rcx, r15                                      ;105.9
        lea       r8, QWORD PTR [PROJECT_FI_mp_NAME]            ;105.9
        mov       r9, rdx                                       ;105.9
        call      for_trim                                      ;105.9
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.47::                       ; Preds .B19.46
                                ; Execution count [5.08e-005]: Infreq
        mov       edx, 2                                        ;105.1
        lea       rcx, QWORD PTR [2704+rbp]                     ;105.1
        mov       r9d, 128                                      ;105.1
        lea       r8, QWORD PTR [3381+rbp]                      ;105.1
        movsxd    rax, eax                                      ;105.9
        lea       r10, QWORD PTR [__STRLITPACK_86]              ;105.19
        mov       QWORD PTR [rcx], r15                          ;105.19
        mov       QWORD PTR [8+rcx], rax                        ;105.19
        mov       QWORD PTR [16+rcx], r10                       ;105.19
        mov       QWORD PTR [24+rcx], 15                        ;105.19
        call      for_concat                                    ;105.1
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.48::                       ; Preds .B19.47
                                ; Execution count [5.08e-005]: Infreq
        mov       rax, rsp                                      ;106.1
        lea       rcx, QWORD PTR [3509+rbp]                     ;106.1
        mov       edx, 128                                      ;106.1
        lea       r8, QWORD PTR [__STRLITPACK_85]               ;106.1
        mov       r9d, 1                                        ;106.1
        mov       QWORD PTR [32+rax], 0                         ;106.1
        call      for_cpystr                                    ;106.1
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.49::                       ; Preds .B19.48
                                ; Execution count [5.08e-005]: Infreq
        mov       rax, rsp                                      ;107.1
        mov       rcx, rbx                                      ;107.1
        mov       edx, 128                                      ;107.1
        lea       r8, QWORD PTR [__STRLITPACK_84]               ;107.1
        mov       r9d, 1                                        ;107.1
        mov       QWORD PTR [32+rax], 0                         ;107.1
        call      for_cpystr                                    ;107.1
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.50::                       ; Preds .B19.49
                                ; Execution count [5.08e-005]: Infreq
        mov       rax, rsp                                      ;108.6
        mov       edx, 128                                      ;108.6
        mov       r9, rdx                                       ;108.6
        lea       rcx, QWORD PTR [3381+rbp]                     ;108.6
        lea       r8, QWORD PTR [3509+rbp]                      ;108.6
        mov       QWORD PTR [32+rax], rbx                       ;108.6
        mov       QWORD PTR [40+rax], 128                       ;108.6
        call      WRITE_PROGRESS                                ;108.6
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.51::                       ; Preds .B19.50
                                ; Execution count [5.08e-005]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;109.12
        jne       .B19.31       ; Prob 50%                      ;109.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.52::                       ; Preds .B19.51
                                ; Execution count [2.54e-005]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_RESTART], 1             ;111.5
        je        .B19.321      ; Prob 7%                       ;111.5
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.53::                       ; Preds .B19.52
                                ; Execution count [2.36e-005]: Infreq
        mov       rax, rsp                                      ;113.3
        lea       rcx, QWORD PTR [3381+rbp]                     ;113.3
        mov       edx, 128                                      ;113.3
        lea       r8, QWORD PTR [2736+rbp]                      ;113.3
        mov       r9d, 1                                        ;113.3
        mov       BYTE PTR [r8], 0                              ;113.11
        mov       QWORD PTR [32+rax], 0                         ;113.3
        call      for_cpystr                                    ;113.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.54::                       ; Preds .B19.53
                                ; Execution count [2.36e-005]: Infreq
        mov       rax, rsp                                      ;114.3
        lea       rcx, QWORD PTR [3509+rbp]                     ;114.3
        mov       edx, 128                                      ;114.3
        lea       r8, QWORD PTR [__STRLITPACK_83]               ;114.3
        mov       r9d, 26                                       ;114.3
        mov       QWORD PTR [32+rax], 0                         ;114.3
        call      for_cpystr                                    ;114.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.55::                       ; Preds .B19.54
                                ; Execution count [2.36e-005]: Infreq
        mov       rax, rsp                                      ;115.3
        mov       rcx, rbx                                      ;115.3
        mov       edx, 128                                      ;115.3
        lea       r8, QWORD PTR [2740+rbp]                      ;115.3
        mov       r9d, 1                                        ;115.3
        mov       BYTE PTR [r8], 0                              ;115.11
        mov       QWORD PTR [32+rax], 0                         ;115.3
        call      for_cpystr                                    ;115.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.56::                       ; Preds .B19.55
                                ; Execution count [2.36e-005]: Infreq
        mov       rax, rsp                                      ;116.8
        mov       edx, 128                                      ;116.8
        mov       r9, rdx                                       ;116.8
        lea       rcx, QWORD PTR [3381+rbp]                     ;116.8
        lea       r8, QWORD PTR [3509+rbp]                      ;116.8
        mov       QWORD PTR [32+rax], rbx                       ;116.8
        mov       QWORD PTR [40+rax], 128                       ;116.8
        call      WRITE_PROGRESS                                ;116.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.57::                       ; Preds .B19.56
                                ; Execution count [2.36e-005]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;117.14
        jne       .B19.31       ; Prob 50%                      ;117.14
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.58::                       ; Preds .B19.57
                                ; Execution count [1.18e-005]: Infreq
        mov       DWORD PTR [FLAGS_FI_mp_CREATE], 0             ;118.3
        call      OLD_START                                     ;120.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.59::                       ; Preds .B19.58
                                ; Execution count [1.18e-005]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;121.14
        jne       .B19.31       ; Prob 50%                      ;121.14
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.60::                       ; Preds .B19.59
                                ; Execution count [5.89e-006]: Infreq
        mov       rax, rsp                                      ;123.3
        lea       rcx, QWORD PTR [3381+rbp]                     ;123.3
        mov       edx, 128                                      ;123.3
        lea       r8, QWORD PTR [2632+rbp]                      ;123.3
        mov       r9d, 1                                        ;123.3
        mov       BYTE PTR [r8], 0                              ;123.11
        mov       QWORD PTR [32+rax], 0                         ;123.3
        call      for_cpystr                                    ;123.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.61::                       ; Preds .B19.60
                                ; Execution count [5.89e-006]: Infreq
        mov       rax, rsp                                      ;124.3
        lea       rcx, QWORD PTR [3509+rbp]                     ;124.3
        mov       edx, 128                                      ;124.3
        lea       r8, QWORD PTR [__STRLITPACK_82]               ;124.3
        mov       r9d, 17                                       ;124.3
        mov       QWORD PTR [32+rax], 0                         ;124.3
        call      for_cpystr                                    ;124.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.62::                       ; Preds .B19.61
                                ; Execution count [5.89e-006]: Infreq
        mov       rax, rsp                                      ;125.3
        mov       rcx, rbx                                      ;125.3
        mov       edx, 128                                      ;125.3
        lea       r8, QWORD PTR [2636+rbp]                      ;125.3
        mov       r9d, 1                                        ;125.3
        mov       BYTE PTR [r8], 0                              ;125.11
        mov       QWORD PTR [32+rax], 0                         ;125.3
        call      for_cpystr                                    ;125.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.64::                       ; Preds .B19.334 .B19.62
                                ; Execution count [5.90e-006]: Infreq
        mov       rax, rsp                                      ;150.8
        mov       edx, 128                                      ;150.8
        mov       r9, rdx                                       ;150.8
        lea       rcx, QWORD PTR [3381+rbp]                     ;150.8
        lea       r8, QWORD PTR [3509+rbp]                      ;150.8
        mov       QWORD PTR [32+rax], rbx                       ;150.8
        mov       QWORD PTR [40+rax], 128                       ;150.8
        call      WRITE_PROGRESS                                ;150.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.65::                       ; Preds .B19.64
                                ; Execution count [5.90e-006]: Infreq
;       SET_CLASS_RUN_FLAGS
        call      SET_CLASS_RUN_FLAGS                           ;156.6
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.66::                       ; Preds .B19.65
                                ; Execution count [5.90e-006]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;157.12
        jne       .B19.31       ; Prob 78%                      ;157.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.67::                       ; Preds .B19.66
                                ; Execution count [1.30e-006]: Infreq
        call      CHECK_PROGRESS                                ;159.6
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.68::                       ; Preds .B19.67
                                ; Execution count [1.30e-006]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;160.12
        jne       .B19.31       ; Prob 78%                      ;160.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.69::                       ; Preds .B19.68
                                ; Execution count [2.85e-007]: Infreq
;       SET_END_TIME
        call      SET_END_TIME                                  ;164.6
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.70::                       ; Preds .B19.69
                                ; Execution count [2.85e-007]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;165.12
        jne       .B19.31       ; Prob 50%                      ;165.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.71::                       ; Preds .B19.70
                                ; Execution count [1.43e-007]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_MULTICOMP], 1           ;169.5
        jne       .B19.319      ; Prob 3%                       ;169.5
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.72::                       ; Preds .B19.71 .B19.320
                                ; Execution count [1.40e-007]: Infreq
        mov       rax, rsp                                      ;176.1
        lea       rcx, QWORD PTR [3381+rbp]                     ;176.1
        mov       edx, 128                                      ;176.1
        lea       r8, QWORD PTR [2620+rbp]                      ;176.1
        mov       r9d, 1                                        ;176.1
        mov       BYTE PTR [r8], 0                              ;176.8
        mov       QWORD PTR [32+rax], 0                         ;176.1
        call      for_cpystr                                    ;176.1
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.73::                       ; Preds .B19.72
                                ; Execution count [1.40e-007]: Infreq
        mov       r11, rsp                                      ;180.3
        lea       rax, QWORD PTR [__STRLITPACK_79]              ;180.3
        mov       r10d, DWORD PTR [FLAGS_FI_mp_CREATE]          ;177.1
        lea       r8, QWORD PTR [__STRLITPACK_78]               ;180.3
        and       r10d, 1                                       ;177.5
        lea       rcx, QWORD PTR [3509+rbp]                     ;180.3
        lea       r9, QWORD PTR [24+r10*4]                      ;180.3
        cmovne    r8, rax                                       ;180.3
        mov       edx, 128                                      ;180.3
        mov       QWORD PTR [32+r11], 0                         ;180.3
        call      for_cpystr                                    ;180.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.74::                       ; Preds .B19.73
                                ; Execution count [1.40e-007]: Infreq
        mov       rax, rsp                                      ;182.1
        mov       rcx, rbx                                      ;182.1
        mov       edx, 128                                      ;182.1
        lea       r8, QWORD PTR [2624+rbp]                      ;182.1
        mov       r9d, 1                                        ;182.1
        mov       BYTE PTR [r8], 0                              ;182.9
        mov       QWORD PTR [32+rax], 0                         ;182.1
        call      for_cpystr                                    ;182.1
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.75::                       ; Preds .B19.74
                                ; Execution count [1.40e-007]: Infreq
        mov       rax, rsp                                      ;183.6
        mov       edx, 128                                      ;183.6
        mov       r9, rdx                                       ;183.6
        lea       rcx, QWORD PTR [3381+rbp]                     ;183.6
        lea       r8, QWORD PTR [3509+rbp]                      ;183.6
        mov       QWORD PTR [32+rax], rbx                       ;183.6
        mov       QWORD PTR [40+rax], 128                       ;183.6
        call      WRITE_PROGRESS                                ;183.6
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.76::                       ; Preds .B19.75
                                ; Execution count [1.40e-007]: Infreq
        call      INIT_MET                                      ;185.6
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.77::                       ; Preds .B19.76
                                ; Execution count [1.40e-007]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;186.12
        jne       .B19.31       ; Prob 78%                      ;186.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.78::                       ; Preds .B19.77
                                ; Execution count [3.09e-008]: Infreq
        call      CHECK_PROGRESS                                ;188.6
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.79::                       ; Preds .B19.78
                                ; Execution count [3.09e-008]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;189.12
        jne       .B19.31       ; Prob 78%                      ;189.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.80::                       ; Preds .B19.79
                                ; Execution count [6.79e-009]: Infreq
        mov       edx, 64                                       ;191.9
        lea       r15, QWORD PTR [2512+rbp]                     ;191.9
        mov       rcx, r15                                      ;191.9
        lea       r8, QWORD PTR [PROJECT_FI_mp_NAME]            ;191.9
        mov       r9, rdx                                       ;191.9
        call      for_trim                                      ;191.9
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.81::                       ; Preds .B19.80
                                ; Execution count [6.79e-009]: Infreq
        mov       edx, 2                                        ;191.1
        lea       rcx, QWORD PTR [2584+rbp]                     ;191.1
        mov       r9d, 128                                      ;191.1
        lea       r8, QWORD PTR [3381+rbp]                      ;191.1
        movsxd    rax, eax                                      ;191.9
        lea       r10, QWORD PTR [__STRLITPACK_77]              ;191.19
        mov       QWORD PTR [rcx], r15                          ;191.19
        mov       QWORD PTR [8+rcx], rax                        ;191.19
        mov       QWORD PTR [16+rcx], r10                       ;191.19
        mov       QWORD PTR [24+rcx], 15                        ;191.19
        call      for_concat                                    ;191.1
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.82::                       ; Preds .B19.81
                                ; Execution count [6.79e-009]: Infreq
        mov       rax, rsp                                      ;192.1
        lea       rcx, QWORD PTR [3509+rbp]                     ;192.1
        mov       edx, 128                                      ;192.1
        lea       r8, QWORD PTR [__STRLITPACK_76]               ;192.1
        mov       r9d, 1                                        ;192.1
        mov       QWORD PTR [32+rax], 0                         ;192.1
        call      for_cpystr                                    ;192.1
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.83::                       ; Preds .B19.82
                                ; Execution count [6.79e-009]: Infreq
        mov       rax, rsp                                      ;193.1
        mov       rcx, rbx                                      ;193.1
        mov       edx, 128                                      ;193.1
        lea       r8, QWORD PTR [__STRLITPACK_75]               ;193.1
        mov       r9d, 1                                        ;193.1
        mov       QWORD PTR [32+rax], 0                         ;193.1
        call      for_cpystr                                    ;193.1
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.84::                       ; Preds .B19.83
                                ; Execution count [6.79e-009]: Infreq
        mov       rax, rsp                                      ;194.6
        mov       edx, 128                                      ;194.6
        mov       r9, rdx                                       ;194.6
        lea       rcx, QWORD PTR [3381+rbp]                     ;194.6
        lea       r8, QWORD PTR [3509+rbp]                      ;194.6
        mov       QWORD PTR [32+rax], rbx                       ;194.6
        mov       QWORD PTR [40+rax], 128                       ;194.6
        call      WRITE_PROGRESS                                ;194.6
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.85::                       ; Preds .B19.84
                                ; Execution count [6.79e-009]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;195.12
        jne       .B19.31       ; Prob 50%                      ;195.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.86::                       ; Preds .B19.85
                                ; Execution count [3.40e-009]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_LWASH], 1               ;199.5
        jne       .B19.317      ; Prob 3%                       ;199.5
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.87::                       ; Preds .B19.86 .B19.318
                                ; Execution count [3.34e-009]: Infreq
        test      DWORD PTR [FLAGS_FI_mp_RUN_MODE], 128         ;206.5
        je        .B19.90       ; Prob 60%                      ;206.5
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.88::                       ; Preds .B19.87
                                ; Execution count [1.13e-010]: Infreq
;       INITADJOINTMAT
        call      INITADJOINTMAT                                ;207.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.89::                       ; Preds .B19.88
                                ; Execution count [1.13e-010]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;208.14
        jne       .B19.31       ; Prob 50%                      ;208.14
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.90::                       ; Preds .B19.87 .B19.89
                                ; Execution count [3.28e-009]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_RESTART], 1             ;213.10
        je        .B19.127      ; Prob 29%                      ;213.10
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.91::                       ; Preds .B19.90
                                ; Execution count [2.31e-009]: Infreq
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;355.3
        pxor      xmm1, xmm1                                    ;355.15
        ucomiss   xmm0, xmm1                                    ;355.9
        jne       .B19.96       ; Prob 21%                      ;355.9
        jp        .B19.96       ; Prob 0%                       ;355.9
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.92::                       ; Preds .B19.91
                                ; Execution count [1.81e-009]: Infreq
        cmp       DWORD PTR [MET_FI_mp_NUMMET], 0               ;355.28
        jle       .B19.96       ; Prob 0%                       ;355.28
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.93::                       ; Preds .B19.92
                                ; Execution count [1.79e-009]: Infreq
        call      SWIMGETHMIN                                   ;356.12
                                ; LOE rbx rsi rdi r12 xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.94::                       ; Preds .B19.93
                                ; Execution count [1.79e-009]: Infreq
        movss     DWORD PTR [MET_FI_mp_HMIN], xmm0              ;356.5
        call      SETMETGRID                                    ;357.11
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.95::                       ; Preds .B19.94
                                ; Execution count [1.79e-009]: Infreq
        cmp       eax, 1                                        ;358.13
        jne       .B19.31       ; Prob 99%                      ;358.13
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.96::                       ; Preds .B19.91 .B19.92 .B19.95
                                ; Execution count [5.35e-010]: Infreq
        lea       rcx, QWORD PTR [MATL_FI_mp_NTYPM]             ;361.8
        call      INIT_SRF_BLOCKS                               ;361.8
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.97::                       ; Preds .B19.222 .B19.96
                                ; Execution count [5.35e-010]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;362.14
        jne       .B19.31       ; Prob 50%                      ;362.14
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.98::                       ; Preds .B19.97 .B19.361
                                ; Execution count [2.67e-010]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_CREATE], 1              ;368.5
        je        .B19.115      ; Prob 29%                      ;368.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.99::                       ; Preds .B19.98
                                ; Execution count [1.88e-010]: Infreq
        mov       rax, rsp                                      ;369.3
        lea       rcx, QWORD PTR [3381+rbp]                     ;369.3
        mov       edx, 128                                      ;369.3
        lea       r8, QWORD PTR [2468+rbp]                      ;369.3
        mov       r9d, 1                                        ;369.3
        mov       BYTE PTR [r8], 0                              ;369.11
        mov       QWORD PTR [32+rax], 0                         ;369.3
        call      for_cpystr                                    ;369.3
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.100::                      ; Preds .B19.99
                                ; Execution count [1.88e-010]: Infreq
        mov       rax, rsp                                      ;370.3
        lea       rcx, QWORD PTR [3509+rbp]                     ;370.3
        mov       edx, 128                                      ;370.3
        lea       r8, QWORD PTR [2576+rbp]                      ;370.3
        mov       r9d, 1                                        ;370.3
        mov       BYTE PTR [r8], 0                              ;370.11
        mov       QWORD PTR [32+rax], 0                         ;370.3
        call      for_cpystr                                    ;370.3
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.101::                      ; Preds .B19.100
                                ; Execution count [1.88e-010]: Infreq
        mov       rax, rsp                                      ;371.3
        mov       rcx, rbx                                      ;371.3
        mov       edx, 128                                      ;371.3
        lea       r8, QWORD PTR [__STRLITPACK_53]               ;371.3
        mov       r9d, 22                                       ;371.3
        mov       QWORD PTR [32+rax], 0                         ;371.3
        call      for_cpystr                                    ;371.3
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.102::                      ; Preds .B19.101
                                ; Execution count [1.88e-010]: Infreq
        mov       rax, rsp                                      ;372.8
        mov       edx, 128                                      ;372.8
        mov       r9, rdx                                       ;372.8
        lea       rcx, QWORD PTR [3381+rbp]                     ;372.8
        lea       r8, QWORD PTR [3509+rbp]                      ;372.8
        mov       QWORD PTR [32+rax], rbx                       ;372.8
        mov       QWORD PTR [40+rax], 128                       ;372.8
        call      WRITE_PROGRESS                                ;372.8
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.103::                      ; Preds .B19.102
                                ; Execution count [1.88e-010]: Infreq
        call      WRITE_PUFF                                    ;374.8
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.104::                      ; Preds .B19.103
                                ; Execution count [1.88e-010]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;375.14
        jne       .B19.31       ; Prob 50%                      ;375.14
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.105::                      ; Preds .B19.104
                                ; Execution count [9.40e-011]: Infreq
        mov       r13, rsp                                      ;377.3
        lea       rcx, QWORD PTR [3760+rbp]                     ;377.3
        mov       r8, 01208384ff01H                             ;377.3
        lea       r9, QWORD PTR [__STRLITPACK_104.0.1]          ;377.3
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;377.3
        lea       rax, QWORD PTR [__STRLITPACK_50]              ;377.3
        lea       r11, QWORD PTR [INITIAL$format_pack.0.1]      ;377.3
        lea       r10, QWORD PTR [2496+rbp]                     ;377.3
        mov       QWORD PTR [rcx], 0                            ;377.3
        mov       QWORD PTR [r10], 22                           ;377.3
        mov       QWORD PTR [8+r10], rax                        ;377.3
        mov       QWORD PTR [32+r13], r10                       ;377.3
        mov       QWORD PTR [40+r13], r11                       ;377.3
        call      for_write_seq_fmt                             ;377.3
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.106::                      ; Preds .B19.105
                                ; Execution count [9.40e-011]: Infreq
        test      eax, eax                                      ;377.3
        jne       .B19.111      ; Prob 50%                      ;377.3
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.107::                      ; Preds .B19.106
                                ; Execution count [4.70e-011]: Infreq
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;377.3
        lea       rcx, QWORD PTR [3760+rbp]                     ;377.3
        divss     xmm0, DWORD PTR [_2il0floatpacket.14]         ;377.3
        lea       rdx, QWORD PTR [__STRLITPACK_105.0.1]         ;377.3
        lea       r8, QWORD PTR [2472+rbp]                      ;377.3
        movss     DWORD PTR [r8], xmm0                          ;377.3
        call      for_write_seq_fmt_xmit                        ;377.3
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.108::                      ; Preds .B19.107
                                ; Execution count [4.70e-011]: Infreq
        test      eax, eax                                      ;377.3
        jne       .B19.111      ; Prob 50%                      ;377.3
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.109::                      ; Preds .B19.108
                                ; Execution count [2.35e-011]: Infreq
        lea       rdx, QWORD PTR [__STRLITPACK_106.0.1]         ;377.3
        lea       rcx, QWORD PTR [3760+rbp]                     ;377.3
        lea       rax, QWORD PTR [__STRLITPACK_49]              ;377.3
        lea       r8, QWORD PTR [2448+rbp]                      ;377.3
        mov       QWORD PTR [r8], 4                             ;377.3
        mov       QWORD PTR [8+r8], rax                         ;377.3
        call      for_write_seq_fmt_xmit                        ;377.3
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.111::                      ; Preds .B19.109 .B19.108 .B19.106
                                ; Execution count [9.40e-011]: Infreq
        test      eax, eax                                      ;377.3
        jle       .B19.31       ; Prob 16%                      ;377.3
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.112::                      ; Preds .B19.298 .B19.309 .B19.213 .B19.111
                                ; Execution count [7.90e-011]: Infreq
        mov       rax, rsp                                      ;533.1
        mov       rcx, rdi                                      ;533.1
        mov       edx, 80                                       ;533.1
        lea       r8, QWORD PTR [__STRLITPACK_4]                ;533.1
        mov       r9d, 7                                        ;533.1
        mov       DWORD PTR [464+rdi], 7                        ;532.1
        mov       QWORD PTR [32+rax], 0                         ;533.1
        call      for_cpystr                                    ;533.1
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.113::                      ; Preds .B19.112
                                ; Execution count [7.90e-011]: Infreq
        mov       rax, rsp                                      ;534.1
        lea       rcx, QWORD PTR [80+rdi]                       ;534.1
        mov       edx, 128                                      ;534.1
        lea       r8, QWORD PTR [__STRLITPACK_3]                ;534.1
        mov       r9d, 30                                       ;534.1
        mov       QWORD PTR [32+rax], 0                         ;534.1
        call      for_cpystr                                    ;534.1
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.114::                      ; Preds .B19.113
                                ; Execution count [7.90e-011]: Infreq
        mov       r10, rsp                                      ;535.6
        add       rdi, 208                                      ;535.6
        mov       rcx, rdi                                      ;535.6
        mov       edx, 128                                      ;535.6
        lea       r8, QWORD PTR [__STRLITPACK_2]                ;535.6
        mov       r9d, 5                                        ;535.6
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_LOG]         ;535.6
        mov       QWORD PTR [32+r10], rax                       ;535.6
        mov       QWORD PTR [40+r10], 256                       ;535.6
        call      REPORTFILENAME                                ;535.6
        jmp       .B19.31       ; Prob 100%                     ;535.6
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.115::                      ; Preds .B19.98
                                ; Execution count [7.95e-011]: Infreq
        call      CHECK_PROGRESS                                ;382.6
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.116::                      ; Preds .B19.115
                                ; Execution count [7.95e-011]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;383.12
        jne       .B19.31       ; Prob 50%                      ;383.12
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.117::                      ; Preds .B19.116
                                ; Execution count [3.98e-011]: Infreq
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;385.1
        pxor      xmm1, xmm1                                    ;385.12
        comiss    xmm0, xmm1                                    ;385.7
        jbe       .B19.124      ; Prob 22%                      ;385.7
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.118::                      ; Preds .B19.117
                                ; Execution count [3.10e-011]: Infreq
        mov       r13d, DWORD PTR [MET_FI_mp_NUMMET]            ;385.7
        test      r13d, r13d                                    ;385.25
        jle       .B19.124      ; Prob 5%                       ;385.25
                                ; LOE rbx rsi rdi r12 r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.119::                      ; Preds .B19.118
                                ; Execution count [2.88e-011]: Infreq
        mov       DWORD PTR [3688+rbp], 1                       ;389.3
        mov       eax, 1                                        ;389.3
        movups    XMMWORD PTR [2480+rbp], xmm15                 ;389.3[spill]
        jmp       .B19.120      ; Prob 100%                     ;389.3
                                ; LOE rbx rsi rdi r12 eax r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B19.123::                      ; Preds .B19.122
                                ; Execution count [5.50e-011]: Infreq
        mov       DWORD PTR [3688+rbp], eax                     ;64.1
                                ; LOE rbx rsi rdi r12 eax r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B19.120::                      ; Preds .B19.123 .B19.119
                                ; Execution count [8.38e-011]: Infreq
        mov       r9, QWORD PTR [MET_FI_mp_METGRID+64]          ;390.11
        lea       rcx, QWORD PTR [3688+rbp]                     ;390.11
        movsxd    rax, eax                                      ;390.11
        neg       r9                                            ;390.11
        add       r9, rax                                       ;390.11
        imul      rdx, r9, 440                                  ;390.11
        add       rdx, QWORD PTR [MET_FI_mp_METGRID]            ;390.11
        call      SWIMPUTMIXINGHT                               ;390.11
                                ; LOE rbx rsi rdi r12 eax r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B19.121::                      ; Preds .B19.120
                                ; Execution count [8.38e-011]: Infreq
        cmp       eax, 1                                        ;391.13
        jne       .B19.241      ; Prob 20%                      ;391.13
                                ; LOE rbx rsi rdi r12 r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B19.122::                      ; Preds .B19.121
                                ; Execution count [6.70e-011]: Infreq
        mov       eax, DWORD PTR [3688+rbp]                     ;395.3
        inc       eax                                           ;395.3
        cmp       eax, r13d                                     ;395.3
        jle       .B19.123      ; Prob 82%                      ;395.3
        jmp       .B19.224      ; Prob 100%                     ;395.3
                                ; LOE rbx rsi rdi r12 eax r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B19.124::                      ; Preds .B19.240 .B19.224 .B19.118 .B19.117
                                ; Execution count [1.76e-011]: Infreq
        call      SWIMGETHMIN                                   ;419.8
                                ; LOE rbx rsi rdi r12 xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.125::                      ; Preds .B19.124
                                ; Execution count [1.76e-011]: Infreq
        movss     DWORD PTR [MET_FI_mp_HMIN], xmm0              ;419.1
        call      SETMETGRID                                    ;423.7
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.126::                      ; Preds .B19.125
                                ; Execution count [1.76e-011]: Infreq
        cmp       eax, 1                                        ;424.9
        jne       .B19.31       ; Prob 94%                      ;424.9
        jmp       .B19.242      ; Prob 100%                     ;424.9
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.127::                      ; Preds .B19.90
                                ; Execution count [9.76e-010]: Infreq
        call      SWIMGETHMIN                                   ;217.10
                                ; LOE rbx rsi rdi r12 r13 r14 xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.128::                      ; Preds .B19.127
                                ; Execution count [9.76e-010]: Infreq
        movss     DWORD PTR [MET_FI_mp_HMIN], xmm0              ;217.3
        call      SETMETGRID                                    ;219.9
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.129::                      ; Preds .B19.128
                                ; Execution count [9.76e-010]: Infreq
        cmp       eax, 1                                        ;220.11
        jne       .B19.31       ; Prob 94%                      ;220.11
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.130::                      ; Preds .B19.129
                                ; Execution count [4.97e-011]: Infreq
        call      SET_GRID                                      ;224.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.131::                      ; Preds .B19.130
                                ; Execution count [4.97e-011]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;225.14
        jne       .B19.31       ; Prob 95%                      ;225.14
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.132::                      ; Preds .B19.131
                                ; Execution count [2.49e-012]: Infreq
        lea       rcx, QWORD PTR [GRID_FI_mp_NZ]                ;229.8
        call      ALLOCATE_IP                                   ;229.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.133::                      ; Preds .B19.132
                                ; Execution count [2.49e-012]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;230.14
        jne       .B19.31       ; Prob 78%                      ;230.14
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.134::                      ; Preds .B19.133
                                ; Execution count [5.47e-013]: Infreq
        call      ZERO_IP                                       ;232.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.135::                      ; Preds .B19.134
                                ; Execution count [5.47e-013]: Infreq
        mov       rax, rsp                                      ;234.3
        lea       rcx, QWORD PTR [3381+rbp]                     ;234.3
        mov       edx, 128                                      ;234.3
        lea       r8, QWORD PTR [2424+rbp]                      ;234.3
        mov       r9d, 1                                        ;234.3
        mov       BYTE PTR [r8], 0                              ;234.11
        mov       QWORD PTR [32+rax], 0                         ;234.3
        call      for_cpystr                                    ;234.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.136::                      ; Preds .B19.135
                                ; Execution count [5.47e-013]: Infreq
        mov       rax, rsp                                      ;235.3
        lea       rcx, QWORD PTR [3509+rbp]                     ;235.3
        mov       edx, 128                                      ;235.3
        lea       r8, QWORD PTR [__STRLITPACK_74]               ;235.3
        mov       r9d, 29                                       ;235.3
        mov       QWORD PTR [32+rax], 0                         ;235.3
        call      for_cpystr                                    ;235.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.137::                      ; Preds .B19.136
                                ; Execution count [5.47e-013]: Infreq
        mov       rax, rsp                                      ;236.3
        mov       rcx, rbx                                      ;236.3
        mov       edx, 128                                      ;236.3
        lea       r8, QWORD PTR [2428+rbp]                      ;236.3
        mov       r9d, 1                                        ;236.3
        mov       BYTE PTR [r8], 0                              ;236.11
        mov       QWORD PTR [32+rax], 0                         ;236.3
        call      for_cpystr                                    ;236.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.138::                      ; Preds .B19.137
                                ; Execution count [5.47e-013]: Infreq
        mov       rax, rsp                                      ;237.8
        mov       edx, 128                                      ;237.8
        mov       r9, rdx                                       ;237.8
        lea       rcx, QWORD PTR [3381+rbp]                     ;237.8
        lea       r8, QWORD PTR [3509+rbp]                      ;237.8
        mov       QWORD PTR [32+rax], rbx                       ;237.8
        mov       QWORD PTR [40+rax], 128                       ;237.8
        call      WRITE_PROGRESS                                ;237.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.139::                      ; Preds .B19.138
                                ; Execution count [5.47e-013]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_MULTICOMP], 1           ;241.7
        je        .B19.142      ; Prob 60%                      ;241.7
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.140::                      ; Preds .B19.139
                                ; Execution count [2.19e-013]: Infreq
        call      CREATECHEMOUTPUT                              ;242.10
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.141::                      ; Preds .B19.140
                                ; Execution count [2.19e-013]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;243.16
        jne       .B19.31       ; Prob 78%                      ;243.16
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.142::                      ; Preds .B19.139 .B19.141
                                ; Execution count [3.76e-013]: Infreq
;       CREATE_SURFACE
        call      CREATE_SURFACE                                ;248.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.143::                      ; Preds .B19.142
                                ; Execution count [3.76e-013]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;249.14
        jne       .B19.31       ; Prob 50%                      ;249.14
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.144::                      ; Preds .B19.143
                                ; Execution count [1.88e-013]: Infreq
        mov       rax, rsp                                      ;251.3
        lea       rcx, QWORD PTR [3381+rbp]                     ;251.3
        mov       edx, 128                                      ;251.3
        lea       r8, QWORD PTR [2416+rbp]                      ;251.3
        mov       r9d, 1                                        ;251.3
        mov       BYTE PTR [r8], 0                              ;251.11
        mov       QWORD PTR [32+rax], 0                         ;251.3
        call      for_cpystr                                    ;251.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.145::                      ; Preds .B19.144
                                ; Execution count [1.88e-013]: Infreq
        mov       rax, rsp                                      ;252.3
        lea       rcx, QWORD PTR [3509+rbp]                     ;252.3
        mov       edx, 128                                      ;252.3
        lea       r8, QWORD PTR [2420+rbp]                      ;252.3
        mov       r9d, 1                                        ;252.3
        mov       BYTE PTR [r8], 0                              ;252.11
        mov       QWORD PTR [32+rax], 0                         ;252.3
        call      for_cpystr                                    ;252.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.146::                      ; Preds .B19.145
                                ; Execution count [1.88e-013]: Infreq
        mov       rax, rsp                                      ;253.3
        mov       rcx, rbx                                      ;253.3
        mov       edx, 128                                      ;253.3
        lea       r8, QWORD PTR [__STRLITPACK_73]               ;253.3
        mov       r9d, 26                                       ;253.3
        mov       QWORD PTR [32+rax], 0                         ;253.3
        call      for_cpystr                                    ;253.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.147::                      ; Preds .B19.146
                                ; Execution count [1.88e-013]: Infreq
        mov       rax, rsp                                      ;254.8
        mov       edx, 128                                      ;254.8
        mov       r9, rdx                                       ;254.8
        lea       rcx, QWORD PTR [3381+rbp]                     ;254.8
        lea       r8, QWORD PTR [3509+rbp]                      ;254.8
        mov       QWORD PTR [32+rax], rbx                       ;254.8
        mov       QWORD PTR [40+rax], 128                       ;254.8
        call      WRITE_PROGRESS                                ;254.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.148::                      ; Preds .B19.147
                                ; Execution count [1.88e-013]: Infreq
        call      CREATE_OUTPUT                                 ;258.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.149::                      ; Preds .B19.148
                                ; Execution count [1.88e-013]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;259.14
        jne       .B19.31       ; Prob 50%                      ;259.14
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.150::                      ; Preds .B19.149
                                ; Execution count [9.41e-014]: Infreq
        mov       rax, rsp                                      ;263.16
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_RST]         ;263.16
        mov       edx, 256                                      ;263.16
        lea       r8, QWORD PTR [__STRLITPACK_72]               ;263.16
        mov       r9d, 1                                        ;263.16
        mov       QWORD PTR [32+rax], 3                         ;263.16
        call      for_cpstr                                     ;263.16
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.361::                      ; Preds .B19.150
                                ; Execution count [9.41e-014]: Infreq
        test      eax, eax                                      ;263.16
        je        .B19.98       ; Prob 50%                      ;263.16
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.151::                      ; Preds .B19.361
                                ; Execution count [4.71e-014]: Infreq
        mov       rax, rsp                                      ;265.5
        lea       rcx, QWORD PTR [3381+rbp]                     ;265.5
        mov       edx, 128                                      ;265.5
        lea       r8, QWORD PTR [2344+rbp]                      ;265.5
        mov       r9d, 1                                        ;265.5
        mov       BYTE PTR [r8], 0                              ;265.13
        mov       QWORD PTR [32+rax], 0                         ;265.5
        call      for_cpystr                                    ;265.5
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.152::                      ; Preds .B19.151
                                ; Execution count [4.71e-014]: Infreq
        mov       rax, rsp                                      ;266.5
        lea       rcx, QWORD PTR [3509+rbp]                     ;266.5
        mov       edx, 128                                      ;266.5
        lea       r8, QWORD PTR [2348+rbp]                      ;266.5
        mov       r9d, 1                                        ;266.5
        mov       BYTE PTR [r8], 0                              ;266.13
        mov       QWORD PTR [32+rax], 0                         ;266.5
        call      for_cpystr                                    ;266.5
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.153::                      ; Preds .B19.152
                                ; Execution count [4.71e-014]: Infreq
        mov       rax, rsp                                      ;267.5
        mov       rcx, rbx                                      ;267.5
        mov       edx, 128                                      ;267.5
        lea       r8, QWORD PTR [__STRLITPACK_71]               ;267.5
        mov       r9d, 25                                       ;267.5
        mov       QWORD PTR [32+rax], 0                         ;267.5
        call      for_cpystr                                    ;267.5
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.154::                      ; Preds .B19.153
                                ; Execution count [4.71e-014]: Infreq
        mov       rax, rsp                                      ;268.10
        mov       edx, 128                                      ;268.10
        mov       r9, rdx                                       ;268.10
        lea       rcx, QWORD PTR [3381+rbp]                     ;268.10
        lea       r8, QWORD PTR [3509+rbp]                      ;268.10
        mov       QWORD PTR [32+rax], rbx                       ;268.10
        mov       QWORD PTR [40+rax], 128                       ;268.10
        call      WRITE_PROGRESS                                ;268.10
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.155::                      ; Preds .B19.154
                                ; Execution count [4.71e-014]: Infreq
        call      PUFF_RST                                      ;270.10
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.156::                      ; Preds .B19.155
                                ; Execution count [4.71e-014]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;271.16
        jne       .B19.31       ; Prob 50%                      ;271.16
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.157::                      ; Preds .B19.156
                                ; Execution count [2.35e-014]: Infreq
        cmp       DWORD PTR [PUFF_FI_mp_NPUF], 0                ;273.14
        jle       .B19.161      ; Prob 40%                      ;273.14
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.158::                      ; Preds .B19.157
                                ; Execution count [1.40e-014]: Infreq
        lea       rcx, QWORD PTR [__NLITPACK_0.0.1]             ;274.12
        lea       rdx, QWORD PTR [PUFF_FI_mp_NPUF]              ;274.12
        call      SET_IP                                        ;274.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.159::                      ; Preds .B19.158
                                ; Execution count [1.40e-014]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;275.18
        jne       .B19.31       ; Prob 78%                      ;275.18
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.160::                      ; Preds .B19.159
                                ; Execution count [3.09e-015]: Infreq
        lea       rcx, QWORD PTR [__NLITPACK_2.0.1]             ;276.12
        call      SET_TLEV                                      ;276.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.161::                      ; Preds .B19.160 .B19.157
                                ; Execution count [1.26e-014]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_SURFACE], 1             ;279.9
        je        .B19.171      ; Prob 60%                      ;279.9
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.162::                      ; Preds .B19.161
                                ; Execution count [5.03e-015]: Infreq
        mov       rax, rsp                                      ;280.7
        lea       rcx, QWORD PTR [3381+rbp]                     ;280.7
        mov       edx, 128                                      ;280.7
        lea       r8, QWORD PTR [2332+rbp]                      ;280.7
        mov       r9d, 1                                        ;280.7
        mov       BYTE PTR [r8], 0                              ;280.15
        mov       QWORD PTR [32+rax], 0                         ;280.7
        call      for_cpystr                                    ;280.7
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.163::                      ; Preds .B19.162
                                ; Execution count [5.03e-015]: Infreq
        mov       rax, rsp                                      ;281.7
        lea       rcx, QWORD PTR [3509+rbp]                     ;281.7
        mov       edx, 128                                      ;281.7
        lea       r8, QWORD PTR [2336+rbp]                      ;281.7
        mov       r9d, 1                                        ;281.7
        mov       BYTE PTR [r8], 0                              ;281.15
        mov       QWORD PTR [32+rax], 0                         ;281.7
        call      for_cpystr                                    ;281.7
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.164::                      ; Preds .B19.163
                                ; Execution count [5.03e-015]: Infreq
        mov       rax, rsp                                      ;282.7
        mov       rcx, rbx                                      ;282.7
        mov       edx, 128                                      ;282.7
        lea       r8, QWORD PTR [__STRLITPACK_70]               ;282.7
        mov       r9d, 39                                       ;282.7
        mov       QWORD PTR [32+rax], 0                         ;282.7
        call      for_cpystr                                    ;282.7
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.165::                      ; Preds .B19.164
                                ; Execution count [5.03e-015]: Infreq
        mov       rax, rsp                                      ;283.12
        mov       edx, 128                                      ;283.12
        mov       r9, rdx                                       ;283.12
        lea       rcx, QWORD PTR [3381+rbp]                     ;283.12
        lea       r8, QWORD PTR [3509+rbp]                      ;283.12
        mov       QWORD PTR [32+rax], rbx                       ;283.12
        mov       QWORD PTR [40+rax], 128                       ;283.12
        call      WRITE_PROGRESS                                ;283.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.166::                      ; Preds .B19.165
                                ; Execution count [5.03e-015]: Infreq
        mov       r10, rsp                                      ;285.18
        mov       edx, 256                                      ;285.18
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_RST]          ;285.18
        lea       rcx, QWORD PTR [1856+rbp]                     ;285.18
        mov       r9, rdx                                       ;285.18
        lea       rax, QWORD PTR [__STRLITPACK_69]              ;285.18
        mov       QWORD PTR [32+r10], rax                       ;285.18
        mov       QWORD PTR [40+r10], 3                         ;285.18
        call      ADDEXTENSION                                  ;285.18
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.167::                      ; Preds .B19.166
                                ; Execution count [5.03e-015]: Infreq
        mov       eax, 256                                      ;285.7
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.338::                      ; Preds .B19.338 .B19.167
                                ; Execution count [2.01e-014]: Infreq
        movups    xmm0, XMMWORD PTR [1840+rbp+rax]              ;285.7
        movups    xmm1, XMMWORD PTR [1824+rbp+rax]              ;285.7
        movups    xmm2, XMMWORD PTR [1808+rbp+rax]              ;285.7
        movups    xmm3, XMMWORD PTR [1792+rbp+rax]              ;285.7
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-16+r14+rax], xmm0 ;285.7
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-32+r14+rax], xmm1 ;285.7
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-48+r14+rax], xmm2 ;285.7
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-64+r14+rax], xmm3 ;285.7
        sub       rax, 64                                       ;285.7
        jne       .B19.338      ; Prob 75%                      ;285.7
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.168::                      ; Preds .B19.338
                                ; Execution count [5.03e-015]: Infreq
        mov       edx, 256                                      ;286.12
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_TMP]         ;286.12
        lea       r8, QWORD PTR [FILES_FI_mp_PATH_RST]          ;286.12
        mov       r9, rdx                                       ;286.12
        call      ADDPATH                                       ;286.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.169::                      ; Preds .B19.168
                                ; Execution count [5.03e-015]: Infreq
        lea       rcx, QWORD PTR [FILES_FI_mp_LUN_TMP]          ;288.12
        lea       rdx, QWORD PTR [SURFACE_FI_mp_SRFDEP]         ;288.12
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_TMP]          ;288.12
        mov       r9d, 256                                      ;288.12
        call      SURF_RST                                      ;288.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.170::                      ; Preds .B19.169
                                ; Execution count [5.03e-015]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;289.18
        jne       .B19.31       ; Prob 50%                      ;289.18
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.171::                      ; Preds .B19.161 .B19.170
                                ; Execution count [1.01e-014]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_DOSE], 1                ;292.9
        je        .B19.191      ; Prob 60%                      ;292.9
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.172::                      ; Preds .B19.171
                                ; Execution count [4.02e-015]: Infreq
        mov       rax, rsp                                      ;293.7
        lea       rcx, QWORD PTR [3381+rbp]                     ;293.7
        mov       edx, 128                                      ;293.7
        lea       r8, QWORD PTR [2204+rbp]                      ;293.7
        mov       r9d, 1                                        ;293.7
        mov       BYTE PTR [r8], 0                              ;293.15
        mov       QWORD PTR [32+rax], 0                         ;293.7
        call      for_cpystr                                    ;293.7
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.173::                      ; Preds .B19.172
                                ; Execution count [4.02e-015]: Infreq
        mov       rax, rsp                                      ;294.7
        lea       rcx, QWORD PTR [3509+rbp]                     ;294.7
        mov       edx, 128                                      ;294.7
        lea       r8, QWORD PTR [2280+rbp]                      ;294.7
        mov       r9d, 1                                        ;294.7
        mov       BYTE PTR [r8], 0                              ;294.15
        mov       QWORD PTR [32+rax], 0                         ;294.7
        call      for_cpystr                                    ;294.7
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.174::                      ; Preds .B19.173
                                ; Execution count [4.02e-015]: Infreq
        mov       rax, rsp                                      ;295.7
        mov       rcx, rbx                                      ;295.7
        mov       edx, 128                                      ;295.7
        lea       r8, QWORD PTR [__STRLITPACK_68]               ;295.7
        mov       r9d, 35                                       ;295.7
        mov       QWORD PTR [32+rax], 0                         ;295.7
        call      for_cpystr                                    ;295.7
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.175::                      ; Preds .B19.174
                                ; Execution count [4.02e-015]: Infreq
        mov       rax, rsp                                      ;296.12
        mov       edx, 128                                      ;296.12
        mov       r9, rdx                                       ;296.12
        lea       rcx, QWORD PTR [3381+rbp]                     ;296.12
        lea       r8, QWORD PTR [3509+rbp]                      ;296.12
        mov       QWORD PTR [32+rax], rbx                       ;296.12
        mov       QWORD PTR [40+rax], 128                       ;296.12
        call      WRITE_PROGRESS                                ;296.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.176::                      ; Preds .B19.175
                                ; Execution count [4.02e-015]: Infreq
        mov       r10, rsp                                      ;298.18
        mov       edx, 256                                      ;298.18
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_RST]          ;298.18
        lea       rcx, QWORD PTR [1600+rbp]                     ;298.18
        mov       r9, rdx                                       ;298.18
        lea       rax, QWORD PTR [__STRLITPACK_67]              ;298.18
        mov       QWORD PTR [32+r10], rax                       ;298.18
        mov       QWORD PTR [40+r10], 3                         ;298.18
        call      ADDEXTENSION                                  ;298.18
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.177::                      ; Preds .B19.176
                                ; Execution count [4.02e-015]: Infreq
        mov       eax, 256                                      ;298.7
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.339::                      ; Preds .B19.339 .B19.177
                                ; Execution count [1.61e-014]: Infreq
        movups    xmm0, XMMWORD PTR [1584+rbp+rax]              ;298.7
        movups    xmm1, XMMWORD PTR [1568+rbp+rax]              ;298.7
        movups    xmm2, XMMWORD PTR [1552+rbp+rax]              ;298.7
        movups    xmm3, XMMWORD PTR [1536+rbp+rax]              ;298.7
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-16+r14+rax], xmm0 ;298.7
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-32+r14+rax], xmm1 ;298.7
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-48+r14+rax], xmm2 ;298.7
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-64+r14+rax], xmm3 ;298.7
        sub       rax, 64                                       ;298.7
        jne       .B19.339      ; Prob 75%                      ;298.7
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.178::                      ; Preds .B19.339
                                ; Execution count [4.02e-015]: Infreq
        mov       edx, 256                                      ;299.12
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_TMP]         ;299.12
        lea       r8, QWORD PTR [FILES_FI_mp_PATH_RST]          ;299.12
        mov       r9, rdx                                       ;299.12
        call      ADDPATH                                       ;299.12
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.179::                      ; Preds .B19.178
                                ; Execution count [4.02e-015]: Infreq
        lea       rcx, QWORD PTR [FILES_FI_mp_LUN_TMP]          ;301.12
        mov       rdx, r13                                      ;301.12
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_TMP]          ;301.12
        mov       r9d, 256                                      ;301.12
        call      SURF_RST                                      ;301.12
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.180::                      ; Preds .B19.179
                                ; Execution count [4.02e-015]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;302.18
        jne       .B19.31       ; Prob 50%                      ;302.18
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.181::                      ; Preds .B19.180
                                ; Execution count [2.01e-015]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_MULTICOMP], 1           ;303.11
        je        .B19.191      ; Prob 60%                      ;303.11
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.182::                      ; Preds .B19.181
                                ; Execution count [8.05e-016]: Infreq
        mov       rax, rsp                                      ;305.9
        lea       rcx, QWORD PTR [3381+rbp]                     ;305.9
        mov       edx, 128                                      ;305.9
        lea       r8, QWORD PTR [732+rbp]                       ;305.9
        mov       r9d, 1                                        ;305.9
        mov       BYTE PTR [r8], 0                              ;305.17
        mov       QWORD PTR [32+rax], 0                         ;305.9
        call      for_cpystr                                    ;305.9
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.183::                      ; Preds .B19.182
                                ; Execution count [8.05e-016]: Infreq
        mov       rax, rsp                                      ;306.9
        lea       rcx, QWORD PTR [3509+rbp]                     ;306.9
        mov       edx, 128                                      ;306.9
        lea       r8, QWORD PTR [1020+rbp]                      ;306.9
        mov       r9d, 1                                        ;306.9
        mov       BYTE PTR [r8], 0                              ;306.17
        mov       QWORD PTR [32+rax], 0                         ;306.9
        call      for_cpystr                                    ;306.9
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.184::                      ; Preds .B19.183
                                ; Execution count [8.05e-016]: Infreq
        mov       rax, rsp                                      ;307.9
        mov       rcx, rbx                                      ;307.9
        mov       edx, 128                                      ;307.9
        lea       r8, QWORD PTR [__STRLITPACK_66]               ;307.9
        mov       r9d, 43                                       ;307.9
        mov       QWORD PTR [32+rax], 0                         ;307.9
        call      for_cpystr                                    ;307.9
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.185::                      ; Preds .B19.184
                                ; Execution count [8.05e-016]: Infreq
        mov       rax, rsp                                      ;308.14
        mov       edx, 128                                      ;308.14
        mov       r9, rdx                                       ;308.14
        lea       rcx, QWORD PTR [3381+rbp]                     ;308.14
        lea       r8, QWORD PTR [3509+rbp]                      ;308.14
        mov       QWORD PTR [32+rax], rbx                       ;308.14
        mov       QWORD PTR [40+rax], 128                       ;308.14
        call      WRITE_PROGRESS                                ;308.14
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.186::                      ; Preds .B19.185
                                ; Execution count [8.05e-016]: Infreq
        mov       r10, rsp                                      ;310.20
        mov       edx, 256                                      ;310.20
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_RST]          ;310.20
        lea       rcx, QWORD PTR [752+rbp]                      ;310.20
        mov       r9, rdx                                       ;310.20
        lea       rax, QWORD PTR [__STRLITPACK_65]              ;310.20
        mov       QWORD PTR [32+r10], rax                       ;310.20
        mov       QWORD PTR [40+r10], 4                         ;310.20
        call      ADDEXTENSION                                  ;310.20
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.187::                      ; Preds .B19.186
                                ; Execution count [8.05e-016]: Infreq
        mov       eax, 256                                      ;310.9
                                ; LOE rax rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.340::                      ; Preds .B19.340 .B19.187
                                ; Execution count [3.22e-015]: Infreq
        movups    xmm0, XMMWORD PTR [736+rbp+rax]               ;310.9
        movups    xmm1, XMMWORD PTR [720+rbp+rax]               ;310.9
        movups    xmm2, XMMWORD PTR [704+rbp+rax]               ;310.9
        movups    xmm3, XMMWORD PTR [688+rbp+rax]               ;310.9
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-16+r14+rax], xmm0 ;310.9
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-32+r14+rax], xmm1 ;310.9
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-48+r14+rax], xmm2 ;310.9
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-64+r14+rax], xmm3 ;310.9
        sub       rax, 64                                       ;310.9
        jne       .B19.340      ; Prob 75%                      ;310.9
                                ; LOE rax rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.188::                      ; Preds .B19.340
                                ; Execution count [8.05e-016]: Infreq
        mov       edx, 256                                      ;311.14
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_TMP]         ;311.14
        lea       r8, QWORD PTR [FILES_FI_mp_PATH_RST]          ;311.14
        mov       r9, rdx                                       ;311.14
        call      ADDPATH                                       ;311.14
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.189::                      ; Preds .B19.188
                                ; Execution count [8.05e-016]: Infreq
        lea       rcx, QWORD PTR [FILES_FI_mp_LUN_TMP]          ;313.14
        lea       rdx, QWORD PTR [SURFACE_FI_mp_SRFADOS]        ;313.14
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_TMP]          ;313.14
        mov       r9d, 256                                      ;313.14
        call      SURF_RST                                      ;313.14
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.190::                      ; Preds .B19.189
                                ; Execution count [8.05e-016]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;314.20
        jne       .B19.31       ; Prob 50%                      ;314.20
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.191::                      ; Preds .B19.171 .B19.181 .B19.190
                                ; Execution count [7.64e-015]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_CREATE], 1              ;318.14
        jne       .B19.198      ; Prob 39%                      ;318.14
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.192::                      ; Preds .B19.191
                                ; Execution count [4.59e-015]: Infreq
        mov       rax, rsp                                      ;319.7
        lea       rcx, QWORD PTR [3381+rbp]                     ;319.7
        mov       edx, 128                                      ;319.7
        lea       r8, QWORD PTR [2300+rbp]                      ;319.7
        mov       r9d, 1                                        ;319.7
        mov       BYTE PTR [r8], 0                              ;319.15
        mov       QWORD PTR [32+rax], 0                         ;319.7
        call      for_cpystr                                    ;319.7
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.193::                      ; Preds .B19.192
                                ; Execution count [4.59e-015]: Infreq
        mov       rax, rsp                                      ;320.7
        lea       rcx, QWORD PTR [3509+rbp]                     ;320.7
        mov       edx, 128                                      ;320.7
        lea       r8, QWORD PTR [2316+rbp]                      ;320.7
        mov       r9d, 1                                        ;320.7
        mov       BYTE PTR [r8], 0                              ;320.15
        mov       QWORD PTR [32+rax], 0                         ;320.7
        call      for_cpystr                                    ;320.7
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.194::                      ; Preds .B19.193
                                ; Execution count [4.59e-015]: Infreq
        mov       rax, rsp                                      ;321.7
        mov       rcx, rbx                                      ;321.7
        mov       edx, 128                                      ;321.7
        lea       r8, QWORD PTR [__STRLITPACK_64]               ;321.7
        mov       r9d, 22                                       ;321.7
        mov       QWORD PTR [32+rax], 0                         ;321.7
        call      for_cpystr                                    ;321.7
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.195::                      ; Preds .B19.194
                                ; Execution count [4.59e-015]: Infreq
        mov       rax, rsp                                      ;322.12
        mov       edx, 128                                      ;322.12
        mov       r9, rdx                                       ;322.12
        lea       rcx, QWORD PTR [3381+rbp]                     ;322.12
        lea       r8, QWORD PTR [3509+rbp]                      ;322.12
        mov       QWORD PTR [32+rax], rbx                       ;322.12
        mov       QWORD PTR [40+rax], 128                       ;322.12
        call      WRITE_PROGRESS                                ;322.12
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.196::                      ; Preds .B19.195
                                ; Execution count [4.59e-015]: Infreq
        call      WRITE_PUFF                                    ;324.12
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.197::                      ; Preds .B19.196
                                ; Execution count [4.59e-015]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;325.18
        jne       .B19.31       ; Prob 50%                      ;325.18
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.198::                      ; Preds .B19.191 .B19.197
                                ; Execution count [5.35e-015]: Infreq
        lea       rcx, QWORD PTR [PROJECT_FI_mp_SMPFILE]        ;329.9
        mov       edx, 256                                      ;329.9
        call      for_len_trim                                  ;329.9
                                ; LOE rbx rsi rdi r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.362::                      ; Preds .B19.198
                                ; Execution count [5.35e-015]: Infreq
        test      eax, eax                                      ;329.27
        jle       .B19.204      ; Prob 40%                      ;329.27
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.199::                      ; Preds .B19.362
                                ; Execution count [3.19e-015]: Infreq
        mov       r10, rsp                                      ;330.18
        mov       edx, 256                                      ;330.18
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_RST]          ;330.18
        lea       rcx, QWORD PTR [1344+rbp]                     ;330.18
        mov       r9, rdx                                       ;330.18
        lea       rax, QWORD PTR [__STRLITPACK_63]              ;330.18
        mov       QWORD PTR [32+r10], rax                       ;330.18
        mov       QWORD PTR [40+r10], 3                         ;330.18
        call      ADDEXTENSION                                  ;330.18
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.200::                      ; Preds .B19.199
                                ; Execution count [3.19e-015]: Infreq
        mov       eax, 256                                      ;330.7
                                ; LOE rax rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.341::                      ; Preds .B19.341 .B19.200
                                ; Execution count [1.28e-014]: Infreq
        movups    xmm0, XMMWORD PTR [1328+rbp+rax]              ;330.7
        movups    xmm1, XMMWORD PTR [1312+rbp+rax]              ;330.7
        movups    xmm2, XMMWORD PTR [1296+rbp+rax]              ;330.7
        movups    xmm3, XMMWORD PTR [1280+rbp+rax]              ;330.7
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-16+r14+rax], xmm0 ;330.7
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-32+r14+rax], xmm1 ;330.7
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-48+r14+rax], xmm2 ;330.7
        movups    XMMWORD PTR [imagerel(FILES_FI_mp_FILE_TMP)-64+r14+rax], xmm3 ;330.7
        sub       rax, 64                                       ;330.7
        jne       .B19.341      ; Prob 75%                      ;330.7
                                ; LOE rax rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.201::                      ; Preds .B19.341
                                ; Execution count [3.19e-015]: Infreq
        mov       edx, 256                                      ;331.12
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_TMP]         ;331.12
        lea       r8, QWORD PTR [FILES_FI_mp_PATH_RST]          ;331.12
        mov       r9, rdx                                       ;331.12
        call      ADDPATH                                       ;331.12
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.202::                      ; Preds .B19.201
                                ; Execution count [3.19e-015]: Infreq
        mov       edx, 256                                      ;332.13
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_TMP]         ;332.13
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_SMP]          ;332.13
        mov       r9, rdx                                       ;332.13
        call      SYSCOPYFILE                                   ;332.13
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.203::                      ; Preds .B19.202
                                ; Execution count [3.19e-015]: Infreq
        cmp       eax, -1                                       ;333.15
        je        .B19.214      ; Prob 5%                       ;333.15
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.204::                      ; Preds .B19.362 .B19.203
                                ; Execution count [5.19e-015]: Infreq
        mov       edx, 256                                      ;340.49
        lea       r14, QWORD PTR [1040+rbp]                     ;340.49
        mov       rcx, r14                                      ;340.49
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_RST]          ;340.49
        mov       r9, rdx                                       ;340.49
        lea       r10, QWORD PTR [__STRLITPACK_57]              ;340.47
        mov       QWORD PTR [2208+rbp], r10                     ;340.47
        mov       r15, rsp                                      ;340.5
        mov       QWORD PTR [2216+rbp], 13                      ;340.47
        call      for_trim                                      ;340.49
                                ; LOE rbx rsi rdi r12 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.205::                      ; Preds .B19.204
                                ; Execution count [5.19e-015]: Infreq
        movsxd    r13, eax                                      ;340.49
        lea       rdx, QWORD PTR [__STRLITPACK_56]              ;341.19
        mov       QWORD PTR [2232+rbp], r13                     ;340.47
        add       r13, 30                                       ;341.19
        mov       rax, r13                                      ;341.19
        mov       QWORD PTR [2224+rbp], r14                     ;340.47
        mov       QWORD PTR [2240+rbp], rdx                     ;341.19
        mov       QWORD PTR [2248+rbp], 17                      ;341.19
        add       rax, 15                                       ;341.19
        and       rax, -16                                      ;341.19
        call      __chkstk                                      ;341.19
        sub       rsp, rax                                      ;341.19
        lea       rax, QWORD PTR [48+rsp]                       ;341.19
                                ; LOE rax rbx rsi rdi r12 r13 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.365::                      ; Preds .B19.205
                                ; Execution count [5.19e-015]: Infreq
        mov       r14, rax                                      ;341.19
        lea       rcx, QWORD PTR [2208+rbp]                     ;341.19
        mov       edx, 3                                        ;341.19
        mov       r8, r14                                       ;341.19
        mov       r9, r13                                       ;341.19
        call      for_concat                                    ;341.19
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.206::                      ; Preds .B19.365
                                ; Execution count [5.19e-015]: Infreq
        mov       QWORD PTR [2264+rbp], r13                     ;340.5
        mov       r13, rsp                                      ;340.5
        mov       r8, 01208384ff01H                             ;340.5
        lea       rcx, QWORD PTR [3760+rbp]                     ;340.5
        lea       r9, QWORD PTR [__STRLITPACK_101.0.1]          ;340.5
        lea       r10, QWORD PTR [2264+rbp]                     ;340.5
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;340.5
        lea       r11, QWORD PTR [INITIAL$format_pack.0.1]      ;340.5
        mov       QWORD PTR [rcx], 0                            ;340.5
        mov       QWORD PTR [8+r10], r14                        ;340.5
        mov       QWORD PTR [32+r13], r10                       ;340.5
        mov       QWORD PTR [40+r13], r11                       ;340.5
        call      for_write_seq_fmt                             ;340.5
                                ; LOE rbx rsi rdi r12 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.207::                      ; Preds .B19.206
                                ; Execution count [5.19e-015]: Infreq
        test      eax, eax                                      ;340.5
        jne       .B19.212      ; Prob 50%                      ;340.5
                                ; LOE rbx rsi rdi r12 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.208::                      ; Preds .B19.207
                                ; Execution count [2.59e-015]: Infreq
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;340.5
        lea       rcx, QWORD PTR [3760+rbp]                     ;340.5
        divss     xmm0, DWORD PTR [_2il0floatpacket.14]         ;340.5
        lea       rdx, QWORD PTR [__STRLITPACK_102.0.1]         ;340.5
        lea       r8, QWORD PTR [2256+rbp]                      ;340.5
        movss     DWORD PTR [r8], xmm0                          ;340.5
        call      for_write_seq_fmt_xmit                        ;340.5
                                ; LOE rbx rsi rdi r12 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.209::                      ; Preds .B19.208
                                ; Execution count [2.59e-015]: Infreq
        test      eax, eax                                      ;340.5
        jne       .B19.212      ; Prob 50%                      ;340.5
                                ; LOE rbx rsi rdi r12 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.210::                      ; Preds .B19.209
                                ; Execution count [1.30e-015]: Infreq
        lea       rdx, QWORD PTR [__STRLITPACK_103.0.1]         ;340.5
        lea       rcx, QWORD PTR [3760+rbp]                     ;340.5
        lea       r9, QWORD PTR [__STRLITPACK_55]               ;340.5
        lea       r8, QWORD PTR [2112+rbp]                      ;340.5
        mov       QWORD PTR [r8], 4                             ;340.5
        mov       QWORD PTR [8+r8], r9                          ;340.5
        call      for_write_seq_fmt_xmit                        ;340.5
                                ; LOE rbx rsi rdi r12 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.212::                      ; Preds .B19.210 .B19.209 .B19.207
                                ; Execution count [5.19e-015]: Infreq
        test      eax, eax                                      ;340.5
        jle       .B19.218      ; Prob 16%                      ;340.5
                                ; LOE rbx rsi rdi r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.213::                      ; Preds .B19.212
                                ; Execution count [4.36e-015]: Infreq
        mov       rax, r15                                      ;340.5
        mov       rsp, rax                                      ;340.5
        jmp       .B19.112      ; Prob 100%                     ;340.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.214::                      ; Preds .B19.203
                                ; Execution count [1.63e-016]: Infreq
        mov       rax, rsp                                      ;334.9
        lea       rcx, QWORD PTR [80+rdi]                       ;334.9
        mov       edx, 128                                      ;334.9
        lea       r8, QWORD PTR [__STRLITPACK_62]               ;334.9
        mov       r9d, 17                                       ;334.9
        mov       QWORD PTR [32+rax], 0                         ;334.9
        call      for_cpystr                                    ;334.9
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.215::                      ; Preds .B19.214
                                ; Execution count [1.63e-016]: Infreq
        mov       edx, 256                                      ;335.20
        lea       r13, QWORD PTR [rbp]                          ;335.20
        mov       rcx, r13                                      ;335.20
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_TMP]          ;335.20
        mov       r9, rdx                                       ;335.20
        call      for_trim                                      ;335.20
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.216::                      ; Preds .B19.215
                                ; Execution count [1.63e-016]: Infreq
        mov       QWORD PTR [640+rbp], r13                      ;335.34
        lea       r13, QWORD PTR [256+rbp]                      ;335.42
        mov       edx, 256                                      ;335.42
        mov       rcx, r13                                      ;335.42
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_SMP]          ;335.42
        mov       r9, rdx                                       ;335.42
        movsxd    rax, eax                                      ;335.20
        lea       r10, QWORD PTR [__STRLITPACK_61]              ;335.34
        mov       QWORD PTR [648+rbp], rax                      ;335.34
        mov       QWORD PTR [656+rbp], r10                      ;335.34
        mov       QWORD PTR [664+rbp], 2                        ;335.34
        call      for_trim                                      ;335.42
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.217::                      ; Preds .B19.216
                                ; Execution count [1.63e-016]: Infreq
        add       rdi, 208                                      ;335.9
        lea       rcx, QWORD PTR [640+rbp]                      ;335.9
        mov       edx, 3                                        ;335.9
        mov       r8, rdi                                       ;335.9
        mov       r9d, 128                                      ;335.9
        movsxd    rax, eax                                      ;335.42
        mov       QWORD PTR [32+rcx], r13                       ;335.40
        mov       QWORD PTR [40+rcx], rax                       ;335.40
        call      for_concat                                    ;335.9
        nop                                                     ;335.9
        jmp       .B19.31       ; Prob 100%                     ;335.9
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.218::                      ; Preds .B19.212
                                ; Execution count [8.30e-016]: Infreq
        mov       rax, r15                                      ;340.5
        mov       rsp, rax                                      ;340.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.371::                      ; Preds .B19.218
                                ; Execution count [8.30e-016]: Infreq
        mov       rax, rsp                                      ;343.5
        lea       rcx, QWORD PTR [3381+rbp]                     ;343.5
        mov       edx, 128                                      ;343.5
        lea       r8, QWORD PTR [1036+rbp]                      ;343.5
        mov       r9d, 1                                        ;343.5
        mov       BYTE PTR [r8], 0                              ;343.13
        mov       QWORD PTR [32+rax], 0                         ;343.5
        call      for_cpystr                                    ;343.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.219::                      ; Preds .B19.371
                                ; Execution count [8.30e-016]: Infreq
        mov       rax, rsp                                      ;344.5
        lea       rcx, QWORD PTR [3509+rbp]                     ;344.5
        mov       edx, 128                                      ;344.5
        lea       r8, QWORD PTR [2188+rbp]                      ;344.5
        mov       r9d, 1                                        ;344.5
        mov       BYTE PTR [r8], 0                              ;344.13
        mov       QWORD PTR [32+rax], 0                         ;344.5
        call      for_cpystr                                    ;344.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.220::                      ; Preds .B19.219
                                ; Execution count [8.30e-016]: Infreq
        mov       rax, rsp                                      ;345.5
        mov       rcx, rbx                                      ;345.5
        mov       edx, 128                                      ;345.5
        lea       r8, QWORD PTR [__STRLITPACK_54]               ;345.5
        mov       r9d, 25                                       ;345.5
        mov       QWORD PTR [32+rax], 0                         ;345.5
        call      for_cpystr                                    ;345.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.221::                      ; Preds .B19.220
                                ; Execution count [8.30e-016]: Infreq
        mov       rax, rsp                                      ;346.10
        mov       edx, 128                                      ;346.10
        mov       r9, rdx                                       ;346.10
        lea       rcx, QWORD PTR [3381+rbp]                     ;346.10
        lea       r8, QWORD PTR [3509+rbp]                      ;346.10
        mov       QWORD PTR [32+rax], rbx                       ;346.10
        mov       QWORD PTR [40+rax], 128                       ;346.10
        call      WRITE_PROGRESS                                ;346.10
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.222::                      ; Preds .B19.221
                                ; Execution count [8.30e-016]: Infreq
        call      WRITE_PRJ                                     ;348.10
        nop                                                     ;348.10
        jmp       .B19.97       ; Prob 100%                     ;348.10
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.224::                      ; Preds .B19.122
                                ; Execution count [1.21e-011]: Infreq
        mov       eax, DWORD PTR [MET_FI_mp_NBASEMET]           ;399.3
        mov       r13d, DWORD PTR [MET_FI_mp_NUMMET]            ;399.3
        movups    xmm15, XMMWORD PTR [2480+rbp]                 ;[spill]
        lea       edx, DWORD PTR [1+rax]                        ;399.3
        mov       DWORD PTR [3688+rbp], edx                     ;399.3
        cmp       r13d, eax                                     ;399.3
        jle       .B19.124      ; Prob 50%                      ;399.3
                                ; LOE rbx rsi rdi r12 edx r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.225::                      ; Preds .B19.224
                                ; Execution count [6.34e-012]: Infreq
        mov       rax, QWORD PTR [MET_FI_mp_METGRID+64]         ;400.5
        lea       rcx, QWORD PTR [2464+rbp]                     ;401.11
        movsxd    rdx, edx                                      ;400.14
        neg       rax                                           ;400.5
        add       rax, rdx                                      ;400.5
        imul      r10, rax, 440                                 ;400.5
        mov       r9, QWORD PTR [MET_FI_mp_METGRID]             ;400.5
        mov       r11d, DWORD PTR [36+r9+r10]                   ;400.5
        mov       DWORD PTR [rcx], r11d                         ;400.5
        call      SWIMADDSMOOTHFIELD                            ;401.11
                                ; LOE rbx rsi rdi r12 eax r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.226::                      ; Preds .B19.225
                                ; Execution count [6.34e-012]: Infreq
        cmp       eax, -1                                       ;402.5
        je        .B19.239      ; Prob 0%                       ;402.5
                                ; LOE rbx rsi rdi r12 eax r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.227::                      ; Preds .B19.226
                                ; Execution count [6.30e-012]: Infreq
        movups    XMMWORD PTR [2480+rbp], xmm15                 ;[spill]
                                ; LOE rbx rsi rdi r12 eax r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B19.228::                      ; Preds .B19.237 .B19.227
                                ; Execution count [9.38e-012]: Infreq
        test      eax, eax                                      ;402.5
        jne       .B19.235      ; Prob 50%                      ;402.5
                                ; LOE rbx rsi rdi r12 r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B19.229::                      ; Preds .B19.228
                                ; Execution count [4.69e-012]: Infreq
        mov       rax, rsp                                      ;407.7
        mov       rcx, rdi                                      ;407.7
        mov       edx, 80                                       ;407.7
        lea       r8, QWORD PTR [__STRLITPACK_46]               ;407.7
        mov       r9d, 8                                        ;407.7
        movups    xmm15, XMMWORD PTR [2480+rbp]                 ;[spill]
        mov       DWORD PTR [464+rdi], 3                        ;406.7
        mov       QWORD PTR [32+rax], 0                         ;407.7
        call      for_cpystr                                    ;407.7
        nop                                                     ;407.7
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.230::                      ; Preds .B19.229
                                ; Execution count [4.69e-012]: Infreq
        mov       r13, rsp                                      ;408.7
        lea       rcx, QWORD PTR [3760+rbp]                     ;408.7
        mov       rdx, 01208384ff00H                            ;408.7
        lea       r8, QWORD PTR [__STRLITPACK_107.0.1]          ;408.7
        lea       r10, QWORD PTR [__STRLITPACK_42]              ;408.7
        lea       r9, QWORD PTR [2352+rbp]                      ;408.7
        lea       r11, QWORD PTR [INITIAL$format_pack.0.1+28]   ;408.7
        lea       rax, QWORD PTR [80+rdi]                       ;408.7
        mov       QWORD PTR [rcx], 0                            ;408.7
        mov       QWORD PTR [r9], 128                           ;408.7
        mov       QWORD PTR [8+r9], rax                         ;408.7
        mov       QWORD PTR [16+r9], 30                         ;408.7
        mov       QWORD PTR [24+r9], r10                        ;408.7
        mov       QWORD PTR [32+r13], r11                       ;408.7
        call      for_write_int_fmt                             ;408.7
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.231::                      ; Preds .B19.230
                                ; Execution count [4.69e-012]: Infreq
        mov       eax, DWORD PTR [3688+rbp]                     ;408.7
        lea       rcx, QWORD PTR [3760+rbp]                     ;408.7
        lea       rdx, QWORD PTR [__STRLITPACK_108.0.1]         ;408.7
        lea       r8, QWORD PTR [2432+rbp]                      ;408.7
        mov       DWORD PTR [r8], eax                           ;408.7
        call      for_write_int_fmt_xmit                        ;408.7
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.232::                      ; Preds .B19.231
                                ; Execution count [4.69e-012]: Infreq
        mov       r13, rsp                                      ;409.7
        lea       rcx, QWORD PTR [3760+rbp]                     ;409.7
        mov       rdx, 01208384ff00H                            ;409.7
        lea       r8, QWORD PTR [__STRLITPACK_109.0.1]          ;409.7
        lea       r10, QWORD PTR [__STRLITPACK_38]              ;409.7
        lea       r9, QWORD PTR [2384+rbp]                      ;409.7
        lea       r11, QWORD PTR [INITIAL$format_pack.0.1+52]   ;409.7
        lea       rax, QWORD PTR [208+rdi]                      ;409.7
        mov       QWORD PTR [rcx], 0                            ;409.7
        mov       QWORD PTR [r9], 128                           ;409.7
        mov       QWORD PTR [8+r9], rax                         ;409.7
        mov       QWORD PTR [16+r9], 18                         ;409.7
        mov       QWORD PTR [24+r9], r10                        ;409.7
        mov       QWORD PTR [32+r13], r11                       ;409.7
        call      for_write_int_fmt                             ;409.7
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.233::                      ; Preds .B19.232
                                ; Execution count [4.69e-012]: Infreq
        movsxd    rax, DWORD PTR [3688+rbp]                     ;409.7
        lea       rcx, QWORD PTR [3760+rbp]                     ;409.7
        sub       rax, QWORD PTR [MET_FI_mp_METGRID+64]         ;409.7
        lea       rdx, QWORD PTR [__STRLITPACK_110.0.1]         ;409.7
        imul      r10, rax, 440                                 ;409.7
        mov       r9, QWORD PTR [MET_FI_mp_METGRID]             ;409.7
        lea       r8, QWORD PTR [2440+rbp]                      ;409.7
        mov       r11d, DWORD PTR [36+r9+r10]                   ;409.7
        mov       DWORD PTR [r8], r11d                          ;409.7
        call      for_write_int_fmt_xmit                        ;409.7
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.234::                      ; Preds .B19.233
                                ; Execution count [4.69e-012]: Infreq
        mov       rax, rsp                                      ;410.7
        add       rdi, 336                                      ;410.7
        mov       rcx, rdi                                      ;410.7
        mov       edx, 128                                      ;410.7
        lea       r8, QWORD PTR [__STRLITPACK_37]               ;410.7
        mov       r9d, 23                                       ;410.7
        mov       QWORD PTR [32+rax], 0                         ;410.7
        call      for_cpystr                                    ;410.7
        nop                                                     ;410.7
        jmp       .B19.31       ; Prob 100%                     ;410.7
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.235::                      ; Preds .B19.228
                                ; Execution count [4.69e-012]: Infreq
        mov       eax, DWORD PTR [3688+rbp]                     ;413.3
        inc       eax                                           ;413.3
        mov       DWORD PTR [3688+rbp], eax                     ;413.3
        cmp       eax, r13d                                     ;413.3
        jg        .B19.240      ; Prob 20%                      ;413.3
                                ; LOE rbx rsi rdi r12 eax r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B19.236::                      ; Preds .B19.235
                                ; Execution count [3.75e-012]: Infreq
        mov       rdx, QWORD PTR [MET_FI_mp_METGRID+64]         ;400.5
        lea       rcx, QWORD PTR [2464+rbp]                     ;401.11
        movsxd    rax, eax                                      ;400.14
        neg       rdx                                           ;400.5
        add       rdx, rax                                      ;400.5
        imul      r10, rdx, 440                                 ;400.5
        mov       r9, QWORD PTR [MET_FI_mp_METGRID]             ;400.5
        mov       r11d, DWORD PTR [36+r9+r10]                   ;400.5
        mov       DWORD PTR [rcx], r11d                         ;400.5
        call      SWIMADDSMOOTHFIELD                            ;401.11
                                ; LOE rbx rsi rdi r12 eax r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B19.237::                      ; Preds .B19.236
                                ; Execution count [3.75e-012]: Infreq
        cmp       eax, -1                                       ;402.5
        jne       .B19.228      ; Prob 82%                      ;402.5
                                ; LOE rbx rsi rdi r12 eax r13d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B19.238::                      ; Preds .B19.237
                                ; Execution count [6.75e-013]: Infreq
        movups    xmm15, XMMWORD PTR [2480+rbp]                 ;[spill]
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.239::                      ; Preds .B19.238 .B19.226
                                ; Execution count [7.12e-013]: Infreq
        lea       rcx, QWORD PTR [__STRLITPACK_47]              ;403.12
        mov       edx, 18                                       ;403.12
        call      SETSWIMERROR                                  ;403.12
        nop                                                     ;403.12
        jmp       .B19.31       ; Prob 100%                     ;403.12
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.240::                      ; Preds .B19.235
                                ; Execution count [9.38e-013]: Infreq
        movups    xmm15, XMMWORD PTR [2480+rbp]                 ;[spill]
        jmp       .B19.124      ; Prob 100%                     ;
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.241::                      ; Preds .B19.121
                                ; Execution count [1.68e-011]: Infreq
        lea       rcx, QWORD PTR [__STRLITPACK_48]              ;392.12
        mov       edx, 15                                       ;392.12
        movups    xmm15, XMMWORD PTR [2480+rbp]                 ;[spill]
        call      SETSWIMERROR                                  ;392.12
        nop                                                     ;392.12
        jmp       .B19.31       ; Prob 100%                     ;392.12
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.242::                      ; Preds .B19.126
                                ; Execution count [8.98e-013]: Infreq
        lea       rcx, QWORD PTR [FLAGS_FI_mp_POLARCAP_N]       ;428.13
        lea       rdx, QWORD PTR [__NLITPACK_0.0.1]             ;428.13
;       CHECKPOLEFIELD..1
        call      CHECKPOLEFIELD..1                             ;428.13
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.243::                      ; Preds .B19.242
                                ; Execution count [8.98e-013]: Infreq
        mov       DWORD PTR [GRID_FI_mp_POLEFLD_N], eax         ;428.1
        test      eax, eax                                      ;429.15
        jge       .B19.249      ; Prob 59%                      ;429.15
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.244::                      ; Preds .B19.243
                                ; Execution count [3.62e-013]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;430.14
        jne       .B19.31       ; Prob 38%                      ;430.14
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.245::                      ; Preds .B19.244
                                ; Execution count [2.24e-013]: Infreq
        mov       rax, rsp                                      ;432.5
        mov       rcx, rdi                                      ;432.5
        mov       edx, 80                                       ;432.5
        lea       r8, QWORD PTR [__STRLITPACK_36]               ;432.5
        mov       r9d, 7                                        ;432.5
        mov       DWORD PTR [464+rdi], 3                        ;431.5
        mov       QWORD PTR [32+rax], 0                         ;432.5
        call      for_cpystr                                    ;432.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.246::                      ; Preds .B19.245
                                ; Execution count [2.24e-013]: Infreq
        mov       rax, rsp                                      ;433.5
        lea       rcx, QWORD PTR [80+rdi]                       ;433.5
        mov       edx, 128                                      ;433.5
        lea       r8, QWORD PTR [__STRLITPACK_35]               ;433.5
        mov       r9d, 58                                       ;433.5
        mov       QWORD PTR [32+rax], 0                         ;433.5
        call      for_cpystr                                    ;433.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.247::                      ; Preds .B19.246
                                ; Execution count [2.24e-013]: Infreq
        mov       rax, rsp                                      ;434.5
        lea       rcx, QWORD PTR [208+rdi]                      ;434.5
        mov       edx, 128                                      ;434.5
        lea       r8, QWORD PTR [__STRLITPACK_34]               ;434.5
        mov       r9d, 34                                       ;434.5
        mov       QWORD PTR [32+rax], 0                         ;434.5
        call      for_cpystr                                    ;434.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.248::                      ; Preds .B19.247
                                ; Execution count [2.24e-013]: Infreq
        mov       rax, rsp                                      ;435.5
        add       rdi, 336                                      ;435.5
        mov       rcx, rdi                                      ;435.5
        mov       edx, 128                                      ;435.5
        lea       r8, QWORD PTR [__STRLITPACK_33]               ;435.5
        mov       r9d, 38                                       ;435.5
        mov       QWORD PTR [32+rax], 0                         ;435.5
        call      for_cpystr                                    ;435.5
        nop                                                     ;435.5
        jmp       .B19.31       ; Prob 100%                     ;435.5
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.249::                      ; Preds .B19.243
                                ; Execution count [5.36e-013]: Infreq
        lea       rcx, QWORD PTR [FLAGS_FI_mp_POLARCAP_S]       ;440.13
        lea       rdx, QWORD PTR [__NLITPACK_3.0.1]             ;440.13
;       CHECKPOLEFIELD..0
        call      CHECKPOLEFIELD..0                             ;440.13
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.250::                      ; Preds .B19.249
                                ; Execution count [5.36e-013]: Infreq
        mov       DWORD PTR [GRID_FI_mp_POLEFLD_S], eax         ;440.1
        test      eax, eax                                      ;441.15
        jl        .B19.312      ; Prob 16%                      ;441.15
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.251::                      ; Preds .B19.250
                                ; Execution count [4.50e-013]: Infreq
        mov       DWORD PTR [FLAGS_FI_mp_INT_SENSOR], 0         ;454.1
        call      READ_SMP                                      ;456.6
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.252::                      ; Preds .B19.251
                                ; Execution count [4.50e-013]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;457.12
        jne       .B19.31       ; Prob 78%                      ;457.12
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.253::                      ; Preds .B19.252
                                ; Execution count [9.90e-014]: Infreq
        call      CHECK_PROGRESS                                ;459.6
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.254::                      ; Preds .B19.253
                                ; Execution count [9.90e-014]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;460.12
        jne       .B19.31       ; Prob 50%                      ;460.12
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.255::                      ; Preds .B19.254
                                ; Execution count [4.95e-014]: Infreq
        test      BYTE PTR [MET_FI_mp_LOUT_MET], 1              ;464.5
        je        .B19.270      ; Prob 7%                       ;464.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.256::                      ; Preds .B19.255
                                ; Execution count [4.59e-014]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_RESTART], 1             ;466.12
        jne       .B19.268      ; Prob 39%                      ;466.12
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.257::                      ; Preds .B19.268 .B19.256
                                ; Execution count [2.85e-014]: Infreq
        mov       rax, rsp                                      ;468.5
        lea       rcx, QWORD PTR [3381+rbp]                     ;468.5
        mov       edx, 128                                      ;468.5
        lea       r8, QWORD PTR [__STRLITPACK_28]               ;468.5
        mov       r9d, 29                                       ;468.5
        mov       QWORD PTR [32+rax], 0                         ;468.5
        call      for_cpystr                                    ;468.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.258::                      ; Preds .B19.257
                                ; Execution count [2.85e-014]: Infreq
        mov       rax, rsp                                      ;469.5
        lea       rcx, QWORD PTR [3509+rbp]                     ;469.5
        mov       edx, 128                                      ;469.5
        lea       r8, QWORD PTR [__STRLITPACK_27]               ;469.5
        mov       r9d, 1                                        ;469.5
        mov       QWORD PTR [32+rax], 0                         ;469.5
        call      for_cpystr                                    ;469.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.259::                      ; Preds .B19.258
                                ; Execution count [2.85e-014]: Infreq
        mov       rax, rsp                                      ;470.5
        mov       rcx, rbx                                      ;470.5
        mov       edx, 128                                      ;470.5
        lea       r8, QWORD PTR [__STRLITPACK_26]               ;470.5
        mov       r9d, 1                                        ;470.5
        mov       QWORD PTR [32+rax], 0                         ;470.5
        call      for_cpystr                                    ;470.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.260::                      ; Preds .B19.259
                                ; Execution count [2.85e-014]: Infreq
        mov       rax, rsp                                      ;471.10
        mov       edx, 128                                      ;471.10
        mov       r9, rdx                                       ;471.10
        lea       rcx, QWORD PTR [3381+rbp]                     ;471.10
        lea       r8, QWORD PTR [3509+rbp]                      ;471.10
        mov       QWORD PTR [32+rax], rbx                       ;471.10
        mov       QWORD PTR [40+rax], 128                       ;471.10
        call      WRITE_PROGRESS                                ;471.10
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.261::                      ; Preds .B19.260
                                ; Execution count [2.85e-014]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;472.16
        jne       .B19.31       ; Prob 78%                      ;472.16
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.262::                      ; Preds .B19.261
                                ; Execution count [6.26e-015]: Infreq
        call      SWIMOUTPUT                                    ;474.11
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.263::                      ; Preds .B19.262
                                ; Execution count [6.26e-015]: Infreq
        cmp       eax, 1                                        ;475.13
        jne       .B19.267      ; Prob 21%                      ;475.13
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.264::                      ; Preds .B19.263
                                ; Execution count [4.91e-015]: Infreq
        call      WRITESWIMLOG                                  ;479.10
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.265::                      ; Preds .B19.264
                                ; Execution count [4.91e-015]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;480.16
        jne       .B19.31       ; Prob 50%                      ;480.16
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.266::                      ; Preds .B19.265
                                ; Execution count [2.45e-015]: Infreq
        movss     xmm1, DWORD PTR [TIME_FI_mp_T]                ;484.3
        jmp       .B19.269      ; Prob 100%                     ;484.3
                                ; LOE rbx rsi rdi r12 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.267::                      ; Preds .B19.263
                                ; Execution count [1.36e-015]: Infreq
        lea       rcx, QWORD PTR [__STRLITPACK_25]              ;476.12
        mov       edx, 10                                       ;476.12
        call      SETSWIMERROR                                  ;476.12
        nop                                                     ;476.12
        jmp       .B19.31       ; Prob 100%                     ;476.12
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.268::                      ; Preds .B19.256
                                ; Execution count [1.84e-014]: Infreq
        movss     xmm1, DWORD PTR [TIME_FI_mp_T]                ;466.7
        pxor      xmm0, xmm0                                    ;466.27
        ucomiss   xmm1, xmm0                                    ;466.27
        jp        .B19.269      ; Prob 0%                       ;466.27
        je        .B19.257      ; Prob 5%                       ;466.27
                                ; LOE rbx rsi rdi r12 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.269::                      ; Preds .B19.268 .B19.266
                                ; Execution count [1.99e-014]: Infreq
        movss     DWORD PTR [MET_FI_mp_TIMEOUTMET], xmm1        ;484.3
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.270::                      ; Preds .B19.255 .B19.269
                                ; Execution count [2.35e-014]: Infreq
        mov       rax, rsp                                      ;490.1
        lea       rcx, QWORD PTR [3381+rbp]                     ;490.1
        mov       edx, 128                                      ;490.1
        lea       r8, QWORD PTR [2340+rbp]                      ;490.1
        mov       r9d, 1                                        ;490.1
        mov       BYTE PTR [r8], 0                              ;490.9
        mov       QWORD PTR [32+rax], 0                         ;490.1
        call      for_cpystr                                    ;490.1
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.271::                      ; Preds .B19.270
                                ; Execution count [2.35e-014]: Infreq
        mov       rax, rsp                                      ;491.1
        lea       rcx, QWORD PTR [3509+rbp]                     ;491.1
        mov       edx, 128                                      ;491.1
        lea       r8, QWORD PTR [__STRLITPACK_24]               ;491.1
        mov       r9d, 20                                       ;491.1
        mov       QWORD PTR [32+rax], 0                         ;491.1
        call      for_cpystr                                    ;491.1
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.272::                      ; Preds .B19.271
                                ; Execution count [2.35e-014]: Infreq
        mov       rax, rsp                                      ;492.1
        mov       rcx, rbx                                      ;492.1
        mov       edx, 128                                      ;492.1
        lea       r8, QWORD PTR [__STRLITPACK_23]               ;492.1
        mov       r9d, 1                                        ;492.1
        mov       QWORD PTR [32+rax], 0                         ;492.1
        call      for_cpystr                                    ;492.1
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.273::                      ; Preds .B19.272
                                ; Execution count [2.35e-014]: Infreq
        mov       rax, rsp                                      ;493.6
        mov       edx, 128                                      ;493.6
        mov       r9, rdx                                       ;493.6
        lea       rcx, QWORD PTR [3381+rbp]                     ;493.6
        lea       r8, QWORD PTR [3509+rbp]                      ;493.6
        mov       QWORD PTR [32+rax], rbx                       ;493.6
        mov       QWORD PTR [40+rax], 128                       ;493.6
        call      WRITE_PROGRESS                                ;493.6
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.274::                      ; Preds .B19.273
                                ; Execution count [2.35e-014]: Infreq
;       SCN_INIT
        call      SCN_INIT                                      ;495.6
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.275::                      ; Preds .B19.274
                                ; Execution count [2.35e-014]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;496.12
        jne       .B19.31       ; Prob 78%                      ;496.12
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.276::                      ; Preds .B19.275
                                ; Execution count [5.17e-015]: Infreq
        mov       edx, 12                                       ;500.10
        lea       rcx, QWORD PTR [2304+rbp]                     ;500.10
        lea       r8, QWORD PTR [PUFF_FI_mp_NPUF]               ;500.10
        call      FORMATPUFFS                                   ;500.10
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.277::                      ; Preds .B19.276
                                ; Execution count [5.17e-015]: Infreq
        mov       rax, QWORD PTR [2304+rbp]                     ;500.1
        mov       edx, DWORD PTR [2312+rbp]                     ;500.1
        mov       QWORD PTR [2320+rbp], rax                     ;500.1
        mov       DWORD PTR [2328+rbp], edx                     ;500.1
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.278::                      ; Preds .B19.277
                                ; Execution count [5.17e-015]: Infreq
        cmp       DWORD PTR [PUFF_FI_mp_NPUF], 0                ;501.10
        jg        .B19.284      ; Prob 21%                      ;501.10
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.279::                      ; Preds .B19.310 .B19.278
                                ; Execution count [4.23e-015]: Infreq
        mov       rax, rsp                                      ;513.1
        lea       rcx, QWORD PTR [3381+rbp]                     ;513.1
        mov       edx, 128                                      ;513.1
        lea       r8, QWORD PTR [2284+rbp]                      ;513.1
        mov       r9d, 1                                        ;513.1
        mov       BYTE PTR [r8], 0                              ;513.9
        mov       QWORD PTR [32+rax], 0                         ;513.1
        call      for_cpystr                                    ;513.1
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.280::                      ; Preds .B19.279
                                ; Execution count [4.23e-015]: Infreq
        mov       edx, 12                                       ;514.32
        lea       rdi, QWORD PTR [2288+rbp]                     ;514.32
        mov       rcx, rdi                                      ;514.32
        lea       r8, QWORD PTR [2320+rbp]                      ;514.32
        mov       r9, rdx                                       ;514.32
        lea       rax, QWORD PTR [__STRLITPACK_10]              ;514.30
        mov       QWORD PTR [2128+rbp], rax                     ;514.30
        mov       QWORD PTR [2136+rbp], 19                      ;514.30
        call      for_trim                                      ;514.32
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.281::                      ; Preds .B19.280
                                ; Execution count [4.23e-015]: Infreq
        mov       edx, 3                                        ;514.1
        lea       rcx, QWORD PTR [2128+rbp]                     ;514.1
        mov       r9d, 128                                      ;514.1
        lea       r8, QWORD PTR [3509+rbp]                      ;514.1
        mov       QWORD PTR [16+rcx], rdi                       ;514.30
        lea       rdi, QWORD PTR [__STRLITPACK_9]               ;514.44
        movsxd    rax, eax                                      ;514.32
        mov       QWORD PTR [24+rcx], rax                       ;514.30
        mov       QWORD PTR [32+rcx], rdi                       ;514.44
        mov       QWORD PTR [40+rcx], 6                         ;514.44
        call      for_concat                                    ;514.1
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.282::                      ; Preds .B19.281
                                ; Execution count [4.23e-015]: Infreq
        mov       rax, rsp                                      ;515.1
        mov       rcx, rbx                                      ;515.1
        mov       edx, 128                                      ;515.1
        lea       r8, QWORD PTR [__STRLITPACK_8]                ;515.1
        mov       r9d, 1                                        ;515.1
        mov       QWORD PTR [32+rax], 0                         ;515.1
        call      for_cpystr                                    ;515.1
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.283::                      ; Preds .B19.282
                                ; Execution count [4.23e-015]: Infreq
        mov       rax, rsp                                      ;516.6
        mov       edx, 128                                      ;516.6
        mov       r9, rdx                                       ;516.6
        lea       rcx, QWORD PTR [3381+rbp]                     ;516.6
        lea       r8, QWORD PTR [3509+rbp]                      ;516.6
        mov       QWORD PTR [32+rax], rbx                       ;516.6
        mov       QWORD PTR [40+rax], 128                       ;516.6
        call      WRITE_PROGRESS                                ;516.6
        nop                                                     ;516.6
        jmp       .B19.31       ; Prob 100%                     ;516.6
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.284::                      ; Preds .B19.278
                                ; Execution count [1.12e-015]: Infreq
;       COUNTDEFINITIONS
        call      CONT_REL_FUNCTIONS_mp_COUNTDEFINITIONS        ;502.25
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.285::                      ; Preds .B19.284
                                ; Execution count [1.12e-015]: Infreq
        mov       edx, 12                                       ;502.12
        lea       rcx, QWORD PTR [2176+rbp]                     ;502.12
        mov       DWORD PTR [716+rbp], eax                      ;502.25
        lea       r8, QWORD PTR [716+rbp]                       ;502.12
        call      FORMATPUFFS                                   ;502.12
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.286::                      ; Preds .B19.285
                                ; Execution count [1.12e-015]: Infreq
        mov       rax, QWORD PTR [2176+rbp]                     ;502.3
        mov       edx, DWORD PTR [2184+rbp]                     ;502.3
        mov       QWORD PTR [2192+rbp], rax                     ;502.3
        mov       DWORD PTR [2200+rbp], edx                     ;502.3
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.287::                      ; Preds .B19.286
                                ; Execution count [1.12e-015]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_RESTART], 1             ;503.7
        je        .B19.299      ; Prob 60%                      ;503.7
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.288::                      ; Preds .B19.287
                                ; Execution count [4.48e-016]: Infreq
        mov       r15, rsp                                      ;504.5
        lea       rcx, QWORD PTR [3760+rbp]                     ;504.5
        mov       r8, 01208384ff01H                             ;504.5
        lea       r9, QWORD PTR [__STRLITPACK_111.0.1]          ;504.5
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;504.5
        lea       r10, QWORD PTR [__STRLITPACK_19]              ;504.5
        lea       r14, QWORD PTR [INITIAL$format_pack.0.1]      ;504.5
        lea       r11, QWORD PTR [1304+rbp]                     ;504.5
        mov       QWORD PTR [rcx], 0                            ;504.5
        mov       r13, rsp                                      ;504.5
        mov       QWORD PTR [r11], 23                           ;504.5
        mov       QWORD PTR [8+r11], r10                        ;504.5
        mov       QWORD PTR [32+r15], r11                       ;504.5
        mov       QWORD PTR [40+r15], r14                       ;504.5
        call      for_write_seq_fmt                             ;504.5
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.289::                      ; Preds .B19.288
                                ; Execution count [4.48e-016]: Infreq
        test      eax, eax                                      ;504.5
        jne       .B19.297      ; Prob 50%                      ;504.5
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.290::                      ; Preds .B19.289
                                ; Execution count [2.24e-016]: Infreq
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;504.5
        lea       rcx, QWORD PTR [3760+rbp]                     ;504.5
        divss     xmm0, DWORD PTR [_2il0floatpacket.14]         ;504.5
        lea       rdx, QWORD PTR [__STRLITPACK_112.0.1]         ;504.5
        lea       r8, QWORD PTR [1296+rbp]                      ;504.5
        movss     DWORD PTR [r8], xmm0                          ;504.5
        call      for_write_seq_fmt_xmit                        ;504.5
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.291::                      ; Preds .B19.290
                                ; Execution count [2.24e-016]: Infreq
        test      eax, eax                                      ;504.5
        jne       .B19.297      ; Prob 50%                      ;504.5
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.292::                      ; Preds .B19.291
                                ; Execution count [1.12e-016]: Infreq
        mov       edx, 12                                       ;505.46
        lea       r15, QWORD PTR [704+rbp]                      ;505.46
        mov       rcx, r15                                      ;505.46
        lea       r8, QWORD PTR [2192+rbp]                      ;505.46
        mov       r9, rdx                                       ;505.46
        lea       r10, QWORD PTR [__STRLITPACK_18]              ;505.44
        mov       QWORD PTR [512+rbp], r10                      ;505.44
        mov       QWORD PTR [520+rbp], 18                       ;505.44
        call      for_trim                                      ;505.46
                                ; LOE rbx rsi rdi r12 r13 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.293::                      ; Preds .B19.292
                                ; Execution count [1.12e-016]: Infreq
        mov       QWORD PTR [528+rbp], r15                      ;505.44
        lea       r15, QWORD PTR [720+rbp]                      ;505.76
        mov       edx, 12                                       ;505.76
        mov       rcx, r15                                      ;505.76
        mov       r9, rdx                                       ;505.76
        lea       r8, QWORD PTR [2320+rbp]                      ;505.76
        movsxd    r14, eax                                      ;505.46
        lea       r10, QWORD PTR [__STRLITPACK_17]              ;505.57
        mov       QWORD PTR [536+rbp], r14                      ;505.44
        mov       QWORD PTR [544+rbp], r10                      ;505.57
        mov       QWORD PTR [552+rbp], 13                       ;505.57
        call      for_trim                                      ;505.76
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.294::                      ; Preds .B19.293
                                ; Execution count [1.12e-016]: Infreq
        movsxd    rax, eax                                      ;505.76
        mov       QWORD PTR [568+rbp], rax                      ;505.74
        mov       QWORD PTR [560+rbp], r15                      ;505.74
        lea       r14, QWORD PTR [31+r14+rax]                   ;505.74
        mov       rax, r14                                      ;505.74
        add       rax, 15                                       ;505.74
        and       rax, -16                                      ;505.74
        call      __chkstk                                      ;505.74
        sub       rsp, rax                                      ;505.74
        lea       rax, QWORD PTR [48+rsp]                       ;505.74
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.383::                      ; Preds .B19.294
                                ; Execution count [1.12e-016]: Infreq
        mov       r15, rax                                      ;505.74
        lea       rcx, QWORD PTR [512+rbp]                      ;505.74
        mov       edx, 4                                        ;505.74
        mov       r8, r15                                       ;505.74
        mov       r9, r14                                       ;505.74
        call      for_concat                                    ;505.74
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.295::                      ; Preds .B19.383
                                ; Execution count [1.12e-016]: Infreq
        lea       rdx, QWORD PTR [__STRLITPACK_113.0.1]         ;504.5
        lea       rcx, QWORD PTR [3760+rbp]                     ;504.5
        mov       QWORD PTR [688+rbp], r14                      ;504.5
        lea       r8, QWORD PTR [688+rbp]                       ;504.5
        mov       QWORD PTR [8+r8], r15                         ;504.5
        call      for_write_seq_fmt_xmit                        ;504.5
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.297::                      ; Preds .B19.295 .B19.291 .B19.289
                                ; Execution count [4.48e-016]: Infreq
        test      eax, eax                                      ;504.5
        jle       .B19.310      ; Prob 16%                      ;504.5
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.298::                      ; Preds .B19.297
                                ; Execution count [3.76e-016]: Infreq
        mov       rax, r13                                      ;504.5
        mov       rsp, rax                                      ;504.5
        jmp       .B19.112      ; Prob 100%                     ;504.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.299::                      ; Preds .B19.287
                                ; Execution count [6.71e-016]: Infreq
        mov       r15, rsp                                      ;508.5
        lea       rcx, QWORD PTR [3760+rbp]                     ;508.5
        mov       r8, 01208384ff01H                             ;508.5
        lea       r9, QWORD PTR [__STRLITPACK_114.0.1]          ;508.5
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;508.5
        lea       r10, QWORD PTR [__STRLITPACK_13]              ;508.5
        lea       r14, QWORD PTR [INITIAL$format_pack.0.1]      ;508.5
        lea       r11, QWORD PTR [1328+rbp]                     ;508.5
        mov       QWORD PTR [rcx], 0                            ;508.5
        mov       r13, rsp                                      ;508.5
        mov       QWORD PTR [r11], 23                           ;508.5
        mov       QWORD PTR [8+r11], r10                        ;508.5
        mov       QWORD PTR [32+r15], r11                       ;508.5
        mov       QWORD PTR [40+r15], r14                       ;508.5
        call      for_write_seq_fmt                             ;508.5
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.300::                      ; Preds .B19.299
                                ; Execution count [6.71e-016]: Infreq
        test      eax, eax                                      ;508.5
        jne       .B19.308      ; Prob 50%                      ;508.5
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.301::                      ; Preds .B19.300
                                ; Execution count [3.36e-016]: Infreq
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;508.5
        lea       rcx, QWORD PTR [3760+rbp]                     ;508.5
        divss     xmm0, DWORD PTR [_2il0floatpacket.14]         ;508.5
        lea       rdx, QWORD PTR [__STRLITPACK_115.0.1]         ;508.5
        lea       r8, QWORD PTR [1320+rbp]                      ;508.5
        movss     DWORD PTR [r8], xmm0                          ;508.5
        call      for_write_seq_fmt_xmit                        ;508.5
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.302::                      ; Preds .B19.301
                                ; Execution count [3.36e-016]: Infreq
        test      eax, eax                                      ;508.5
        jne       .B19.308      ; Prob 50%                      ;508.5
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.303::                      ; Preds .B19.302
                                ; Execution count [1.68e-016]: Infreq
        mov       edx, 12                                       ;509.46
        lea       r15, QWORD PTR [1008+rbp]                     ;509.46
        mov       rcx, r15                                      ;509.46
        lea       r8, QWORD PTR [2192+rbp]                      ;509.46
        mov       r9, rdx                                       ;509.46
        lea       r10, QWORD PTR [__STRLITPACK_12]              ;509.44
        mov       QWORD PTR [576+rbp], r10                      ;509.44
        mov       QWORD PTR [584+rbp], 18                       ;509.44
        call      for_trim                                      ;509.46
                                ; LOE rbx rsi rdi r12 r13 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.304::                      ; Preds .B19.303
                                ; Execution count [1.68e-016]: Infreq
        mov       QWORD PTR [592+rbp], r15                      ;509.44
        lea       r15, QWORD PTR [1024+rbp]                     ;509.76
        mov       edx, 12                                       ;509.76
        mov       rcx, r15                                      ;509.76
        mov       r9, rdx                                       ;509.76
        lea       r8, QWORD PTR [2320+rbp]                      ;509.76
        movsxd    r14, eax                                      ;509.46
        lea       r10, QWORD PTR [__STRLITPACK_11]              ;509.57
        mov       QWORD PTR [600+rbp], r14                      ;509.44
        mov       QWORD PTR [608+rbp], r10                      ;509.57
        mov       QWORD PTR [616+rbp], 13                       ;509.57
        call      for_trim                                      ;509.76
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.305::                      ; Preds .B19.304
                                ; Execution count [1.68e-016]: Infreq
        movsxd    rax, eax                                      ;509.76
        mov       QWORD PTR [632+rbp], rax                      ;509.74
        mov       QWORD PTR [624+rbp], r15                      ;509.74
        lea       r14, QWORD PTR [31+r14+rax]                   ;509.74
        mov       rax, r14                                      ;509.74
        add       rax, 15                                       ;509.74
        and       rax, -16                                      ;509.74
        call      __chkstk                                      ;509.74
        sub       rsp, rax                                      ;509.74
        lea       rax, QWORD PTR [48+rsp]                       ;509.74
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.389::                      ; Preds .B19.305
                                ; Execution count [1.68e-016]: Infreq
        mov       r15, rax                                      ;509.74
        lea       rcx, QWORD PTR [576+rbp]                      ;509.74
        mov       edx, 4                                        ;509.74
        mov       r8, r15                                       ;509.74
        mov       r9, r14                                       ;509.74
        call      for_concat                                    ;509.74
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.306::                      ; Preds .B19.389
                                ; Execution count [1.68e-016]: Infreq
        lea       rdx, QWORD PTR [__STRLITPACK_116.0.1]         ;508.5
        lea       rcx, QWORD PTR [3760+rbp]                     ;508.5
        mov       QWORD PTR [736+rbp], r14                      ;508.5
        lea       r8, QWORD PTR [736+rbp]                       ;508.5
        mov       QWORD PTR [8+r8], r15                         ;508.5
        call      for_write_seq_fmt_xmit                        ;508.5
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.308::                      ; Preds .B19.306 .B19.302 .B19.300
                                ; Execution count [6.71e-016]: Infreq
        test      eax, eax                                      ;508.5
        jle       .B19.310      ; Prob 16%                      ;508.5
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.309::                      ; Preds .B19.308
                                ; Execution count [5.64e-016]: Infreq
        mov       rax, r13                                      ;508.5
        mov       rsp, rax                                      ;508.5
        jmp       .B19.112      ; Prob 100%                     ;508.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.310::                      ; Preds .B19.308 .B19.297
                                ; Execution count [7.16e-017]: Infreq
        mov       rax, r13                                      ;504.5
        mov       rsp, rax                                      ;504.5
        jmp       .B19.279      ; Prob 100%                     ;504.5
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.312::                      ; Preds .B19.250
                                ; Execution count [8.57e-014]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;442.14
        jne       .B19.31       ; Prob 38%                      ;442.14
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.313::                      ; Preds .B19.312
                                ; Execution count [5.31e-014]: Infreq
        mov       rax, rsp                                      ;444.5
        mov       rcx, rdi                                      ;444.5
        mov       edx, 80                                       ;444.5
        lea       r8, QWORD PTR [__STRLITPACK_32]               ;444.5
        mov       r9d, 7                                        ;444.5
        mov       DWORD PTR [464+rdi], 3                        ;443.5
        mov       QWORD PTR [32+rax], 0                         ;444.5
        call      for_cpystr                                    ;444.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.314::                      ; Preds .B19.313
                                ; Execution count [5.31e-014]: Infreq
        mov       rax, rsp                                      ;445.5
        lea       rcx, QWORD PTR [80+rdi]                       ;445.5
        mov       edx, 128                                      ;445.5
        lea       r8, QWORD PTR [__STRLITPACK_31]               ;445.5
        mov       r9d, 58                                       ;445.5
        mov       QWORD PTR [32+rax], 0                         ;445.5
        call      for_cpystr                                    ;445.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.315::                      ; Preds .B19.314
                                ; Execution count [5.31e-014]: Infreq
        mov       rax, rsp                                      ;446.5
        lea       rcx, QWORD PTR [208+rdi]                      ;446.5
        mov       edx, 128                                      ;446.5
        lea       r8, QWORD PTR [__STRLITPACK_30]               ;446.5
        mov       r9d, 34                                       ;446.5
        mov       QWORD PTR [32+rax], 0                         ;446.5
        call      for_cpystr                                    ;446.5
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.316::                      ; Preds .B19.315
                                ; Execution count [5.31e-014]: Infreq
        mov       rax, rsp                                      ;447.5
        add       rdi, 336                                      ;447.5
        mov       rcx, rdi                                      ;447.5
        mov       edx, 128                                      ;447.5
        lea       r8, QWORD PTR [__STRLITPACK_29]               ;447.5
        mov       r9d, 40                                       ;447.5
        mov       QWORD PTR [32+rax], 0                         ;447.5
        call      for_cpystr                                    ;447.5
        nop                                                     ;447.5
        jmp       .B19.31       ; Prob 100%                     ;447.5
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.317::                      ; Preds .B19.86
                                ; Execution count [1.15e-010]: Infreq
        call      INIT_WASH                                     ;200.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.318::                      ; Preds .B19.317
                                ; Execution count [1.15e-010]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;201.14
        jne       .B19.31       ; Prob 50%                      ;201.14
        jmp       .B19.87       ; Prob 100%                     ;201.14
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.319::                      ; Preds .B19.71
                                ; Execution count [4.84e-009]: Infreq
;       INITRUNMC
        call      INITRUNMC                                     ;170.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.320::                      ; Preds .B19.319
                                ; Execution count [4.84e-009]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;171.14
        jne       .B19.31       ; Prob 50%                      ;171.14
        jmp       .B19.72       ; Prob 100%                     ;171.14
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.321::                      ; Preds .B19.52
                                ; Execution count [1.86e-006]: Infreq
        mov       rax, rsp                                      ;130.3
        mov       rcx, rbx                                      ;130.3
        mov       edx, 128                                      ;130.3
        lea       r8, QWORD PTR [2628+rbp]                      ;130.3
        mov       r9d, 1                                        ;130.3
        mov       BYTE PTR [r8], 0                              ;130.11
        mov       QWORD PTR [32+rax], 0                         ;130.3
        call      for_cpystr                                    ;130.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.322::                      ; Preds .B19.321
                                ; Execution count [1.86e-006]: Infreq
        mov       rax, rsp                                      ;131.3
        lea       rcx, QWORD PTR [3509+rbp]                     ;131.3
        mov       edx, 128                                      ;131.3
        lea       r8, QWORD PTR [__STRLITPACK_81]               ;131.3
        mov       r9d, 26                                       ;131.3
        mov       QWORD PTR [32+rax], 0                         ;131.3
        call      for_cpystr                                    ;131.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.323::                      ; Preds .B19.322
                                ; Execution count [1.86e-006]: Infreq
        mov       rax, rsp                                      ;132.8
        mov       edx, 128                                      ;132.8
        mov       r9, rdx                                       ;132.8
        lea       rcx, QWORD PTR [3381+rbp]                     ;132.8
        lea       r8, QWORD PTR [3509+rbp]                      ;132.8
        mov       QWORD PTR [32+rax], rbx                       ;132.8
        mov       QWORD PTR [40+rax], 128                       ;132.8
        call      WRITE_PROGRESS                                ;132.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.324::                      ; Preds .B19.323
                                ; Execution count [1.86e-006]: Infreq
;       INIT_TIME1
        call      INIT_TIME1                                    ;134.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.325::                      ; Preds .B19.324
                                ; Execution count [1.86e-006]: Infreq
        lea       rcx, QWORD PTR [FILES_FI_mp_LUN_INP]          ;136.8
        call      READNAMELISTTIME1                             ;136.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.326::                      ; Preds .B19.325
                                ; Execution count [1.86e-006]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;137.14
        jne       .B19.43       ; Prob 95%                      ;137.14
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.327::                      ; Preds .B19.326
                                ; Execution count [9.30e-008]: Infreq
;       INIT_TIME2
        call      INIT_TIME2                                    ;139.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.328::                      ; Preds .B19.327
                                ; Execution count [9.30e-008]: Infreq
        lea       rcx, QWORD PTR [FILES_FI_mp_LUN_INP]          ;141.8
        call      READNAMELISTTIME2                             ;141.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.329::                      ; Preds .B19.328
                                ; Execution count [9.30e-008]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;142.14
        jne       .B19.43       ; Prob 78%                      ;142.14
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.330::                      ; Preds .B19.329
                                ; Execution count [2.05e-008]: Infreq
        call      NEW_START                                     ;144.8
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.331::                      ; Preds .B19.330
                                ; Execution count [2.05e-008]: Infreq
        cmp       DWORD PTR [464+rdi], 0                        ;145.14
        jne       .B19.31       ; Prob 50%                      ;145.14
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.332::                      ; Preds .B19.331
                                ; Execution count [1.02e-008]: Infreq
        mov       rax, rsp                                      ;147.3
        lea       rcx, QWORD PTR [3381+rbp]                     ;147.3
        mov       edx, 128                                      ;147.3
        lea       r8, QWORD PTR [2580+rbp]                      ;147.3
        mov       r9d, 1                                        ;147.3
        mov       BYTE PTR [r8], 0                              ;147.11
        mov       QWORD PTR [32+rax], 0                         ;147.3
        call      for_cpystr                                    ;147.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.333::                      ; Preds .B19.332
                                ; Execution count [1.02e-008]: Infreq
        mov       rax, rsp                                      ;148.3
        mov       rcx, rbx                                      ;148.3
        mov       edx, 128                                      ;148.3
        lea       r8, QWORD PTR [2616+rbp]                      ;148.3
        mov       r9d, 1                                        ;148.3
        mov       BYTE PTR [r8], 0                              ;148.11
        mov       QWORD PTR [32+rax], 0                         ;148.3
        call      for_cpystr                                    ;148.3
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.334::                      ; Preds .B19.333
                                ; Execution count [1.02e-008]: Infreq
        mov       rax, rsp                                      ;149.3
        lea       rcx, QWORD PTR [3509+rbp]                     ;149.3
        mov       edx, 128                                      ;149.3
        lea       r8, QWORD PTR [__STRLITPACK_80]               ;149.3
        mov       r9d, 17                                       ;149.3
        mov       QWORD PTR [32+rax], 0                         ;149.3
        call      for_cpystr                                    ;149.3
        nop                                                     ;149.3
        jmp       .B19.64       ; Prob 100%                     ;149.3
        ALIGN     16
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B19.336::
; mark_end;
INITIAL ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITIAL.B1_B118	DD	889853697
	DD	17957655
	DD	4027253222
	DD	3490177033
	DD	1879293957
	DD	1342255106
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITIAL.B1_B118	DD	imagerel .B19.1
	DD	imagerel .B19.119
	DD	imagerel .unwind.INITIAL.B1_B118
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITIAL.B119_B122	DD	889329441
	DD	10418199
	DD	imagerel .B19.1
	DD	imagerel .B19.119
	DD	imagerel .unwind.INITIAL.B1_B118
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITIAL.B119_B122	DD	imagerel .B19.119
	DD	imagerel .B19.124
	DD	imagerel .unwind.INITIAL.B119_B122
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITIAL.B124_B222	DD	889192481
	DD	imagerel .B19.1
	DD	imagerel .B19.119
	DD	imagerel .unwind.INITIAL.B1_B118
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITIAL.B124_B222	DD	imagerel .B19.124
	DD	imagerel .B19.224
	DD	imagerel .unwind.INITIAL.B124_B222
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITIAL.B224_B224	DD	889192481
	DD	imagerel .B19.119
	DD	imagerel .B19.124
	DD	imagerel .unwind.INITIAL.B119_B122
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITIAL.B224_B224	DD	imagerel .B19.224
	DD	imagerel .B19.225
	DD	imagerel .unwind.INITIAL.B224_B224
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITIAL.B225_B226	DD	889192481
	DD	imagerel .B19.1
	DD	imagerel .B19.119
	DD	imagerel .unwind.INITIAL.B1_B118
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITIAL.B225_B226	DD	imagerel .B19.225
	DD	imagerel .B19.227
	DD	imagerel .unwind.INITIAL.B225_B226
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITIAL.B227_B229	DD	889325601
	DD	10418184
	DD	imagerel .B19.1
	DD	imagerel .B19.119
	DD	imagerel .unwind.INITIAL.B1_B118
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITIAL.B227_B229	DD	imagerel .B19.227
	DD	imagerel .B19.230
	DD	imagerel .unwind.INITIAL.B227_B229
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITIAL.B230_B234	DD	889192481
	DD	imagerel .B19.1
	DD	imagerel .B19.119
	DD	imagerel .unwind.INITIAL.B1_B118
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITIAL.B230_B234	DD	imagerel .B19.230
	DD	imagerel .B19.235
	DD	imagerel .unwind.INITIAL.B230_B234
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITIAL.B235_B238	DD	889192481
	DD	imagerel .B19.119
	DD	imagerel .B19.124
	DD	imagerel .unwind.INITIAL.B119_B122
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITIAL.B235_B238	DD	imagerel .B19.235
	DD	imagerel .B19.239
	DD	imagerel .unwind.INITIAL.B235_B238
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITIAL.B239_B239	DD	889192481
	DD	imagerel .B19.1
	DD	imagerel .B19.119
	DD	imagerel .unwind.INITIAL.B1_B118
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITIAL.B239_B239	DD	imagerel .B19.239
	DD	imagerel .B19.240
	DD	imagerel .unwind.INITIAL.B239_B239
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITIAL.B240_B241	DD	889192481
	DD	imagerel .B19.119
	DD	imagerel .B19.124
	DD	imagerel .unwind.INITIAL.B119_B122
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITIAL.B240_B241	DD	imagerel .B19.240
	DD	imagerel .B19.242
	DD	imagerel .unwind.INITIAL.B240_B241
.pdata	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INITIAL.B242_B334	DD	889192481
	DD	imagerel .B19.1
	DD	imagerel .B19.119
	DD	imagerel .unwind.INITIAL.B1_B118
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INITIAL.B242_B334	DD	imagerel .B19.242
	DD	imagerel .B19.336
	DD	imagerel .unwind.INITIAL.B242_B334
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.70_2_kmpv_SURFACE_FI_mp_SRFDOS_V$3503_cache_0.27	DD 2 DUP (?)	; pad
.2.70_2_kmpv_INITIAL$BLK.STEP_P_FI_mp_MYTID_V$105a_cache_1.29	DD 2 DUP (?)	; pad
.2.70_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_cache_2.31	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DD 2 DUP (0H)	; pad
	DB 1 DUP ( 0H)	; pad
INITIAL$format_pack.0.1	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	33
	DB	0
	DB	0
	DB	2
	DB	1
	DB	0
	DB	0
	DB	0
	DB	7
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	36
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	2
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DB	54
	DB	0
	DB	0
	DB	0
	DB	72
	DB	0
	DB	1
	DB	0
	DB	36
	DB	0
	DB	0
	DB	0
	DB	1
	DB	0
	DB	0
	DB	0
	DB	2
	DB	0
	DB	0
	DB	0
	DB	55
	DB	0
	DB	0
	DB	0
	DD 1 DUP (0H)	; pad
.2.70_2_kmpv_SURFACE_FI_mp_SRFDOS_V$3503_size_0.28	DD	000000004H,000000000H
.2.70_2_kmpv_INITIAL$BLK.STEP_P_FI_mp_MYTID_V$105a_size_1.30	DD	000000180H,000000000H
.2.70_2_kmpv_INITIAL$BLK.ERROR_FI_mp_EROUTINE_V$11b4_size_2.32	DD	0000001d4H,000000000H
.2.70_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.70_2__kmpc_loc_pack.11
.2.70_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	73
	DB	78
	DB	73
	DB	84
	DB	73
	DB	65
	DB	76
	DB	59
	DB	53
	DB	59
	DB	53
	DB	59
	DB	59
	DB 2 DUP ( 0H)	; pad
.2.70_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.70_2__kmpc_loc_pack.19
.2.70_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	73
	DB	78
	DB	73
	DB	84
	DB	73
	DB	65
	DB	76
	DB	59
	DB	53
	DB	59
	DB	53
	DB	52
	DB	53
	DB	59
	DB	59
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_100.0.1	DD	853048
	DD	1705016
	DD	3802168
	DD	1
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_117.0.1	DD	1
	DB	2
	DB 3 DUP ( 0H)	; pad
__NLITPACK_0.0.1	DD	1
__NLITPACK_1.0.1	DD	99
__STRLITPACK_104.0.1	DD	132152
	DB	56
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_105.0.1	DD	131354
	DB	56
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_106.0.1	DD	66616
	DB	56
	DB 3 DUP ( 0H)	; pad
__NLITPACK_2.0.1	DD	-1
__STRLITPACK_101.0.1	DD	132152
	DB	56
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_102.0.1	DD	131354
	DB	56
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_103.0.1	DD	66616
	DB	56
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_107.0.1	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_108.0.1	DD	65801
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_109.0.1	DD	70779960
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_110.0.1	DD	65801
	DB	2
	DB 3 DUP ( 0H)	; pad
__NLITPACK_3.0.1	DD	2
__STRLITPACK_111.0.1	DD	132152
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_112.0.1	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_113.0.1	DD	66616
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_114.0.1	DD	132152
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_115.0.1	DD	131354
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_116.0.1	DD	66616
	DB	2
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  INITIAL
_RDATA	SEGMENT     READ  'DATA'
	DD 2 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
_2il0floatpacket.16	DD	07fffffffH,000000000H,000000000H,000000000H
__STRLITPACK_322	DD	1667590211
	DD	1819234411
	DD	1701398117
	DW	25708
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_321	DD	1635151433
	DD	543451500
	DD	1818585446
	DD	1970151524
	DD	1919246957
	DB	0
	DB 3 DUP ( 0H)	; pad
__NLITPACK_9.0.8	DD	-1
_2il0floatpacket.0	DD	038d1b717H
_2il0floatpacket.1	DD	07b4097ceH
__NLITPACK_7.0.6	DD	045610000H
__STRLITPACK_330	DD	1145655879
	DD	4474180
__STRLITPACK_329	DD	1329874253
	DW	67
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_328	DD	4608589
__STRLITPACK_327	DD	4608599
__STRLITPACK_326	DD	1667590211
	DD	1869367147
	DD	1298948450
	DW	29797
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_325	DD	1970365778
	DD	1702130533
	DD	1868832868
	DD	1852399981
	DD	1902473760
	DD	1701996917
	DD	1869619315
	DD	544366956
	DD	544235875
	DD	1702126957
	DD	1819243119
	DD	7956335
__STRLITPACK_324	DD	544503138
	DD	1702126957
	DD	1819243119
	DD	544827247
	DD	1970302569
	DD	1936269428
	DD	1986947360
	DD	1684630625
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_323	DD	1953723725
	DD	543515168
	DD	1684632167
	DD	543450468
	DD	1145392424
	DD	539771727
	DD	1346978643
	DD	544370464
	DD	1126188083
	DD	1634560364
	DD	1869377396
	DD	2718055
__STRLITPACK_341	DD	1667590211
	DD	1651327339
	DD	1634561860
	DD	540700265
	DD	1346978643
	DD	793134677
	DD	1768058177
	DD	544501349
	DD	1634561892
	DD	1830841961
	DD	1634562921
	DD	543712116
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_340	DD	2032168772
	DD	1998615919
	DD	544501345
	DD	1346978643
	DD	541476437
	DD	1629515636
	DD	1937074788
	DD	1752440948
	DD	1919950949
	DD	1667590767
	DD	1868832884
	DD	1852399981
	DD	1684955424
	DD	1852793632
	DD	1970170228
	DW	16229
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_336	DD	1768058177
	DD	544501349
	DD	1634561860
	DD	975203945
	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_332	DD	1785688656
	DD	544498533
	DD	1634561860
	DD	975203945
	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_331	DD	1785688656
	DD	544498533
	DD	1634561892
	DD	1763733097
	DD	1970217075
	DD	1684632436
	DD	1752440933
	DD	1835081829
	DD	1852139874
	DD	1919361140
	DW	25705
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_362	DD	1667590211
	DD	1651327339
	DD	1634561860
	DD	540700265
	DD	1346978643
	DD	793134677
	DD	1970030163
	DD	1868832888
	DD	1852399981
	DD	1936289056
	DD	1668571501
	DW	8296
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_361	DD	2032168772
	DD	1998615919
	DD	544501345
	DD	1346978643
	DD	541476437
	DD	1629515636
	DD	1937074788
	DD	1752440948
	DD	1919950949
	DD	1667590767
	DD	1868832884
	DD	1852399981
	DD	1684955424
	DD	1852793632
	DD	1970170228
	DW	16229
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_357	DD	1970030163
	DD	538976376
	DD	1634561860
	DD	975203945
	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_353	DD	1785688656
	DD	544498533
	DD	1634561860
	DD	975203945
	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_352	DD	1785688656
	DD	544498533
	DD	1634561892
	DD	1763733097
	DD	1970217075
	DD	1684632436
	DD	1752440933
	DD	1179852901
	DD	544765292
	DD	1684632167
	DB	0
	DB 3 DUP ( 0H)	; pad
_2il0floatpacket.10	DD	07f7fffffH
__STRLITPACK_415	DD	1634038339
	DD	1735289204
	DD	1920299808
	DD	1701011814
	DD	1953853216
	DD	544503152
	DD	1701603686
	DW	115
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_405	DD	1634038339
	DD	1735289204
	DD	1920299808
	DD	1701011814
	DD	1936679968
	DD	543516513
	DD	1701603686
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_404	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_403	DD	544173908
	DD	2037277037
	DD	1784963360
	DD	1953393007
	DD	1952541984
	DD	1634300517
	DW	29548
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_402	DD	544760141
	DD	958428009
	DD	1713387833
	DD	1663070831
	DD	1769238127
	DD	1937076078
	DD	1818587680
	DD	1702060389
	DD	1634038560
	DD	6841202
__STRLITPACK_386	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_385	DD	1869771333
	DD	1919098994
	DD	1769234789
	DD	1931503470
	DD	1634103925
	DD	1679844707
	DD	543519599
	DD	1684632167
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_414	DD	1634038339
	DD	1735289204
	DD	1920299808
	DD	1701011814
	DD	1885692960
	DD	1953067887
	DD	544108393
	DD	1701603686
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_413	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_412	DD	1869771333
	DD	1919098994
	DD	1769234789
	DD	1931503470
	DD	1634103925
	DD	1679844707
	DD	1936683109
	DD	1869182057
	DD	1919361134
	DW	25705
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_401	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_400	DD	1869771333
	DD	1818304626
	DD	1633906540
	DD	1735289204
	DD	1920299808
	DD	1701011814
	DD	1952539680
	DD	1953701985
	DD	1952675186
	DD	1936028277
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_389	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_388	DD	1869771333
	DD	1818435698
	DD	1852404591
	DD	1970479207
	DD	1667327602
	DD	1868832869
	DD	1713399155
	DD	1684825449
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_387	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_392	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_391	DD	1869771333
	DD	1919098994
	DD	1769234789
	DD	1931503470
	DD	1634103925
	DD	1679844707
	DD	543519599
	DD	1818585446
	DW	100
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_390	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_395	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_394	DD	1869771333
	DD	1919098994
	DD	1769234789
	DD	1931503470
	DD	1634103925
	DD	1679844707
	DD	543519599
	DD	1684632167
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_393	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_399	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_398	DD	1869771333
	DD	1919098994
	DD	1769234789
	DD	1931503470
	DD	1634103925
	DD	1679844707
	DD	543519599
	DD	1684632167
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_384	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_383	DD	1869771333
	DD	1919098994
	DD	1769234789
	DD	1931503470
	DD	1634103925
	DD	1679844707
	DD	543519599
	DD	1684632167
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_382	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_381	DD	1869771333
	DD	1818304626
	DD	1633906540
	DD	1735289204
	DD	1920299808
	DD	1701011814
	DD	1952539680
	DD	1953701985
	DD	1952675186
	DD	1936028277
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_380	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_379	DD	1869771333
	DD	1919098994
	DD	1769234789
	DD	1931503470
	DD	1634103925
	DD	1629513059
	DD	1701405293
	DD	1679848558
	DD	543519599
	DD	1684632167
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_378	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_377	DD	1869771333
	DD	1919098994
	DD	1769234789
	DD	1931503470
	DD	1634103925
	DD	1629513059
	DD	1701405293
	DD	1679848558
	DD	543519599
	DD	1684632167
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_376	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_375	DD	1869771333
	DD	1919098994
	DD	1769234789
	DD	1931503470
	DD	1634103925
	DD	1679844707
	DD	543519599
	DD	1818585446
	DW	100
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_374	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_373	DD	1869771333
	DD	1919098994
	DD	1769234789
	DD	1931503470
	DD	1634103925
	DD	1679844707
	DD	543519599
	DD	1818585446
	DW	100
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_411	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_410	DD	1869771333
	DD	1919098994
	DD	1769234789
	DD	1931503470
	DD	1634103925
	DD	1679844707
	DD	1936683109
	DD	1869182057
	DD	1919361134
	DW	25705
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_409	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_408	DD	1869771333
	DD	1818304626
	DD	1633906540
	DD	1735289204
	DD	1920299808
	DD	1701011814
	DD	1952539680
	DD	1953701985
	DD	1952675186
	DD	1936028277
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_407	DD	1634038371
	DD	1935631732
	DD	1634103925
	DW	25955
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_406	DD	1869771333
	DD	1919098994
	DD	1769234789
	DD	1931503470
	DD	1634103925
	DD	1679844707
	DD	1936683109
	DD	1869182057
	DD	1768300654
	DD	6581349
_2il0floatpacket.11	DD	0fb4097ceH
_2il0floatpacket.12	DD	04955de00H
_2il0floatpacket.13	DD	041c00000H
_2il0floatpacket.14	DD	045610000H
_2il0floatpacket.15	DD	03c23d70aH
__STRLITPACK_257	DD	1601463667
	DD	1600417381
	DD	1701669236
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_256	DD	1852727619
	DD	1931506799
	DD	1696625765
	DD	2032165998
	DD	544366949
	DD	1868981602
	DD	1931502962
	DD	1953653108
	DD	1634040096
	DW	114
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_255	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_249	DD	1601463667
	DD	1600417381
	DD	1701669236
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_248	DD	1953723725
	DD	1952805664
	DD	1853190688
	DD	1835627552
	DD	1680351333
	DD	1952543349
	DD	544108393
	DD	1746955881
	DD	539587442
	DD	540024894
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_247	DD	1601463667
	DD	1600417381
	DD	1701669236
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_246	DD	544109906
	DD	1701669236
	DD	1969498144
	DD	1769234802
	DD	1763733103
	DD	1919426670
	DD	1948264819
	DD	1814065007
	DD	1701278305
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_241	DD	1769496909
	DD	544044397
	DD	2126697
__STRLITPACK_240	DD	1902454816
	DD	1635150197
	DD	1953391980
	DD	544175136
	DD	540028977
	DD	1918985593
	DW	10611
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_223	DD	1601463667
	DD	1600417381
	DD	1701669236
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_222	DD	543452741
	DD	1701669236
	DD	544434464
	DD	1936942444
	DD	1634235424
	DD	1969430638
	DD	1852142194
	DD	1769218164
	DW	25965
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_221	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_254	DD	1601463667
	DD	1600417381
	DD	1701669236
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_253	DD	1868787273
	DD	1667592818
	DD	1852121204
	DD	1633951844
	DD	1830825081
	DD	1752460911
	DD	1702436908
	DW	29281
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_252	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_251	DD	1601463667
	DD	1600417381
	DD	1701669236
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_250	DD	1953723725
	DD	1952805664
	DD	1853190688
	DD	1835627552
	DD	1680351333
	DD	1952543349
	DD	544108393
	DD	1746955881
	DD	539587442
	DD	1696625263
	DD	1948279918
	DD	6647145
__STRLITPACK_226	DD	1601463667
	DD	1600417381
	DD	1701669236
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_225	DD	544109906
	DD	1701669236
	DD	1969498144
	DD	1769234802
	DD	1763733103
	DD	1919426670
	DD	1763715443
	DD	1852793710
	DD	1953720691
	DD	544501349
	DD	1752459639
	DD	1684956448
	DD	1835627552
	DW	101
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_224	DD	544109906
	DD	1701669236
	DD	1818851104
	DD	1700929644
	DD	1852270880
	DD	1684370031
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_236	DD	1601463667
	DD	1600417381
	DD	1701669236
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_235	DD	1953723725
	DD	1952805664
	DD	1853190688
	DD	1835627552
	DD	1680351333
	DD	1952543349
	DD	544108393
	DD	1746955881
	DD	539587442
	DD	540024894
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_234	DD	1601463667
	DD	1600417381
	DD	1701669236
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_233	DD	544109906
	DD	1701669236
	DD	1969498144
	DD	1769234802
	DD	1763733103
	DD	1919426670
	DD	1948264819
	DD	1814065007
	DD	1701278305
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_228	DD	1769496909
	DD	544044397
	DD	2126697
__STRLITPACK_227	DD	1902454816
	DD	1635150197
	DD	1953391980
	DD	544175136
	DD	540028977
	DD	1918985593
	DW	10611
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_239	DD	1601463667
	DD	1600417381
	DD	1701669236
	DB	0
	DB 3 DUP ( 0H)	; pad
_2il0floatpacket.17	DD	03f350481H
_2il0floatpacket.18	DD	041100000H
_2il0floatpacket.19	DD	03f800000H
__STRLITPACK_302	DD	1400137031
	DD	1953718901
	DD	1702125938
	DD	1634885968
	DW	29549
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_301	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1970479207
	DD	1920234338
	DD	543519841
	DD	1634886000
	DD	1702126957
	DW	29554
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_297	DD	1701869908
	DD	2112800
__STRLITPACK_296	DD	1601463667
	DD	1935764579
	DD	1970429811
	DD	1818648430
	DD	7563105
__STRLITPACK_295	DD	1869771333
	DD	1818304626
	DD	1633906540
	DD	1735289204
	DD	1651864352
	DD	1634890867
	DD	1847616884
	DD	1936026977
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_291	DD	1651340622
	DD	1931506277
	DD	1953718901
	DD	1702125938
	DD	1887007776
	DD	1025536869
	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_306	DD	1601463667
	DD	1935764579
	DD	1970429811
	DD	1818648430
	DD	7563105
__STRLITPACK_305	DD	1953723725
	DD	1952805664
	DD	1881170208
	DD	1953067887
	DD	543520361
	DD	1970366828
	DD	1981834345
	DD	1868788585
	DD	2037672307
	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_304	DD	544370534
	DD	1868785011
	DD	1918985326
	DD	1986338937
	DD	1919905889
	DD	1869182049
	DD	1769414766
	DD	1881172084
	DD	1701671525
	DD	1701601889
	DD	1920299808
	DD	1701011814
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_303	DD	1702125901
	DD	1818323314
	DD	544434464
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_290	DD	1400137031
	DD	1953718901
	DD	1702125938
	DW	115
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_289	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1970479207
	DD	1920234338
	DD	543519841
	DD	1701667182
	DW	115
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_285	DD	707406378
	DD	707406378
	DD	539634218
	DD	1935832403
	DD	1952543348
	DD	1634738277
	DD	1701667186
	DD	1936876916
	DD	707406368
	DD	707406378
	DD	707406378
	DW	10794
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_281	DD	1411391520
	DD	543518841
	DD	538976288
	DD	540876832
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_277	DD	1344282656
	DD	1936683631
	DD	544830569
	DD	540876832
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_273	DD	1411391520
	DD	1970565743
	DD	1953067887
	DD	540876921
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_269	DD	1193287712
	DD	1852399986
	DD	2053722912
	DD	540876901
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_265	DD	707406378
	DD	707406378
	DD	1850023978
	DD	1970479204
	DD	1920234338
	DD	543519841
	DD	1634886000
	DD	1702126957
	DD	706769778
	DD	707406378
	DD	707406378
	DW	10794
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_193	DD	1667590243
	DD	1768316779
	DD	1601467250
	DD	7234419
__STRLITPACK_192	DD	1936877894
	DD	1701978228
	DD	1935762796
	DD	1936269413
	DD	1953459744
	DD	544497952
	DD	544109938
	DD	1918989427
	DD	1769218164
	DW	25965
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_188	DD	1881173838
	DD	1936090741
	DD	1818851104
	DD	1700929644
	DD	1818587680
	DD	1702060389
	DD	1853169764
	DD	543975796
	DD	4006004
__STRLITPACK_187	DD	1936877600
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_191	DD	1701602642
	DD	1936028513
	DD	1918985504
	DD	1919248748
	DD	1634235424
	DD	1953701998
	DD	544502369
	DD	1701669236
	DD	1818851104
	DD	1700929644
	DD	1852270880
	DD	1684370031
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_185	DD	1885956947
	DD	1735289200
	DD	1818587680
	DD	1702060389
	DD	544497952
	DD	4006004
__STRLITPACK_181	DD	1885956947
	DD	1735289200
	DD	1970238240
	DD	6644594
__STRLITPACK_177	DD	1885956947
	DD	1735289200
	DD	1970238240
	DD	6644594
__STRLITPACK_121	DD	1918989395
	DD	1735289204
	DD	1853190688
	DD	1952805664
	DD	1629515893
	DW	8308
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_120	DD	1953066601
	DD	1869374303
	DW	27491
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_119	DD	1869771333
	DD	1920409714
	DD	1852404841
	DD	1129521255
	DD	1179996233
	DD	1869357126
	DD	1768300647
	DW	25964
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_118	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_218	DD	1818845510
	DD	1948279909
	DD	1818304623
	DD	1633906540
	DD	1629513076
	DD	1768909412
	DD	1830843502
	DD	1919251553
	DD	543973737
	DD	1919906931
	DD	6645601
__STRLITPACK_217	DD	1953066569
	DD	1869243457
	DD	1299476073
	DW	29793
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_216	DD	4475983
__STRLITPACK_215	DD	1145128274
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_214	DD	1953066569
	DD	1869243457
	DD	1299476073
	DW	29793
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_213	DD	1869771333
	DD	1886330994
	DD	1852403301
	DD	1129521255
	DD	1179996233
	DD	1701978182
	DD	1935762796
	DD	1668489317
	DD	1918987877
	DD	1763733353
	DD	1953853550
	DD	1818846752
	DW	101
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_212	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_211	DD	1701536077
	DD	1920299808
	DD	1768300645
	DD	1696621932
	DD	1953720696
	DW	115
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_210	DD	1953066569
	DD	1869243457
	DD	1299476073
	DW	29793
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_209	DD	1702125901
	DD	1818323314
	DD	544106784
	DD	1852138355
	DD	1869181537
	DD	1818846752
	DD	1869488229
	DD	1868963956
	DD	543452789
	DD	1830841961
	DD	1919251553
	DD	543973737
	DD	1953720684
	DW	58
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_208	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_207	DD	1953066569
	DD	1869243457
	DD	1299476073
	DW	29793
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_206	DD	539914062
	DD	1914725999
	DD	1634036837
	DD	544433523
	DD	1931505257
	DD	1634624867
	DD	544172402
	DD	1701603686
	DD	1701798944
	DD	1869488243
	DD	1634541684
	DD	543712116
	DD	1702125933
	DD	1818323314
	DD	1936288800
	DW	116
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_205	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_204	DD	1936614739
	DD	1914729071
	DD	1634036837
	DD	544433523
	DD	1953723757
	DD	1702065440
	DD	1768846624
	DD	543520113
	DD	1702125933
	DD	1818323314
	DD	1835101728
	DW	29541
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_163	DD	4475983
__STRLITPACK_162	DD	1145128274
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_161	DD	1601069939
	DD	1953066601
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_160	DD	1869771333
	DD	1886330994
	DD	1852403301
	DD	1129521255
	DD	1179996233
	DD	1701978182
	DD	1935762796
	DD	1668489317
	DD	1918987877
	DD	1763733353
	DD	1953853550
	DD	1818846752
	DW	101
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_159	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_158	DD	1701536077
	DD	1920299808
	DD	1768300645
	DD	1696621932
	DD	1953720696
	DW	115
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_157	DD	1601069939
	DD	1953066601
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_156	DD	1914728270
	DD	1634036837
	DD	1713399155
	DD	1684960623
	DD	544108320
	DD	544105331
	DD	1701603686
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_155	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_151	DD	1885696592
	DD	1852404321
	DD	1869815911
	DD	1701016181
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_140	DD	1885956947
	DD	1735289200
	DD	1970238240
	DD	6644594
__STRLITPACK_135	DD	1818845510
	DD	1948279909
	DD	1701978223
	DD	1629512801
	DD	1663069292
	DD	1769238127
	DD	1970238830
	DD	1869815923
	DD	1701016181
	DD	1952539680
	DW	97
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_134	DD	1953066569
	DD	7102825
__STRLITPACK_133	DD	1953066569
	DD	1768710505
	DD	1735289210
	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_132	DD	2003136032
	DD	1718972448
	DW	29542
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_131	DD	1953066569
	DD	1768710505
	DD	1735289210
	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_130	DD	2003136032
	DD	1818587680
	DD	1702060389
	DW	115
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_146	DD	1869771333
	DD	1886724210
	DD	1769234788
	DD	1931503470
	DD	1668445551
	DD	1633951845
	DW	24948
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_145	DD	1953394499
	DD	1869966953
	DD	1931506549
	DD	1668445551
	DD	1679848293
	DD	1869488239
	DD	1634541684
	DD	543712116
	DD	1953719666
	DD	544502369
	DD	1635017060
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_144	DD	1601069939
	DD	1953066601
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_147	DD	1885696592
	DD	1852404321
	DD	1869815911
	DD	1701016181
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_136	DD	1885956947
	DD	1735289200
	DD	1970238240
	DD	6644594
__STRLITPACK_99	DW	46
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_95	DD	4475983
__STRLITPACK_94	DD	1145128274
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_93	DD	1953066601
	DD	7102825
__STRLITPACK_92	DD	1869771333
	DD	1886330994
	DD	1852403301
	DD	1129521255
	DD	1179996233
	DD	1634541638
	DD	1763733097
	DD	1953853550
	DD	1818846752
	DW	101
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_91	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_90	DD	1701536077
	DD	1920299808
	DD	1768300645
	DD	1696621932
	DD	1953720696
	DW	115
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_89	DD	1953066569
	DD	1768710505
	DD	1735289210
	DD	1229148960
	DD	1179014480
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_88	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_87	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_98	DD	1953066601
	DD	7102825
__STRLITPACK_97	DD	1785688656
	DD	544498533
	DD	1701667182
	DD	1869575200
	DD	1852795936
	DD	538979943
	DD	1953723725
	DD	543515168
	DD	892739644
	DD	1634231072
	DD	1952670066
	DD	779317861
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_96	DD	1701667150
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_7	DD	1226848800
	DD	1769236846
	DD	2053729377
	DW	25701
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_6	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_5	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_1	DD	1953066601
	DD	7102825
__STRLITPACK_0	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_86	DD	1226848800
	DD	1769236846
	DD	2053729377
	DD	6778473
__STRLITPACK_85	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_84	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_83	DD	1684104530
	DD	543649385
	DD	1785688688
	DD	544498533
	DD	1635017060
	DD	1818846752
	DW	29541
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_82	DD	1953066569
	DD	1768710505
	DD	1735289210
	DD	1952539680
	DW	97
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_79	DD	1768710486
	DD	1769234788
	DD	1830840174
	DD	1868919909
	DD	1869377394
	DD	1763735911
	DD	1953853550
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_78	DD	1953066569
	DD	1768710505
	DD	1735289210
	DD	1952804128
	DD	1869770597
	DD	2036821868
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_77	DD	1226848800
	DD	1769236846
	DD	2053729377
	DD	6778473
__STRLITPACK_76	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_75	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_53	DD	1953067607
	DD	543649385
	DD	1886680431
	DD	1713402997
	DD	677735529
	DW	10611
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_50	DD	1970562387
	DD	1868767344
	DD	1701605485
	DD	543450484
	DD	1948284001
	DW	15648
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_49	DD	779317864
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_4	DD	1953066601
	DD	7102825
__STRLITPACK_3	DD	1869771333
	DD	1920409714
	DD	1852404841
	DD	1129521255
	DD	1179996233
	DD	1869357126
	DD	1768300647
	DW	25964
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_2	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_74	DD	1634038339
	DD	1735289204
	DD	1869770784
	DD	1952671082
	DD	1953853216
	DD	544503152
	DD	1701603686
	DW	115
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_73	DD	1634038339
	DD	1735289204
	DD	1869770784
	DD	1952671082
	DD	1718972448
	DD	1768300646
	DW	25964
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_72	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_71	DD	1684104530
	DD	543649385
	DD	1953719666
	DD	544502369
	DD	1717990768
	DD	1818846752
	DW	101
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_70	DD	1684104530
	DD	543649385
	DD	1953719666
	DD	544502369
	DD	1718777203
	DD	543515489
	DD	1869636964
	DD	1769236851
	DD	1713401455
	DD	6646889
__STRLITPACK_69	DD	7365988
__STRLITPACK_68	DD	1684104530
	DD	543649385
	DD	1953719666
	DD	544502369
	DD	1718777203
	DD	543515489
	DD	1634955108
	DD	1713399143
	DD	6646889
__STRLITPACK_67	DD	7565156
__STRLITPACK_66	DD	1684104530
	DD	543649385
	DD	1953719666
	DD	544502369
	DD	1718777203
	DD	543515489
	DD	1768058209
	DD	544501349
	DD	1634955108
	DD	1713399143
	DD	6646889
__STRLITPACK_65	DD	1936680033
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_64	DD	1953067607
	DD	543649385
	DD	1886680431
	DD	1713402997
	DD	677735529
	DW	10611
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_63	DD	7368051
__STRLITPACK_57	DD	1953719634
	DD	544502369
	DD	1836020326
	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_56	DD	1836016416
	DD	1952803952
	DD	1629512805
	DD	544481396
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_55	DD	779317864
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_62	DD	1131641203
	DD	1182363759
	DD	543517801
	DD	1869771365
	DW	114
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_61	DW	15933
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_54	DD	1634038339
	DD	1735289204
	DD	1869770784
	DD	1952671082
	DD	1246908448
	DD	1818846752
	DW	101
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_46	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_42	DD	1869771333
	DD	1701978226
	DD	1818850658
	DD	1735289188
	DD	1869443872
	DD	543716463
	DD	1818585446
	DW	8292
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_38	DD	1836020326
	DD	1918988320
	DD	544501349
	DD	1818585446
	DW	8292
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_37	DD	1785688656
	DD	544498533
	DD	1701603686
	DD	544434464
	DD	1635151465
	DD	6580588
__STRLITPACK_47	DD	1296652115
	DD	1399088225
	DD	1953460077
	DD	1701398120
	DW	25708
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_48	DD	1296652115
	DD	1299477872
	DD	1852405865
	DD	7620711
__STRLITPACK_36	DD	1953066601
	DD	7102825
__STRLITPACK_35	DD	1970365778
	DD	1702130533
	DD	1868832868
	DD	1852399981
	DD	1902473760
	DD	1701996917
	DD	1701650547
	DD	1919903092
	DD	1735355503
	DD	1868963961
	DD	1867391090
	DD	543716466
	DD	1634496368
	DD	1633886322
	DW	8304
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_34	DD	1635151433
	DD	543451500
	DD	1702126957
	DD	1819243119
	DD	544827247
	DD	1701869940
	DD	544370464
	DD	1634561892
	DW	28265
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_33	DD	1953723725
	DD	543515168
	DD	1684632167
	DD	543450468
	DD	543452769
	DD	544497996
	DD	941636926
	DD	1701060662
	DD	1701147239
	DW	8307
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_28	DD	1886680399
	DD	1769239669
	DD	1763731310
	DD	1769236846
	DD	1998613601
	DD	543452777
	DD	1818585446
	DW	100
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_27	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_26	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_25	DD	1296652115
	DD	1886680431
	DW	29813
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_24	DD	1953066569
	DD	1768710505
	DD	1735289210
	DD	1970238240
	DD	1936024434
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_23	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_10	DD	1768383810
	DD	1852403310
	DD	1970413671
	DD	1769414766
	DD	2123892
__STRLITPACK_9	DD	1718972448
	DW	29542
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_8	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_19	DD	544109906
	DD	1936028192
	DD	1953653108
	DD	538993765
	DD	544497952
	DD	4006004
__STRLITPACK_18	DD	779317864
	DD	1953068832
	DD	1129193576
	DD	541869394
	DW	8253
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_17	DD	1684955424
	DD	1431326240
	DD	1025525318
	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_13	DD	544109906
	DD	1931485216
	DD	1953653108
	DD	538993765
	DD	544497952
	DD	4006004
__STRLITPACK_12	DD	779317864
	DD	1953068832
	DD	1129193576
	DD	541869394
	DW	8253
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_11	DD	1684955424
	DD	1431326240
	DD	1025525318
	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_32	DD	1953066601
	DD	7102825
__STRLITPACK_31	DD	1970365778
	DD	1702130533
	DD	1868832868
	DD	1852399981
	DD	1902473760
	DD	1701996917
	DD	1701650547
	DD	1919903092
	DD	1735355503
	DD	1868963961
	DD	1867718770
	DD	543716469
	DD	1634496368
	DD	1633886322
	DW	8304
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_30	DD	1635151433
	DD	543451500
	DD	1702126957
	DD	1819243119
	DD	544827247
	DD	1701869940
	DD	544370464
	DD	1634561892
	DW	28265
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_29	DD	1953723725
	DD	543515168
	DD	1684632167
	DD	543450468
	DD	1684955424
	DD	1952533536
	DD	540884000
	DD	540424237
	DD	1919378788
	DD	544433509
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_81	DD	1684104530
	DD	543649385
	DD	1785688688
	DD	544498533
	DD	1970302569
	DD	1633951860
	DW	24948
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_80	DD	1953066569
	DD	1768710505
	DD	1735289210
	DD	1952539680
	DW	97
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
EXTRN	FILES_FI_mp_FILE_LOG:BYTE
EXTRN	MET_FI_mp_TIMEOUTMET:BYTE
EXTRN	MET_FI_mp_LOUT_MET:BYTE
EXTRN	FLAGS_FI_mp_INT_SENSOR:BYTE
EXTRN	FLAGS_FI_mp_POLARCAP_S:BYTE
EXTRN	GRID_FI_mp_POLEFLD_S:BYTE
EXTRN	FLAGS_FI_mp_POLARCAP_N:BYTE
EXTRN	GRID_FI_mp_POLEFLD_N:BYTE
EXTRN	MET_FI_mp_NBASEMET:BYTE
EXTRN	MET_FI_mp_METGRID:BYTE
EXTRN	MATL_FI_mp_NTYPM:BYTE
EXTRN	MET_FI_mp_NUMMET:BYTE
EXTRN	TIME_FI_mp_T:BYTE
EXTRN	FILES_FI_mp_LUN_LOG:BYTE
EXTRN	FILES_FI_mp_FILE_SMP:BYTE
EXTRN	PROJECT_FI_mp_SMPFILE:BYTE
EXTRN	FLAGS_FI_mp_DOSE:BYTE
EXTRN	FILES_FI_mp_LUN_TMP:BYTE
EXTRN	FILES_FI_mp_PATH_RST:BYTE
EXTRN	FILES_FI_mp_FILE_TMP:BYTE
EXTRN	FLAGS_FI_mp_SURFACE:BYTE
EXTRN	PUFF_FI_mp_NPUF:BYTE
EXTRN	FILES_FI_mp_FILE_RST:BYTE
EXTRN	GRID_FI_mp_NZ:BYTE
EXTRN	MET_FI_mp_HMIN:BYTE
EXTRN	FLAGS_FI_mp_RUN_MODE:BYTE
EXTRN	FLAGS_FI_mp_LWASH:BYTE
EXTRN	FLAGS_FI_mp_CREATE:BYTE
EXTRN	FLAGS_FI_mp_RESTART:BYTE
EXTRN	FILES_FI_mp_LUN_INP:BYTE
EXTRN	PROJECT_FI_mp_NAME:BYTE
EXTRN	FILES_FI_mp_FILE_INP:BYTE
EXTRN	FLAGS_FI_mp_SAMPAMB:BYTE
EXTRN	FLAGS_FI_mp_MULTICOMP:BYTE
EXTRN	INTER_FI_mp_LPROCESSALL:BYTE
EXTRN	SURFACE_FI_mp_PAUXADOS:BYTE
EXTRN	SURFACE_FI_mp_PSRFADOS:BYTE
EXTRN	SURFACE_FI_mp_PAUXDOS:BYTE
EXTRN	SURFACE_FI_mp_PAUXDEP:BYTE
EXTRN	SURFACE_FI_mp_PSRFDOS:BYTE
EXTRN	SURFACE_FI_mp_PSRFDEP:BYTE
EXTRN	CHEM_FI_mp_LCHEMAMBDOSRES:BYTE
EXTRN	SURFACE_FI_mp_SRFADOS:BYTE
EXTRN	SAMPLER_FI_mp_LBINOUT:BYTE
EXTRN	SAMPLER_FI_mp_NSMP:BYTE
EXTRN	SURFACE_FI_mp_SRFDOS:BYTE
EXTRN	SURFACE_FI_mp_SRFDEP:BYTE
EXTRN	CONT_REL_FI_mp_RUNUPDATES:BYTE
EXTRN	CONT_REL_FI_mp_MAXDEFINITION:BYTE
EXTRN	CONT_REL_FI_mp_NUMDEFINITION:BYTE
EXTRN	CONT_REL_FI_mp_MAXCOLLECTION:BYTE
EXTRN	CONT_REL_FI_mp_NUMCOLLECTION:BYTE
EXTRN	CONT_REL_FI_mp_INITSTATICS:BYTE
EXTRN	NEXTREL_FI_mp_INSTRELEASELIST:BYTE
EXTRN	NEXTREL_FI_mp_ACTIVESOURCE:BYTE
EXTRN	NEXTREL_FI_mp_CURRENTSPEC:BYTE
EXTRN	TIME_FI_mp_TZONE:BYTE
EXTRN	TIME_FI_mp_DAY_START:BYTE
EXTRN	TIME_FI_mp_MONTH_START:BYTE
EXTRN	TIME_FI_mp_YEAR_START:BYTE
EXTRN	TIME_FI_mp_TSTART:BYTE
EXTRN	FLAGS_FI_mp_LOCAL:BYTE
EXTRN	TIME_FI_mp_DELT:BYTE
EXTRN	TIME_FI_mp_DT_SAVE:BYTE
EXTRN	TIME_FI_mp_DAY_END:BYTE
EXTRN	TIME_FI_mp_MONTH_END:BYTE
EXTRN	TIME_FI_mp_YEAR_END:BYTE
EXTRN	TIME_FI_mp_TEND_HR:BYTE
EXTRN	TIME_FI_mp_TEND:BYTE
EXTRN	TIME_FI_mp_T_OLD_R:BYTE
EXTRN	NEXTREL_FI_mp_INIT_SOURCE:BYTE
EXTRN	FILES_FI_mp_FILE_SCN:BYTE
EXTRN	FILES_FI_mp_LUN_SCN:BYTE
EXTRN	ERROR_FI_mp_NRELBEFORESTART:BYTE
EXTRN	ADJOINT_FI_mp_ADJMAT:BYTE
EXTRN	MATL_FI_mp_MATERIAL:BYTE
EXTRN	ADJOINT_FI_mp_TFIRSTTRIGGER:BYTE
EXTRN	TIME_FI_mp_TEND_R:BYTE
EXTRN	TIME_FI_mp_JUL_START:BYTE
EXTRN	FLAGS_FI_mp_LYMD:BYTE
EXTRN	SUBSTRATE_FI_mp_K_SUBSTRATE:BYTE
EXTRN	SUBSTRATE_FI_mp_GRAIN_SIZE:BYTE
EXTRN	SUBSTRATE_FI_mp_TORTUOSITY:BYTE
EXTRN	SUBSTRATE_FI_mp_POROSITY:BYTE
EXTRN	FILES_FI_mp_FILE_LUS:BYTE
EXTRN	TYPE_FI_mp_SUBSTRATE_TYPE:BYTE
EXTRN	GRID_FI_mp_MXLEV_EVAP:BYTE
EXTRN	FLAGS_FI_mp_EVAPORATION:BYTE
EXTRN	FLAGS_FI_mp_LDECAY:BYTE
EXTRN	MET_FI_mp_MET_TYPE:BYTE
EXTRN	ERROR_FI_mp_NTHREADS:BYTE
EXTRN	CHEM_FI_mp_CHEMMC:BYTE
EXTRN	MATL_FI_mp_MAT_MC:BYTE
EXTRN	GRID_FI_mp_YMAX:BYTE
EXTRN	GRID_FI_mp_YMIN:BYTE
EXTRN	GRID_FI_mp_XMAX:BYTE
EXTRN	GRID_FI_mp_XMIN:BYTE
EXTRN	CHEM_FI_mp_XCHEMAMBDOSRES:BYTE
EXTRN	FILES_FI_mp_LUN_ADOS:BYTE
EXTRN	FILES_FI_mp_FILE_ADOS:BYTE
EXTRN	TYPE_FI_mp_NTYPD:BYTE
EXTRN	FILES_FI_mp_LUN_DOS:BYTE
EXTRN	FILES_FI_mp_FILE_DOS:BYTE
EXTRN	SURFACE_FI_mp_SRFDOSADJ:BYTE
EXTRN	SURFACE_FI_mp_NSRF_BLOCKS:BYTE
EXTRN	SURFACE_FI_mp_SRFNAM:BYTE
EXTRN	PROJECT_FI_mp_IVERSION:BYTE
EXTRN	SURFACE_FI_mp_SRF_BLOCK:BYTE
EXTRN	SURFACE_FI_mp_NDEP_BLOCKS:BYTE
EXTRN	TYPE_FI_mp_NTYPS:BYTE
EXTRN	SURFACE_FI_mp_MAXSG:BYTE
EXTRN	FILES_FI_mp_LUN_DEP:BYTE
EXTRN	FILES_FI_mp_FILE_DEP:BYTE
	COMM COMMONERRORFI:BYTE:468
	COMM MET_PUF:BYTE:300
	COMM EVAPTEMP_CMN:BYTE:12
	COMM INTER_FI_CMN:BYTE:556
	COMM CHEM_FI_CMN:BYTE:1296
	COMM STEP_P_FI_CMN:BYTE:384
	COMM SRFAUX_FI_CMN:BYTE:224
	COMM SRFAUX_FI_PQ:BYTE:24
_DATA	ENDS
EXTRN	__kmpc_threadprivate_cached:PROC
EXTRN	__kmpc_global_thread_num:PROC
EXTRN	SAG_PTRGRDSTR:PROC
EXTRN	SAG_PTRAUXSTR:PROC
EXTRN	SAG_NEWGRDSTR:PROC
EXTRN	SAG_INITGRIDID:PROC
EXTRN	SAG_INITGRIDFILEID:PROC
EXTRN	SAG_CLOSEID:PROC
EXTRN	CREATE_IT:PROC
EXTRN	SETCHEMAMBDOSRES:PROC
EXTRN	CHECKDOMAINOVERLAP:PROC
EXTRN	INITCHEMSTEPAMB:PROC
EXTRN	INITCHEMSFCFLUX:PROC
EXTRN	INITCHEMAMB:PROC
EXTRN	SWIMGETGRIDTYPE:PROC
EXTRN	__powr4i4:PROC
EXTRN	memmove:PROC
EXTRN	ISEVAP:PROC
EXTRN	GETSUBSTRATEPARAMS:PROC
EXTRN	GETNUMSUBSTRATES:PROC
EXTRN	GETSUBSTRATES:PROC
EXTRN	GET_PUFF_MATERIAL:PROC
EXTRN	JULIAN_DAY:PROC
EXTRN	SET_YEAR:PROC
EXTRN	YEAR_MONTH_DAY:PROC
EXTRN	for_alloc_allocatable:PROC
EXTRN	for_check_mult_overflow64:PROC
EXTRN	for_dealloc_allocatable:PROC
EXTRN	ISNULLSENSOR:PROC
EXTRN	GETRELEASEMASS:PROC
EXTRN	PROCESS_SCN_CONT:PROC
EXTRN	UPDATE_SCN:PROC
EXTRN	INIT_ERROR:PROC
EXTRN	VALID_SCN:PROC
EXTRN	INIT_RANDOM_LOC:PROC
EXTRN	I_RELEASE:PROC
EXTRN	for_write_seq_lis_xmit:PROC
EXTRN	for_write_seq_lis:PROC
EXTRN	for_write_int_lis_xmit:PROC
EXTRN	for_write_int_lis:PROC
EXTRN	WARNINGMESSAGE:PROC
EXTRN	GETRELEASEDURATION:PROC
EXTRN	CONT_REL_FUNCTIONS_mp_COUNT_NREL:PROC
EXTRN	SCALEREAL:PROC
EXTRN	START_CLOCK:PROC
EXTRN	GET_SCN:PROC
EXTRN	STEP_CLOCK:PROC
EXTRN	SET_REL:PROC
EXTRN	INTERACTCONTINUOUSRELEASES:PROC
EXTRN	CLEAR_RANDOM_LOC:PROC
EXTRN	STOP_CLOCK:PROC
EXTRN	SYSGETTIME:PROC
EXTRN	INITRELEASESPEC:PROC
EXTRN	for_close:PROC
EXTRN	for_write_int_fmt_xmit:PROC
EXTRN	for_write_int_fmt:PROC
EXTRN	for_write_seq_fmt_xmit:PROC
EXTRN	for_write_seq_fmt:PROC
EXTRN	for_len_trim:PROC
EXTRN	for_cpstr:PROC
EXTRN	for_concat:PROC
EXTRN	for_trim:PROC
EXTRN	for_open:PROC
EXTRN	for_cpystr:PROC
EXTRN	for_f90_index:PROC
EXTRN	CONT_REL_FUNCTIONS_mp_COUNTDEFINITIONS:PROC
EXTRN	ADDEXTENSION:PROC
EXTRN	FORMATPUFFS:PROC
EXTRN	SWIMPUTMIXINGHT:PROC
EXTRN	SWIMOUTPUT:PROC
EXTRN	SWIMADDSMOOTHFIELD:PROC
EXTRN	SETMETGRID:PROC
EXTRN	SYSCOPYFILE:PROC
EXTRN	SWIMGETHMIN:PROC
EXTRN	SPLITNAME:PROC
EXTRN	REPORTFILENAME:PROC
EXTRN	WRITE_PROGRESS:PROC
EXTRN	ENABLESCIPUFFHALT:PROC
EXTRN	READNAMELISTCTRL:PROC
EXTRN	SET_MXGRD:PROC
EXTRN	OLD_START:PROC
EXTRN	READNAMELISTTIME1:PROC
EXTRN	READNAMELISTTIME2:PROC
EXTRN	NEW_START:PROC
EXTRN	CHECK_PROGRESS:PROC
EXTRN	INIT_MET:PROC
EXTRN	INIT_WASH:PROC
EXTRN	SET_GRID:PROC
EXTRN	ALLOCATE_IP:PROC
EXTRN	ZERO_IP:PROC
EXTRN	CREATECHEMOUTPUT:PROC
EXTRN	CREATE_OUTPUT:PROC
EXTRN	PUFF_RST:PROC
EXTRN	SET_IP:PROC
EXTRN	SET_TLEV:PROC
EXTRN	ADDPATH:PROC
EXTRN	SURF_RST:PROC
EXTRN	WRITE_PUFF:PROC
EXTRN	WRITE_PRJ:PROC
EXTRN	INIT_SRF_BLOCKS:PROC
EXTRN	SETSWIMERROR:PROC
EXTRN	READ_SMP:PROC
EXTRN	WRITESWIMLOG:PROC
EXTRN	__chkstk:PROC
EXTRN	__ImageBase:PROC
EXTRN	_fltused:BYTE
	INCLUDELIB <ifconsol>
	INCLUDELIB <libifcoremt>
	INCLUDELIB <libifport>
	INCLUDELIB <libiomp5md>
	INCLUDELIB <libmmt>
	INCLUDELIB <LIBCMT>
	INCLUDELIB <libirc>
	INCLUDELIB <svml_dispmt>
	INCLUDELIB <OLDNAMES>
	END
