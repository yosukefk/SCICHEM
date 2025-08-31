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
; -- Begin  RUN
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC RUN
; --- RUN
RUN	PROC 
; parameter 1: rcx
; parameter 2: rdx
.B1.1::                         ; Preds .B1.0
                                ; Execution count [0.00e+000]
L1::
                                                           ;6.12
        push      r13                                           ;6.12
        push      r14                                           ;6.12
        push      r15                                           ;6.12
        push      rbp                                           ;6.12
        sub       rsp, 296                                      ;6.12
        mov       rbp, rcx                                      ;6.12
        lea       rcx, QWORD PTR [.2.4_2_kmpc_loc_struct_pack.12] ;6.12
        mov       r13, rdx                                      ;6.12
        call      __kmpc_global_thread_num                      ;6.12
                                ; LOE rbx rbp rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.62::                        ; Preds .B1.1
                                ; Execution count [0.00e+000]
        mov       r8, QWORD PTR [.2.4_2_kmpv_RUN$BLK.ERROR_FI_mp_NERROR_V$eb_cache_0.27] ;6.12
        test      r8, r8                                        ;6.12
        je        .B1.3         ; Prob 50%                      ;6.12
                                ; LOE rbx rbp rsi rdi r8 r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.2::                         ; Preds .B1.62
                                ; Execution count [0.00e+000]
        lea       ecx, DWORD PTR [rax*8]                        ;6.12
        movsxd    rcx, ecx                                      ;6.12
        mov       r14, QWORD PTR [rcx+r8]                       ;6.12
        test      r14, r14                                      ;6.12
        jne       .B1.5         ; Prob 50%                      ;6.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.3::                         ; Preds .B1.2 .B1.62
                                ; Execution count [0.00e+000]
        mov       r11, rsp                                      ;6.12
        lea       rcx, QWORD PTR [.2.4_2_kmpc_loc_struct_pack.20] ;6.12
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;6.12
        mov       edx, eax                                      ;6.12
        mov       r9, QWORD PTR [.2.4_2_kmpv_RUN$BLK.ERROR_FI_mp_NERROR_V$eb_size_0.28] ;6.12
        lea       r10, QWORD PTR [.2.4_2_kmpv_RUN$BLK.ERROR_FI_mp_NERROR_V$eb_cache_0.27] ;6.12
        mov       QWORD PTR [32+r11], r10                       ;6.12
        call      __kmpc_threadprivate_cached                   ;6.12
                                ; LOE rax rbx rbp rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.63::                        ; Preds .B1.3
                                ; Execution count [0.00e+000]
        mov       r14, rax                                      ;6.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.5::                         ; Preds .B1.63 .B1.2
                                ; Execution count [1.00e+000]
        lea       rcx, QWORD PTR [__NLITPACK_0.0.1]             ;29.6
        call      WRITE_PROGRESS_BAR                            ;29.6
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.6::                         ; Preds .B1.5
                                ; Execution count [1.00e+000]
        call      CHECK_PROGRESS                                ;31.6
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.7::                         ; Preds .B1.6
                                ; Execution count [1.00e+000]
        cmp       DWORD PTR [464+r14], 0                        ;32.12
        je        .B1.9         ; Prob 5%                       ;32.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.8::                         ; Preds .B1.56 .B1.50 .B1.47 .B1.45 .B1.41
                                ;       .B1.37 .B1.7 .B1.15 .B1.17 .B1.28
                                ;       .B1.32
                                ; Execution count [1.00e+000]
        add       rsp, 296                                      ;131.1
        pop       rbp                                           ;131.1
        pop       r15                                           ;131.1
        pop       r14                                           ;131.1
        pop       r13                                           ;131.1
        ret                                                     ;131.1
                                ; LOE
.B1.9::                         ; Preds .B1.7
                                ; Execution count [5.00e-002]: Infreq
        lea       rcx, QWORD PTR [TIME_FI_mp_T]                 ;36.7
        lea       rdx, QWORD PTR [MET_FI_mp_SWIMSTATUS]         ;36.7
        call      SWIMUPDATEMET                                 ;36.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.64::                        ; Preds .B1.9
                                ; Execution count [5.00e-002]: Infreq
        mov       r15d, eax                                     ;36.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.10::                        ; Preds .B1.64
                                ; Execution count [5.00e-002]: Infreq
        lea       rcx, QWORD PTR [PROJECT_FI_mp_ISTOP]          ;37.6
        call      ENABLESCIPUFFHALT                             ;37.6
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.11::                        ; Preds .B1.10
                                ; Execution count [5.00e-002]: Infreq
        cmp       r15d, 1                                       ;38.9
        jne       .B1.57        ; Prob 21%                      ;38.9
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.12::                        ; Preds .B1.11
                                ; Execution count [3.92e-002]: Infreq
        call      WRITESWIMLOG                                  ;43.6
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.13::                        ; Preds .B1.12
                                ; Execution count [3.92e-002]: Infreq
        test      BYTE PTR [MET_FI_mp_SWIMSTATUS], 4            ;45.5
        je        .B1.16        ; Prob 60%                      ;45.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.14::                        ; Preds .B1.13
                                ; Execution count [6.20e-003]: Infreq
        call      SETMETGRID                                    ;46.9
                                ; LOE rbx rbp rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.15::                        ; Preds .B1.14
                                ; Execution count [6.20e-003]: Infreq
        cmp       eax, 1                                        ;47.11
        jne       .B1.8         ; Prob 84%                      ;47.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.16::                        ; Preds .B1.13 .B1.15
                                ; Execution count [3.40e-002]: Infreq
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;52.19
        lea       rdx, QWORD PTR [288+rsp]                      ;52.6
        lea       rcx, QWORD PTR [TIME_FI_mp_T]                 ;52.6
        addss     xmm0, DWORD PTR [TIME_FI_mp_DELT]             ;52.22
        movss     DWORD PTR [rdx], xmm0                         ;52.22
        call      SYNCHRONIZE                                   ;52.6
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.17::                        ; Preds .B1.16
                                ; Execution count [3.40e-002]: Infreq
        cmp       DWORD PTR [464+r14], 0                        ;53.12
        jne       .B1.8         ; Prob 50%                      ;53.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.18::                        ; Preds .B1.17
                                ; Execution count [1.70e-002]: Infreq
        test      BYTE PTR [MET_FI_mp_LOUT_MET], 1              ;57.5
        je        .B1.36        ; Prob 29%                      ;57.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.19::                        ; Preds .B1.18
                                ; Execution count [1.19e-002]: Infreq
        test      BYTE PTR [MET_FI_mp_LOUT_MC], 1               ;59.7
        je        .B1.21        ; Prob 60%                      ;59.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.20::                        ; Preds .B1.19
                                ; Execution count [4.77e-003]: Infreq
        mov       eax, DWORD PTR [MET_FI_mp_SWIMSTATUS]         ;60.5
        not       eax                                           ;60.18
        and       eax, 1                                        ;60.18
        dec       eax                                           ;60.5
        jmp       .B1.22        ; Prob 100%                     ;60.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.21::                        ; Preds .B1.19
                                ; Execution count [7.16e-003]: Infreq
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;62.5
        divss     xmm0, DWORD PTR [TIME_FI_mp_DELT]             ;62.26
        addss     xmm0, DWORD PTR [_2il0floatpacket.0]          ;62.21
        cvttss2si eax, xmm0                                     ;62.21
        cdq                                                     ;62.17
        idiv      DWORD PTR [MET_FI_mp_NOUT_MET]                ;62.17
        xor       eax, eax                                      ;62.5
        cmp       edx, 1                                        ;62.5
        sbb       eax, 0                                        ;62.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.22::                        ; Preds .B1.20 .B1.21
                                ; Execution count [1.19e-002]: Infreq
        test      al, 1                                         ;64.7
        je        .B1.36        ; Prob 29%                      ;64.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.23::                        ; Preds .B1.22
                                ; Execution count [8.39e-003]: Infreq
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;65.5
        comiss    xmm0, DWORD PTR [MET_FI_mp_TIMEOUTMET]        ;65.11
        jbe       .B1.36        ; Prob 50%                      ;65.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.24::                        ; Preds .B1.23
                                ; Execution count [4.19e-003]: Infreq
        mov       rax, rsp                                      ;66.7
        lea       rcx, QWORD PTR [48+rsp]                       ;66.7
        mov       edx, 80                                       ;66.7
        lea       r8, QWORD PTR [__STRLITPACK_3]                ;66.7
        mov       r9d, 21                                       ;66.7
        mov       QWORD PTR [32+rax], 0                         ;66.7
        call      for_cpystr                                    ;66.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.25::                        ; Preds .B1.24
                                ; Execution count [4.19e-003]: Infreq
        mov       rax, rsp                                      ;67.7
        lea       rcx, QWORD PTR [128+rsp]                      ;67.7
        mov       edx, 80                                       ;67.7
        lea       r8, QWORD PTR [__STRLITPACK_2]                ;67.7
        mov       r9d, 1                                        ;67.7
        mov       QWORD PTR [32+rax], 0                         ;67.7
        call      for_cpystr                                    ;67.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.26::                        ; Preds .B1.25
                                ; Execution count [4.19e-003]: Infreq
        mov       rax, rsp                                      ;68.7
        lea       r15, QWORD PTR [208+rsp]                      ;68.7
        mov       rcx, r15                                      ;68.7
        mov       edx, 80                                       ;68.7
        lea       r8, QWORD PTR [__STRLITPACK_1]                ;68.7
        mov       r9d, 1                                        ;68.7
        mov       QWORD PTR [32+rax], 0                         ;68.7
        call      for_cpystr                                    ;68.7
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.27::                        ; Preds .B1.26
                                ; Execution count [4.19e-003]: Infreq
        mov       rax, rsp                                      ;69.12
        mov       edx, 80                                       ;69.12
        mov       r9, rdx                                       ;69.12
        lea       rcx, QWORD PTR [48+rsp]                       ;69.12
        lea       r8, QWORD PTR [128+rsp]                       ;69.12
        mov       QWORD PTR [32+rax], r15                       ;69.12
        mov       QWORD PTR [40+rax], 80                        ;69.12
        call      WRITE_PROGRESS                                ;69.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.28::                        ; Preds .B1.27
                                ; Execution count [4.19e-003]: Infreq
        cmp       DWORD PTR [464+r14], 0                        ;70.18
        jne       .B1.8         ; Prob 78%                      ;70.18
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.29::                        ; Preds .B1.28
                                ; Execution count [9.22e-004]: Infreq
        call      SWIMOUTPUT                                    ;72.13
                                ; LOE rbx rbp rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.30::                        ; Preds .B1.29
                                ; Execution count [9.22e-004]: Infreq
        cmp       eax, 1                                        ;73.15
        jne       .B1.35        ; Prob 21%                      ;73.15
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.31::                        ; Preds .B1.30
                                ; Execution count [7.23e-004]: Infreq
        mov       eax, DWORD PTR [TIME_FI_mp_T]                 ;77.7
        mov       DWORD PTR [MET_FI_mp_TIMEOUTMET], eax         ;77.7
        call      WRITESWIMLOG                                  ;79.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.32::                        ; Preds .B1.31
                                ; Execution count [7.23e-004]: Infreq
        cmp       DWORD PTR [464+r14], 0                        ;81.18
        jne       .B1.8         ; Prob 50%                      ;81.18
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.33::                        ; Preds .B1.32
                                ; Execution count [3.61e-004]: Infreq
        test      BYTE PTR [MET_FI_mp_LOUT_MC], 1               ;82.11
        je        .B1.36        ; Prob 60%                      ;82.11
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.34::                        ; Preds .B1.33
                                ; Execution count [1.45e-004]: Infreq
        mov       DWORD PTR [MET_FI_mp_NOUT_MET], -1            ;82.20
        jmp       .B1.36        ; Prob 100%                     ;82.20
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.35::                        ; Preds .B1.30
                                ; Execution count [2.00e-004]: Infreq
        lea       rcx, QWORD PTR [__STRLITPACK_0]               ;74.14
        mov       edx, 10                                       ;74.14
        call      SETSWIMERROR                                  ;74.14
        add       rsp, 296                                      ;74.14
        pop       rbp                                           ;74.14
        pop       r15                                           ;74.14
        pop       r14                                           ;74.14
        pop       r13                                           ;74.14
        ret                                                     ;74.14
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.36::                        ; Preds .B1.18 .B1.22 .B1.23 .B1.33 .B1.34
                                ;      
                                ; Execution count [1.32e-002]: Infreq
        call      CHECK_PROGRESS                                ;88.6
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.37::                        ; Preds .B1.36
                                ; Execution count [1.32e-002]: Infreq
        cmp       DWORD PTR [464+r14], 0                        ;89.12
        jne       .B1.8         ; Prob 50%                      ;89.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.38::                        ; Preds .B1.37
                                ; Execution count [6.58e-003]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_STATIC], 1              ;93.5
        je        .B1.40        ; Prob 84%                      ;93.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.39::                        ; Preds .B1.38
                                ; Execution count [1.04e-003]: Infreq
        call      RESET_STATIC_PUFFS                            ;93.13
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.40::                        ; Preds .B1.39 .B1.38
                                ; Execution count [6.58e-003]: Infreq
        call      PUFF_RELEASE                                  ;97.6
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.41::                        ; Preds .B1.40
                                ; Execution count [6.58e-003]: Infreq
        cmp       DWORD PTR [464+r14], 0                        ;98.12
        jne       .B1.8         ; Prob 50%                      ;98.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.42::                        ; Preds .B1.41
                                ; Execution count [3.29e-003]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_LDECAY], 1              ;102.5
        je        .B1.46        ; Prob 29%                      ;102.5
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.43::                        ; Preds .B1.42
                                ; Execution count [2.31e-003]: Infreq
        test      BYTE PTR [FLAGS_FI_mp_SURFACE], 1             ;102.18
        je        .B1.46        ; Prob 60%                      ;102.18
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.44::                        ; Preds .B1.43
                                ; Execution count [9.24e-004]: Infreq
        call      SRF_DECAY                                     ;103.8
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.45::                        ; Preds .B1.44
                                ; Execution count [9.24e-004]: Infreq
        cmp       DWORD PTR [464+r14], 0                        ;104.14
        jne       .B1.8         ; Prob 78%                      ;104.14
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.46::                        ; Preds .B1.45 .B1.43 .B1.42
                                ; Execution count [2.57e-003]: Infreq
        call      STEP                                          ;109.6
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.47::                        ; Preds .B1.46
                                ; Execution count [2.57e-003]: Infreq
        cmp       DWORD PTR [464+r14], 0                        ;110.12
        jne       .B1.8         ; Prob 50%                      ;110.12
                                ; LOE rbx rbp rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.48::                        ; Preds .B1.47
                                ; Execution count [1.28e-003]: Infreq
        inc       DWORD PTR [r13]                               ;112.1
        call      WRITESWIMLOG                                  ;116.6
                                ; LOE rbx rbp rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.49::                        ; Preds .B1.48
                                ; Execution count [1.28e-003]: Infreq
        call      CHECK_PROGRESS                                ;118.6
                                ; LOE rbx rbp rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.50::                        ; Preds .B1.49
                                ; Execution count [1.28e-003]: Infreq
        cmp       DWORD PTR [464+r14], 0                        ;119.12
        jne       .B1.8         ; Prob 50%                      ;119.12
                                ; LOE rbx rbp rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.51::                        ; Preds .B1.50
                                ; Execution count [6.42e-004]: Infreq
        mov       eax, DWORD PTR [PROJECT_FI_mp_ISTOP]          ;123.19
        mov       edx, DWORD PTR [PUFF_FI_mp_NPUF]              ;123.1
        mov       ecx, DWORD PTR [PUFF_FI_mp_MAXPUF]            ;123.1
        test      eax, eax                                      ;123.43
        jne       .B1.53        ; Prob 50%                      ;123.43
                                ; LOE rbx rbp rsi rdi r12 eax edx ecx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.52::                        ; Preds .B1.51
                                ; Execution count [3.21e-004]: Infreq
        mov       r8d, -1                                       ;123.43
        jmp       .B1.54        ; Prob 100%                     ;123.43
                                ; LOE rbx rbp rsi rdi r12 edx ecx r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.53::                        ; Preds .B1.51
                                ; Execution count [3.21e-004]: Infreq
        xor       r8d, r8d                                      ;123.43
        cmp       eax, 2                                        ;123.59
        je        .B1.55        ; Prob 16%                      ;123.59
                                ; LOE rbx rbp rsi rdi r12 edx ecx r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.54::                        ; Preds .B1.52 .B1.53
                                ; Execution count [5.39e-004]: Infreq
        xor       eax, eax                                      ;123.59
        jmp       .B1.56        ; Prob 100%                     ;123.59
                                ; LOE rbx rbp rsi rdi r12 eax edx ecx r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.55::                        ; Preds .B1.53
                                ; Execution count [1.03e-004]: Infreq
        mov       eax, -1                                       ;123.59
                                ; LOE rbx rbp rsi rdi r12 eax edx ecx r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.56::                        ; Preds .B1.55 .B1.54
                                ; Execution count [6.42e-004]: Infreq
        cmp       edx, ecx                                      ;123.1
        mov       edx, 0                                        ;123.1
        setge     dl                                            ;123.1
        or        r8d, eax                                      ;123.48
        dec       edx                                           ;123.1
        and       edx, r8d                                      ;123.1
        mov       DWORD PTR [rbp], edx                          ;123.1
        test      dl, 1                                         ;124.5
        jne       .B1.58        ; Prob 3%                       ;124.5
        jmp       .B1.8         ; Prob 100%                     ;124.5
                                ; LOE rbx rbp rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.57::                        ; Preds .B1.11
                                ; Execution count [1.08e-002]: Infreq
        lea       rcx, QWORD PTR [__STRLITPACK_4]               ;39.8
        mov       edx, 13                                       ;39.8
        call      SETSWIMERROR                                  ;39.8
        add       rsp, 296                                      ;39.8
        pop       rbp                                           ;39.8
        pop       r15                                           ;39.8
        pop       r14                                           ;39.8
        pop       r13                                           ;39.8
        ret                                                     ;39.8
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.58::                        ; Preds .B1.56
                                ; Execution count [2.18e-005]: Infreq
;       COUNTDEFINITIONS
        call      CONT_REL_FUNCTIONS_mp_COUNTDEFINITIONS        ;125.47
                                ; LOE rbx rbp rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.59::                        ; Preds .B1.58
                                ; Execution count [2.18e-005]: Infreq
        xor       edx, edx                                      ;125.3
        cmp       DWORD PTR [PUFF_FI_mp_NPUF], 0                ;125.3
        setle     dl                                            ;125.3
        test      eax, eax                                      ;125.3
        mov       eax, 0                                        ;125.3
        setle     al                                            ;125.3
        dec       edx                                           ;125.3
        or        edx, DWORD PTR [NEXTREL_FI_mp_ACTIVESOURCE]   ;125.24
        dec       eax                                           ;125.3
        or        edx, eax                                      ;125.3
        mov       DWORD PTR [rbp], edx                          ;125.3
        add       rsp, 296                                      ;125.3
        pop       rbp                                           ;125.3
        pop       r15                                           ;125.3
        pop       r14                                           ;125.3
        pop       r13                                           ;125.3
        ret                                                     ;125.3
        ALIGN     16
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.60::
; mark_end;
RUN ENDP
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.RUN.B1_B59	DD	396801
	DD	2425102
	DD	4026945543
	DD	3489849348
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.RUN.B1_B59	DD	imagerel .B1.1
	DD	imagerel .B1.60
	DD	imagerel .unwind.RUN.B1_B59
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.4_2_kmpv_RUN$BLK.ERROR_FI_mp_NERROR_V$eb_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
.2.4_2_kmpv_RUN$BLK.ERROR_FI_mp_NERROR_V$eb_size_0.28	DD	0000001d4H,000000000H
.2.4_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.4_2__kmpc_loc_pack.11
.2.4_2__kmpc_loc_pack.11	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	82
	DB	85
	DB	78
	DB	59
	DB	54
	DB	59
	DB	54
	DB	59
	DB	59
	DB 2 DUP ( 0H)	; pad
.2.4_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.4_2__kmpc_loc_pack.19
.2.4_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	82
	DB	85
	DB	78
	DB	59
	DB	54
	DB	59
	DB	49
	DB	51
	DB	49
	DB	59
	DB	59
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
__NLITPACK_0.0.1	DD	0
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  RUN
_RDATA	SEGMENT     READ  'DATA'
_2il0floatpacket.0	DD	03efff2e5H
__STRLITPACK_3	DD	1886680399
	DD	1769239669
	DD	1998612334
	DD	543452777
	DD	1818585446
	DW	100
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_2	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_1	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_0	DD	1296652115
	DD	1886680431
	DW	29813
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_4	DD	1296652115
	DD	1633972341
	DD	1699571060
	DW	116
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
EXTRN	NEXTREL_FI_mp_ACTIVESOURCE:BYTE
EXTRN	PUFF_FI_mp_MAXPUF:BYTE
EXTRN	PUFF_FI_mp_NPUF:BYTE
EXTRN	FLAGS_FI_mp_SURFACE:BYTE
EXTRN	FLAGS_FI_mp_LDECAY:BYTE
EXTRN	MET_FI_mp_TIMEOUTMET:BYTE
EXTRN	MET_FI_mp_NOUT_MET:BYTE
EXTRN	MET_FI_mp_LOUT_MC:BYTE
EXTRN	MET_FI_mp_LOUT_MET:BYTE
EXTRN	TIME_FI_mp_DELT:BYTE
EXTRN	PROJECT_FI_mp_ISTOP:BYTE
EXTRN	MET_FI_mp_SWIMSTATUS:BYTE
EXTRN	TIME_FI_mp_T:BYTE
EXTRN	FLAGS_FI_mp_STATIC:BYTE
	COMM COMMONERRORFI:BYTE:468
	COMM MET_PUF:BYTE:300
_DATA	ENDS
EXTRN	__kmpc_threadprivate_cached:PROC
EXTRN	__kmpc_global_thread_num:PROC
EXTRN	for_cpystr:PROC
EXTRN	CONT_REL_FUNCTIONS_mp_COUNTDEFINITIONS:PROC
EXTRN	SWIMUPDATEMET:PROC
EXTRN	SWIMOUTPUT:PROC
EXTRN	SETMETGRID:PROC
EXTRN	WRITE_PROGRESS_BAR:PROC
EXTRN	CHECK_PROGRESS:PROC
EXTRN	ENABLESCIPUFFHALT:PROC
EXTRN	SETSWIMERROR:PROC
EXTRN	WRITESWIMLOG:PROC
EXTRN	SYNCHRONIZE:PROC
EXTRN	WRITE_PROGRESS:PROC
EXTRN	RESET_STATIC_PUFFS:PROC
EXTRN	PUFF_RELEASE:PROC
EXTRN	SRF_DECAY:PROC
EXTRN	STEP:PROC
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
