; mark_description "Intel(R) Visual Fortran Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.5.281 Bui";
; mark_description "ld 20190815";
; mark_description "/If90mod\\intel\\x64\\Release\\ /IU:\\scipuff\\Repository\\UNIX\\EPRIx64_OMP\\SCICHEM-3.2\\build\\windows\\w";
; mark_description "orkspace\\EPRI\\vs2013\\f90mod\\intel\\x64\\Release /IU:\\scipuff\\Repository\\UNIX\\EPRIx64_OMP\\SCICHEM-3.";
; mark_description "2\\build\\windows\\workspace\\EPRI\\vs2013\\f90mod\\intel\\x64\\Release /IU:\\scipuff\\Repository\\UNIX\\EPR";
; mark_description "Ix64_OMP\\SCICHEM-3.2\\build\\windows\\workspace\\EPRI\\vs2013\\f90mod\\intel\\x64\\Release /nologo /debug:m";
; mark_description "inimal /O2 /fpp /recursive /Qopenmp /align:sequence /assume:byterecl /fp:source /names:uppercase /iface:cref";
; mark_description " /iface:mixed_str_len_arg /module:f90mod\\intel\\x64\\Release\\ /object:tmp\\intel\\x64\\Release\\lib\\SCIPU";
; mark_description "FF/ /Fdlib\\intel\\x64\\Release\\SCIPUFFlib.pdb /Fatmp\\intel\\x64\\Release\\lib\\SCIPUFF/ /libs:static /thr";
; mark_description "eads /c /Qlocation,link,C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\VC\\\\bin\\amd64 /Qm64";
	OPTION DOTNAME
_TEXT	SEGMENT      'CODE'
TXTST0:
_2__routine_start_SET_YEAR_0:
; -- Begin  SET_YEAR
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC SET_YEAR
; --- SET_YEAR
SET_YEAR	PROC 
; parameter 1(IYY): rcx
.B1.1::                         ; Preds .B1.0
                                ; Execution count [1.00e+000]
L2::
                                                           ;1051.12
$LN0:
$LN1:
        mov       eax, DWORD PTR [rcx]                          ;1059.1
$LN2:
        cmp       eax, -65535                                   ;1059.9
$LN3:
        je        .B1.6         ; Prob 16%                      ;1059.9
$LN4:
                                ; LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.2::                         ; Preds .B1.1
                                ; Execution count [8.40e-001]
$LN5:
        cmp       eax, 50                                       ;1061.11
$LN6:
        jge       .B1.4         ; Prob 50%                      ;1061.11
$LN7:
                                ; LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.3::                         ; Preds .B1.2
                                ; Execution count [4.20e-001]
$LN8:
        add       eax, 2000                                     ;1062.5
$LN9:
        mov       DWORD PTR [rcx], eax                          ;1062.5
$LN10:
        ret                                                     ;1062.5
$LN11:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.4::                         ; Preds .B1.2
                                ; Execution count [4.20e-001]
$LN12:
        cmp       eax, 100                                      ;1063.16
$LN13:
        jge       .B1.6         ; Prob 50%                      ;1063.16
$LN14:
                                ; LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.5::                         ; Preds .B1.4
                                ; Execution count [2.10e-001]
$LN15:
        add       eax, 1900                                     ;1064.5
$LN16:
        mov       DWORD PTR [rcx], eax                          ;1064.5
$LN17:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B1.6::                         ; Preds .B1.4 .B1.1 .B1.5
                                ; Execution count [1.00e+000]
$LN18:
        ret                                                     ;1070.1
$LN19:
        ALIGN     16
$LN20:
                                ; LOE
.B1.7::
$LN21:
; mark_end;
SET_YEAR ENDP
$LNSET_YEAR$22:
$LNSET_YEAR$23:
_TEXT	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  SET_YEAR
_TEXT	SEGMENT      'CODE'
_2__routine_start_ADDMETGRID_1:
; -- Begin  ADDMETGRID
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC ADDMETGRID
; --- ADDMETGRID
ADDMETGRID	PROC 
; parameter 1(IFLD): rcx
.B2.1::                         ; Preds .B2.0
                                ; Execution count [0.00e+000]
L8::
                                                           ;1355.18
$LN24:
        push      rbp                                           ;1355.18
$LN25:
        push      rsi                                           ;1355.18
$LN26:
        push      rdi                                           ;1355.18
$LN27:
        push      r12                                           ;1355.18
$LN28:
        push      r13                                           ;1355.18
$LN29:
        push      r14                                           ;1355.18
$LN30:
        push      r15                                           ;1355.18
$LN31:
        sub       rsp, 3104                                     ;1355.18
$LN32:
        lea       rbp, QWORD PTR [48+rsp]                       ;1355.18
$LN33:
        mov       r13, rcx                                      ;1355.18
$LN34:
        lea       rcx, QWORD PTR [.2.35_2_kmpc_loc_struct_pack.20] ;1355.18
$LN35:
        call      __kmpc_global_thread_num                      ;1355.18
$LN36:
                                ; LOE rbx r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.69::                        ; Preds .B2.1
                                ; Execution count [0.00e+000]
$LN37:
        mov       rcx, QWORD PTR [.2.35_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.75] ;1355.18
$LN38:
        mov       edi, eax                                      ;1355.18
$LN39:
        test      rcx, rcx                                      ;1355.18
$LN40:
        je        .B2.3         ; Prob 50%                      ;1355.18
$LN41:
                                ; LOE rcx rbx r13 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.2::                         ; Preds .B2.69
                                ; Execution count [0.00e+000]
$LN42:
        lea       eax, DWORD PTR [rdi*8]                        ;1355.18
$LN43:
        cdqe                                                    ;1355.18
$LN44:
        mov       r12, QWORD PTR [rcx+rax]                      ;1355.18
$LN45:
        test      r12, r12                                      ;1355.18
$LN46:
        jne       .B2.5         ; Prob 50%                      ;1355.18
$LN47:
                                ; LOE rbx r12 r13 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.3::                         ; Preds .B2.69 .B2.2
                                ; Execution count [0.00e+000]
$LN48:
        mov       rsi, rsp                                      ;1355.18
$LN49:
        lea       rcx, QWORD PTR [.2.35_2_kmpc_loc_struct_pack.68] ;1355.18
$LN50:
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1355.18
$LN51:
        mov       edx, edi                                      ;1355.18
$LN52:
        mov       r9, QWORD PTR [.2.35_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_size_0.76] ;1355.18
$LN53:
        lea       rax, QWORD PTR [.2.35_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.75] ;1355.18
$LN54:
        mov       QWORD PTR [32+rsi], rax                       ;1355.18
$LN55:
        call      __kmpc_threadprivate_cached                   ;1355.18
$LN56:
                                ; LOE rax rbx r13 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.70::                        ; Preds .B2.3
                                ; Execution count [0.00e+000]
$LN57:
        mov       r12, rax                                      ;1355.18
$LN58:
                                ; LOE rbx r12 r13 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.5::                         ; Preds .B2.70 .B2.2
                                ; Execution count [0.00e+000]
$LN59:
        lea       rcx, QWORD PTR [.2.35_2_kmpc_loc_struct_pack.52] ;1371.1
$LN60:
        lea       r8, QWORD PTR [$vcomp$critsect$ADDSMTH]       ;1371.1
$LN61:
        mov       edx, edi                                      ;1371.1
$LN62:
        call      __kmpc_critical                               ;1371.1
$LN63:
                                ; LOE rbx r12 r13 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.6::                         ; Preds .B2.5
                                ; Execution count [1.00e+000]
$LN64:
        lea       rcx, QWORD PTR [.2.35_2_kmpc_loc_struct_pack.28] ;1374.1
$LN65:
        mov       edx, edi                                      ;1374.1
$LN66:
        lea       r8, QWORD PTR [MET_FI_mp_NUMMET]              ;1374.1
$LN67:
        mov       esi, -1                                       ;1371.1
$LN68:
        mov       r9d, DWORD PTR [r13]                          ;1374.1
$LN69:
        call      __kmpc_atomic_fixed4_max                      ;1374.1
$LN70:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.7::                         ; Preds .B2.6
                                ; Execution count [1.00e+000]
$LN71:
        mov       r9d, DWORD PTR [MET_FI_mp_NUMMET]             ;1376.1
$LN72:
        cmp       r9d, DWORD PTR [MET_FI_mp_NUMMETMAX]          ;1376.12
$LN73:
        jle       .B2.10        ; Prob 50%                      ;1376.12
$LN74:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.8::                         ; Preds .B2.7
                                ; Execution count [5.00e-001]
$LN75:
        mov       r10, rsp                                      ;1378.3
$LN76:
        mov       rcx, r12                                      ;1378.3
$LN77:
        mov       edx, 80                                       ;1378.3
$LN78:
        lea       r8, QWORD PTR [__STRLITPACK_233]              ;1378.3
$LN79:
        mov       r9d, 10                                       ;1378.3
$LN80:
        mov       DWORD PTR [464+r12], 3                        ;1377.3
$LN81:
        mov       QWORD PTR [32+r10], 0                         ;1378.3
$LN82:
        call      for_cpystr                                    ;1378.3
$LN83:
                                ; LOE rbx r12 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.9::                         ; Preds .B2.8
                                ; Execution count [5.00e-001]
$LN84:
        mov       r10, rsp                                      ;1379.3
$LN85:
        add       r12, 80                                       ;1379.3
$LN86:
        mov       rcx, r12                                      ;1379.3
$LN87:
        mov       edx, 128                                      ;1379.3
$LN88:
        lea       r8, QWORD PTR [__STRLITPACK_232]              ;1379.3
$LN89:
        mov       r9d, 40                                       ;1379.3
$LN90:
        mov       QWORD PTR [32+r10], 0                         ;1379.3
$LN91:
        call      for_cpystr                                    ;1379.3
$LN92:
        jmp       .B2.18        ; Prob 100%                     ;1379.3
$LN93:
                                ; LOE rbx esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.10::                        ; Preds .B2.7
                                ; Execution count [5.00e-001]
$LN94:
        mov       r10, QWORD PTR [MET_FI_mp_METGRID+64]         ;1385.7
$LN95:
        lea       rcx, QWORD PTR [2724+rbp]                     ;1385.7
$LN96:
        neg       r10                                           ;1385.7
$LN97:
        movsxd    r9, DWORD PTR [r13]                           ;1383.1
$LN98:
        add       r10, r9                                       ;1385.7
$LN99:
        imul      rdx, r10, 440                                 ;1385.7
$LN100:
        add       rdx, QWORD PTR [MET_FI_mp_METGRID]            ;1385.7
$LN101:
        mov       DWORD PTR [rcx], r9d                          ;1383.1
$LN102:
        call      SWIMGETGRID                                   ;1385.7
$LN103:
                                ; LOE rbx r12 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.11::                        ; Preds .B2.10
                                ; Execution count [5.00e-001]
$LN104:
        cmp       eax, 1                                        ;1386.9
$LN105:
        jne       .B2.20        ; Prob 21%                      ;1386.9
$LN106:
                                ; LOE rbx r12 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.12::                        ; Preds .B2.11
                                ; Execution count [3.92e-001]
$LN107:
        mov       r10, QWORD PTR [MET_FI_mp_METGRID+64]         ;1391.1
$LN108:
        neg       r10                                           ;1391.19
$LN109:
        movsxd    r9, DWORD PTR [2724+rbp]                      ;1391.1
$LN110:
        add       r10, r9                                       ;1391.19
$LN111:
        imul      rcx, r10, 440                                 ;1391.19
$LN112:
        add       rcx, QWORD PTR [MET_FI_mp_METGRID]            ;1391.19
$LN113:
        mov       r11d, DWORD PTR [FLAGS_FI_mp_CREATE]          ;1391.19
$LN114:
        not       r11d                                          ;1391.41
$LN115:
        and       DWORD PTR [24+rcx], r11d                      ;1391.1
$LN116:
        call      ALLOCMETGRIDARRAYS                            ;1393.6
$LN117:
                                ; LOE rbx r12 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.13::                        ; Preds .B2.12
                                ; Execution count [3.92e-001]
$LN118:
        cmp       DWORD PTR [464+r12], 0                        ;1394.12
$LN119:
        jne       .B2.18        ; Prob 50%                      ;1394.12
$LN120:
                                ; LOE rbx r12 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.14::                        ; Preds .B2.13
                                ; Execution count [1.96e-001]
$LN121:
        mov       r9, QWORD PTR [MET_FI_mp_METGRID+64]          ;1396.1
$LN122:
        mov       r13, r9                                       ;1396.5
$LN123:
        neg       r13                                           ;1396.5
$LN124:
        movsxd    r11, DWORD PTR [2724+rbp]                     ;1396.1
$LN125:
        add       r13, r11                                      ;1396.5
$LN126:
        imul      rdx, r13, 440                                 ;1396.5
$LN127:
        mov       r10, QWORD PTR [MET_FI_mp_METGRID]            ;1396.1
$LN128:
        add       rdx, r10                                      ;1396.5
$LN129:
        test      BYTE PTR [24+rdx], 1                          ;1396.5
$LN130:
        jne       .B2.26        ; Prob 3%                       ;1396.5
$LN131:
                                ; LOE rdx rbx r9 r10 r11 r12 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.15::                        ; Preds .B2.28 .B2.14
                                ; Execution count [0.00e+000]
$LN132:
        mov       eax, DWORD PTR [GRID_FI_mp_MGRD]              ;1406.45
$LN133:
        xor       esi, esi                                      ;1406.45
$LN134:
        inc       esi                                           ;1406.45
$LN135:
        cdq                                                     ;1406.45
$LN136:
        xor       eax, edx                                      ;1406.45
$LN137:
        xor       r8d, r8d                                      ;1406.45
$LN138:
        sub       eax, edx                                      ;1406.45
$LN139:
        neg       r9                                            ;1406.20
$LN140:
        mov       ecx, eax                                      ;1406.45
$LN141:
        pxor      xmm0, xmm0                                    ;1406.38
$LN142:
        shl       esi, cl                                       ;1406.45
$LN143:
        cmp       eax, 31                                       ;1406.45
$LN144:
        lea       rcx, QWORD PTR [.2.35_2_kmpc_loc_struct_pack.36] ;1410.7
$LN145:
        lea       rdx, QWORD PTR [MET_FI_mp_METGRID]            ;1410.7
$LN146:
        cmovbe    r8d, esi                                      ;1406.45
$LN147:
        add       r9, r11                                       ;1406.20
$LN148:
        cvtsi2ss  xmm0, r8d                                     ;1406.38
$LN149:
        imul      r9, r9, 440                                   ;1406.20
$LN150:
        mulss     xmm0, DWORD PTR [BASIC_FI_mp_DXSPLT]          ;1406.57
$LN151:
        mulss     xmm0, xmm0                                    ;1406.65
$LN152:
        lea       rax, QWORD PTR [32+r10+r9]                    ;1406.1
$LN153:
        mulss     xmm0, DWORD PTR [rax]                         ;1406.1
$LN154:
        movss     DWORD PTR [rax], xmm0                         ;1406.1
$LN155:
        mov       r10, QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE+64] ;1408.1
$LN156:
        neg       r10                                           ;1408.1
$LN157:
        add       r10, r11                                      ;1408.1
$LN158:
        mov       r11, QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE]   ;1408.1
$LN159:
        mov       DWORD PTR [r11+r10*4], -1                     ;1408.1
$LN160:
        call      __kmpc_flush                                  ;1410.7
$LN161:
                                ; LOE rbx edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.16::                        ; Preds .B2.15
                                ; Execution count [0.00e+000]
$LN162:
        lea       rcx, QWORD PTR [.2.35_2_kmpc_loc_struct_pack.44] ;1411.7
$LN163:
        lea       rdx, QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE]   ;1411.7
$LN164:
        call      __kmpc_flush                                  ;1411.7
$LN165:
                                ; LOE rbx edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.17::                        ; Preds .B2.16
                                ; Execution count [1.94e-001]
$LN166:
        mov       esi, 1                                        ;1413.1
$LN167:
                                ; LOE rbx esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.18::                        ; Preds .B2.9 .B2.64 .B2.17 .B2.49 .B2.13
                                ;      
                                ; Execution count [1.00e+000]
$LN168:
        lea       rcx, QWORD PTR [.2.35_2_kmpc_loc_struct_pack.60] ;1415.1
$LN169:
        mov       edx, edi                                      ;1415.1
$LN170:
        lea       r8, QWORD PTR [$vcomp$critsect$ADDSMTH]       ;1415.1
$LN171:
        call      __kmpc_end_critical                           ;1415.1
$LN172:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.19::                        ; Preds .B2.18
                                ; Execution count [1.00e+000]
$LN173:
        mov       eax, esi                                      ;1419.1
$LN174:
        lea       rsp, QWORD PTR [3056+rbp]                     ;1419.1
$LN175:
        pop       r15                                           ;1419.1
$LN176:
        pop       r14                                           ;1419.1
$LN177:
        pop       r13                                           ;1419.1
$LN178:
        pop       r12                                           ;1419.1
$LN179:
        pop       rdi                                           ;1419.1
$LN180:
        pop       rsi                                           ;1419.1
$LN181:
        pop       rbp                                           ;1419.1
$LN182:
        ret                                                     ;1419.1
$LN183:
                                ; LOE
.B2.20::                        ; Preds .B2.11
                                ; Execution count [1.08e-001]
$LN184:
        mov       r13, rsp                                      ;979.12
$LN185:
        lea       rcx, QWORD PTR [1504+rbp]                     ;991.6
$LN186:
        call      SWIMREPORTERROR                               ;991.6
$LN187:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.21::                        ; Preds .B2.25 .B2.20
                                ; Execution count [6.01e-001]
$LN188:
        mov       edx, 128                                      ;1436.12
$LN189:
        lea       rcx, QWORD PTR [2736+rbp]                     ;1436.12
$LN190:
        call      SWIMGETLOGMESSAGE                             ;1436.12
$LN191:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.22::                        ; Preds .B2.21
                                ; Execution count [6.01e-001]
$LN192:
        mov       r9d, 128                                      ;1436.3
$LN193:
                                ; LOE rbx r9 r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.67::                        ; Preds .B2.67 .B2.22
                                ; Execution count [1.20e+000]
$LN194:
        movups    xmm0, XMMWORD PTR [2720+rbp+r9]               ;1436.3
$LN195:
        movups    xmm1, XMMWORD PTR [2704+rbp+r9]               ;1436.3
$LN196:
        movups    xmm2, XMMWORD PTR [2688+rbp+r9]               ;1436.3
$LN197:
        movups    xmm3, XMMWORD PTR [2672+rbp+r9]               ;1436.3
$LN198:
        movups    XMMWORD PTR [2848+rbp+r9], xmm0               ;1436.3
$LN199:
        movups    XMMWORD PTR [2832+rbp+r9], xmm1               ;1436.3
$LN200:
        movups    XMMWORD PTR [2816+rbp+r9], xmm2               ;1436.3
$LN201:
        movups    XMMWORD PTR [2800+rbp+r9], xmm3               ;1436.3
$LN202:
        sub       r9, 64                                        ;1436.3
$LN203:
        jne       .B2.67        ; Prob 50%                      ;1436.3
$LN204:
                                ; LOE rbx r9 r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.23::                        ; Preds .B2.67
                                ; Execution count [6.01e-001]
$LN205:
        mov       r10, rsp                                      ;1437.14
$LN206:
        lea       rcx, QWORD PTR [2864+rbp]                     ;1437.14
$LN207:
        mov       edx, 128                                      ;1437.14
$LN208:
        lea       r8, QWORD PTR [2728+rbp]                      ;1437.14
$LN209:
        mov       r9d, 1                                        ;1437.14
$LN210:
        mov       BYTE PTR [r8], 0                              ;1437.17
$LN211:
        mov       QWORD PTR [32+r10], 2                         ;1437.14
$LN212:
        call      for_cpstr                                     ;1437.14
$LN213:
                                ; LOE rax rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.72::                        ; Preds .B2.23
                                ; Execution count [6.01e-001]
$LN214:
        test      eax, eax                                      ;1437.14
$LN215:
        jne       .B2.50        ; Prob 18%                      ;1437.14
$LN216:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.24::                        ; Preds .B2.72
                                ; Execution count [4.93e-001]
$LN217:
        mov       edx, 128                                      ;1438.24
$LN218:
        lea       r14, QWORD PTR [2592+rbp]                     ;1438.24
$LN219:
        mov       rcx, r14                                      ;1438.24
$LN220:
        lea       r8, QWORD PTR [2864+rbp]                      ;1438.24
$LN221:
        mov       r9, rdx                                       ;1438.24
$LN222:
        call      for_trim                                      ;1438.24
$LN223:
                                ; LOE rbx r12 r13 r14 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.25::                        ; Preds .B2.24
                                ; Execution count [4.93e-001]
$LN224:
        mov       QWORD PTR [3048+rbp], r14                     ;1438.3
$LN225:
        mov       r14, rsp                                      ;1438.3
$LN226:
        mov       r8, 01208384ff00H                             ;1438.3
$LN227:
        lea       rcx, QWORD PTR [2992+rbp]                     ;1438.3
$LN228:
        lea       r9, QWORD PTR [__STRLITPACK_236.0.10]         ;1438.3
$LN229:
        lea       r10, QWORD PTR [3040+rbp]                     ;1438.3
$LN230:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;1438.3
$LN231:
        lea       r11, QWORD PTR [WRITESWIMLOG$format_pack.0.10] ;1438.3
$LN232:
        movsxd    rax, eax                                      ;1438.24
$LN233:
        mov       QWORD PTR [rcx], 0                            ;1438.3
$LN234:
        mov       QWORD PTR [48+rcx], rax                       ;1438.3
$LN235:
        mov       QWORD PTR [32+r14], r10                       ;1438.3
$LN236:
        mov       QWORD PTR [40+r14], r11                       ;1438.3
$LN237:
        call      for_write_seq_fmt                             ;1438.3
$LN238:
        jmp       .B2.21        ; Prob 100%                     ;1438.3
$LN239:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.26::                        ; Preds .B2.14
                                ; Execution count [6.64e-003]: Infreq
$LN240:
        mov       DWORD PTR [FLAGS_FI_mp_LTER], -1              ;1397.3
$LN241:
        lea       rcx, QWORD PTR [2724+rbp]                     ;1398.9
$LN242:
        call      SWIMGETTERRAIN                                ;1398.9
$LN243:
                                ; LOE rbx r12 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.27::                        ; Preds .B2.26
                                ; Execution count [6.64e-003]: Infreq
$LN244:
        cmp       eax, 1                                        ;1399.11
$LN245:
        jne       .B2.29        ; Prob 21%                      ;1399.11
$LN246:
                                ; LOE rbx r12 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.28::                        ; Preds .B2.27
                                ; Execution count [5.20e-003]: Infreq
$LN247:
        movsxd    r11, DWORD PTR [2724+rbp]                     ;1406.1
$LN248:
        mov       r10, QWORD PTR [MET_FI_mp_METGRID]            ;1406.1
$LN249:
        mov       r9, QWORD PTR [MET_FI_mp_METGRID+64]          ;1406.1
$LN250:
        jmp       .B2.15        ; Prob 100%                     ;1406.1
$LN251:
                                ; LOE rbx r9 r10 r11 edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.29::                        ; Preds .B2.27
                                ; Execution count [1.44e-003]: Infreq
$LN252:
        mov       r13, rsp                                      ;979.12
$LN253:
        lea       rcx, QWORD PTR [rbp]                          ;991.6
$LN254:
        call      SWIMREPORTERROR                               ;991.6
$LN255:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.30::                        ; Preds .B2.34 .B2.29
                                ; Execution count [7.99e-003]: Infreq
$LN256:
        mov       edx, 128                                      ;1436.12
$LN257:
        lea       rcx, QWORD PTR [1200+rbp]                     ;1436.12
$LN258:
        call      SWIMGETLOGMESSAGE                             ;1436.12
$LN259:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.31::                        ; Preds .B2.30
                                ; Execution count [7.99e-003]: Infreq
$LN260:
        mov       r9d, 128                                      ;1436.3
$LN261:
                                ; LOE rbx r9 r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.68::                        ; Preds .B2.68 .B2.31
                                ; Execution count [1.60e-002]: Infreq
$LN262:
        movups    xmm0, XMMWORD PTR [1184+rbp+r9]               ;1436.3
$LN263:
        movups    xmm1, XMMWORD PTR [1168+rbp+r9]               ;1436.3
$LN264:
        movups    xmm2, XMMWORD PTR [1152+rbp+r9]               ;1436.3
$LN265:
        movups    xmm3, XMMWORD PTR [1136+rbp+r9]               ;1436.3
$LN266:
        movups    XMMWORD PTR [1312+rbp+r9], xmm0               ;1436.3
$LN267:
        movups    XMMWORD PTR [1296+rbp+r9], xmm1               ;1436.3
$LN268:
        movups    XMMWORD PTR [1280+rbp+r9], xmm2               ;1436.3
$LN269:
        movups    XMMWORD PTR [1264+rbp+r9], xmm3               ;1436.3
$LN270:
        sub       r9, 64                                        ;1436.3
$LN271:
        jne       .B2.68        ; Prob 50%                      ;1436.3
$LN272:
                                ; LOE rbx r9 r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.32::                        ; Preds .B2.68
                                ; Execution count [7.99e-003]: Infreq
$LN273:
        mov       r10, rsp                                      ;1437.14
$LN274:
        lea       rcx, QWORD PTR [1328+rbp]                     ;1437.14
$LN275:
        mov       edx, 128                                      ;1437.14
$LN276:
        lea       r8, QWORD PTR [2720+rbp]                      ;1437.14
$LN277:
        mov       r9d, 1                                        ;1437.14
$LN278:
        mov       BYTE PTR [r8], 0                              ;1437.17
$LN279:
        mov       QWORD PTR [32+r10], 2                         ;1437.14
$LN280:
        call      for_cpstr                                     ;1437.14
$LN281:
                                ; LOE rax rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.75::                        ; Preds .B2.32
                                ; Execution count [7.99e-003]: Infreq
$LN282:
        test      eax, eax                                      ;1437.14
$LN283:
        jne       .B2.35        ; Prob 18%                      ;1437.14
$LN284:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.33::                        ; Preds .B2.75
                                ; Execution count [6.55e-003]: Infreq
$LN285:
        mov       edx, 128                                      ;1438.24
$LN286:
        lea       r14, QWORD PTR [1072+rbp]                     ;1438.24
$LN287:
        mov       rcx, r14                                      ;1438.24
$LN288:
        lea       r8, QWORD PTR [1328+rbp]                      ;1438.24
$LN289:
        mov       r9, rdx                                       ;1438.24
$LN290:
        call      for_trim                                      ;1438.24
$LN291:
                                ; LOE rbx r12 r13 r14 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.34::                        ; Preds .B2.33
                                ; Execution count [6.55e-003]: Infreq
$LN292:
        mov       QWORD PTR [1984+rbp], r14                     ;1438.3
$LN293:
        mov       r14, rsp                                      ;1438.3
$LN294:
        mov       r8, 01208384ff00H                             ;1438.3
$LN295:
        lea       rcx, QWORD PTR [1456+rbp]                     ;1438.3
$LN296:
        lea       r9, QWORD PTR [__STRLITPACK_236.0.10]         ;1438.3
$LN297:
        lea       r10, QWORD PTR [1976+rbp]                     ;1438.3
$LN298:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;1438.3
$LN299:
        lea       r11, QWORD PTR [WRITESWIMLOG$format_pack.0.10] ;1438.3
$LN300:
        movsxd    rax, eax                                      ;1438.24
$LN301:
        mov       QWORD PTR [rcx], 0                            ;1438.3
$LN302:
        mov       QWORD PTR [r10], rax                          ;1438.3
$LN303:
        mov       QWORD PTR [32+r14], r10                       ;1438.3
$LN304:
        mov       QWORD PTR [40+r14], r11                       ;1438.3
$LN305:
        call      for_write_seq_fmt                             ;1438.3
$LN306:
        jmp       .B2.30        ; Prob 100%                     ;1438.3
$LN307:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.35::                        ; Preds .B2.75
                                ; Execution count [1.44e-003]: Infreq
$LN308:
        mov       r14d, DWORD PTR [rbp]                         ;995.1
$LN309:
        test      r14d, r14d                                    ;995.22
$LN310:
        je        .B2.38        ; Prob 50%                      ;995.22
$LN311:
                                ; LOE rbx r12 r13 esi edi r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.36::                        ; Preds .B2.35
                                ; Execution count [7.19e-004]: Infreq
$LN312:
        mov       r15, rsp                                      ;997.3
$LN313:
        lea       rcx, QWORD PTR [864+rbp]                      ;997.3
$LN314:
        mov       r8, 01208384ff00H                             ;997.3
$LN315:
        lea       r9, QWORD PTR [__STRLITPACK_187.0.2]          ;997.3
$LN316:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;997.3
$LN317:
        lea       r10, QWORD PTR [__STRLITPACK_185]             ;997.3
$LN318:
        mov       DWORD PTR [464+r12], r14d                     ;996.3
$LN319:
        lea       r11, QWORD PTR [1040+rbp]                     ;997.3
$LN320:
        mov       QWORD PTR [rcx], 0                            ;997.3
$LN321:
        mov       QWORD PTR [r11], 25                           ;997.3
$LN322:
        mov       QWORD PTR [8+r11], r10                        ;997.3
$LN323:
        mov       QWORD PTR [32+r15], r11                       ;997.3
$LN324:
        call      for_write_seq_lis                             ;997.3
$LN325:
                                ; LOE rbx r12 r13 esi edi r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.37::                        ; Preds .B2.36
                                ; Execution count [7.19e-004]: Infreq
$LN326:
        lea       rdx, QWORD PTR [__STRLITPACK_188.0.2]         ;997.3
$LN327:
        lea       rcx, QWORD PTR [864+rbp]                      ;997.3
$LN328:
        mov       DWORD PTR [472+rbp], r14d                     ;997.3
$LN329:
        lea       r8, QWORD PTR [472+rbp]                       ;997.3
$LN330:
        call      for_write_seq_lis_xmit                        ;997.3
$LN331:
        jmp       .B2.40        ; Prob 100%                     ;997.3
$LN332:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.38::                        ; Preds .B2.35
                                ; Execution count [7.19e-004]: Infreq
$LN333:
        mov       r14, rsp                                      ;999.3
$LN334:
        lea       rcx, QWORD PTR [864+rbp]                      ;999.3
$LN335:
        mov       r8, 01208384ff00H                             ;999.3
$LN336:
        lea       r9, QWORD PTR [__STRLITPACK_189.0.2]          ;999.3
$LN337:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;999.3
$LN338:
        lea       r10, QWORD PTR [__STRLITPACK_183]             ;999.3
$LN339:
        mov       QWORD PTR [rcx], 0                            ;999.3
$LN340:
        lea       r11, QWORD PTR [1056+rbp]                     ;999.3
$LN341:
        mov       QWORD PTR [r11], 23                           ;999.3
$LN342:
        mov       QWORD PTR [8+r11], r10                        ;999.3
$LN343:
        mov       QWORD PTR [32+r14], r11                       ;999.3
$LN344:
        call      for_write_seq_lis                             ;999.3
$LN345:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.39::                        ; Preds .B2.38
                                ; Execution count [7.19e-004]: Infreq
$LN346:
        mov       DWORD PTR [464+r12], 99                       ;1000.3
$LN347:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.40::                        ; Preds .B2.37 .B2.39
                                ; Execution count [1.44e-003]: Infreq
$LN348:
        mov       eax, 14                                       ;1002.17
$LN349:
        mov       r14, rsp                                      ;1002.1
$LN350:
        mov       rax, 16                                       ;1002.17
$LN351:
        sub       rsp, rax                                      ;1002.17
$LN352:
        lea       rax, QWORD PTR [48+rsp]                       ;1002.17
$LN353:
                                ; LOE rax rbx r12 r13 r14 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.78::                        ; Preds .B2.40
                                ; Execution count [1.44e-003]: Infreq
$LN354:
        mov       r15, rax                                      ;1002.17
$LN355:
        mov       edx, 14                                       ;1002.12
$LN356:
        mov       rcx, r15                                      ;1002.12
$LN357:
        lea       r8, QWORD PTR [__STRLITPACK_230]              ;1002.12
$LN358:
        mov       r9, rdx                                       ;1002.12
$LN359:
        call      for_trim                                      ;1002.12
$LN360:
                                ; LOE rbx r12 r13 r14 r15 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.41::                        ; Preds .B2.78
                                ; Execution count [1.44e-003]: Infreq
$LN361:
        mov       QWORD PTR [992+rbp], r15                      ;1002.25
$LN362:
        lea       r15, QWORD PTR [912+rbp]                      ;1002.32
$LN363:
        mov       edx, 80                                       ;1002.32
$LN364:
        mov       rcx, r15                                      ;1002.32
$LN365:
        mov       r9, rdx                                       ;1002.32
$LN366:
        lea       r8, QWORD PTR [392+rbp]                       ;1002.32
$LN367:
        movsxd    rax, eax                                      ;1002.12
$LN368:
        lea       r10, QWORD PTR [__STRLITPACK_182]             ;1002.25
$LN369:
        mov       QWORD PTR [88+r15], rax                       ;1002.25
$LN370:
        mov       QWORD PTR [96+r15], r10                       ;1002.25
$LN371:
        mov       QWORD PTR [104+r15], 1                        ;1002.25
$LN372:
        call      for_trim                                      ;1002.32
$LN373:
                                ; LOE rbx r12 r13 r14 r15 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.42::                        ; Preds .B2.41
                                ; Execution count [1.44e-003]: Infreq
$LN374:
        mov       edx, 3                                        ;1002.1
$LN375:
        lea       rcx, QWORD PTR [992+rbp]                      ;1002.1
$LN376:
        mov       r8, r12                                       ;1002.1
$LN377:
        mov       r9d, 80                                       ;1002.1
$LN378:
        movsxd    rax, eax                                      ;1002.32
$LN379:
        mov       QWORD PTR [32+rcx], r15                       ;1002.30
$LN380:
        mov       QWORD PTR [40+rcx], rax                       ;1002.30
$LN381:
        call      for_concat                                    ;1002.1
$LN382:
                                ; LOE rbx r12 r13 r14 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.43::                        ; Preds .B2.42
                                ; Execution count [1.44e-003]: Infreq
$LN383:
        mov       rax, r14                                      ;1002.1
$LN384:
        mov       rsp, rax                                      ;1002.1
$LN385:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.81::                        ; Preds .B2.43
                                ; Execution count [1.44e-003]: Infreq
$LN386:
        mov       edx, 128                                      ;1003.12
$LN387:
        lea       rcx, QWORD PTR [480+rbp]                      ;1003.12
$LN388:
        mov       r9, rdx                                       ;1003.12
$LN389:
        lea       r8, QWORD PTR [8+rbp]                         ;1003.12
$LN390:
        call      for_trim                                      ;1003.12
$LN391:
                                ; LOE rbx r12 r13 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.44::                        ; Preds .B2.81
                                ; Execution count [1.44e-003]: Infreq
$LN392:
        mov       r10, rsp                                      ;1003.1
$LN393:
        lea       rcx, QWORD PTR [80+r12]                       ;1003.1
$LN394:
        movsxd    rax, eax                                      ;1003.1
$LN395:
        mov       edx, 128                                      ;1003.1
$LN396:
        mov       r9, rax                                       ;1003.1
$LN397:
        lea       r8, QWORD PTR [480+rbp]                       ;1003.1
$LN398:
        mov       QWORD PTR [32+r10], 0                         ;1003.1
$LN399:
        call      for_cpystr                                    ;1003.1
$LN400:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.45::                        ; Preds .B2.44
                                ; Execution count [1.44e-003]: Infreq
$LN401:
        mov       edx, 128                                      ;1004.12
$LN402:
        lea       rcx, QWORD PTR [608+rbp]                      ;1004.12
$LN403:
        mov       r9, rdx                                       ;1004.12
$LN404:
        lea       r8, QWORD PTR [136+rbp]                       ;1004.12
$LN405:
        call      for_trim                                      ;1004.12
$LN406:
                                ; LOE rbx r12 r13 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.46::                        ; Preds .B2.45
                                ; Execution count [1.44e-003]: Infreq
$LN407:
        mov       r10, rsp                                      ;1004.1
$LN408:
        lea       rcx, QWORD PTR [208+r12]                      ;1004.1
$LN409:
        movsxd    rax, eax                                      ;1004.1
$LN410:
        mov       edx, 128                                      ;1004.1
$LN411:
        mov       r9, rax                                       ;1004.1
$LN412:
        lea       r8, QWORD PTR [608+rbp]                       ;1004.1
$LN413:
        mov       QWORD PTR [32+r10], 0                         ;1004.1
$LN414:
        call      for_cpystr                                    ;1004.1
$LN415:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.47::                        ; Preds .B2.46
                                ; Execution count [1.44e-003]: Infreq
$LN416:
        mov       edx, 128                                      ;1005.12
$LN417:
        lea       rcx, QWORD PTR [736+rbp]                      ;1005.12
$LN418:
        mov       r9, rdx                                       ;1005.12
$LN419:
        lea       r8, QWORD PTR [264+rbp]                       ;1005.12
$LN420:
        call      for_trim                                      ;1005.12
$LN421:
                                ; LOE rbx r12 r13 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.48::                        ; Preds .B2.47
                                ; Execution count [1.44e-003]: Infreq
$LN422:
        mov       r10, rsp                                      ;1005.1
$LN423:
        add       r12, 336                                      ;1005.1
$LN424:
        movsxd    rax, eax                                      ;1005.1
$LN425:
        mov       rcx, r12                                      ;1005.1
$LN426:
        mov       edx, 128                                      ;1005.1
$LN427:
        lea       r8, QWORD PTR [736+rbp]                       ;1005.1
$LN428:
        mov       r9, rax                                       ;1005.1
$LN429:
        mov       QWORD PTR [32+r10], 0                         ;1005.1
$LN430:
        call      for_cpystr                                    ;1005.1
$LN431:
                                ; LOE rbx r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.49::                        ; Preds .B2.48
                                ; Execution count [1.44e-003]: Infreq
$LN432:
        mov       rax, r13                                      ;1008.1
$LN433:
        mov       rsp, rax                                      ;1008.1
$LN434:
        jmp       .B2.18        ; Prob 100%                     ;1008.1
$LN435:
                                ; LOE rbx esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.50::                        ; Preds .B2.72
                                ; Execution count [1.08e-001]: Infreq
$LN436:
        mov       r14d, DWORD PTR [1504+rbp]                    ;995.1
$LN437:
        test      r14d, r14d                                    ;995.22
$LN438:
        je        .B2.53        ; Prob 50%                      ;995.22
$LN439:
                                ; LOE rbx r12 r13 esi edi r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.51::                        ; Preds .B2.50
                                ; Execution count [5.41e-002]: Infreq
$LN440:
        mov       r15, rsp                                      ;997.3
$LN441:
        lea       rcx, QWORD PTR [2384+rbp]                     ;997.3
$LN442:
        mov       r8, 01208384ff00H                             ;997.3
$LN443:
        lea       r9, QWORD PTR [__STRLITPACK_187.0.2]          ;997.3
$LN444:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;997.3
$LN445:
        lea       r10, QWORD PTR [__STRLITPACK_185]             ;997.3
$LN446:
        mov       DWORD PTR [464+r12], r14d                     ;996.3
$LN447:
        lea       r11, QWORD PTR [2560+rbp]                     ;997.3
$LN448:
        mov       QWORD PTR [rcx], 0                            ;997.3
$LN449:
        mov       QWORD PTR [r11], 25                           ;997.3
$LN450:
        mov       QWORD PTR [8+r11], r10                        ;997.3
$LN451:
        mov       QWORD PTR [32+r15], r11                       ;997.3
$LN452:
        call      for_write_seq_lis                             ;997.3
$LN453:
                                ; LOE rbx r12 r13 esi edi r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.52::                        ; Preds .B2.51
                                ; Execution count [5.41e-002]: Infreq
$LN454:
        lea       rdx, QWORD PTR [__STRLITPACK_188.0.2]         ;997.3
$LN455:
        lea       rcx, QWORD PTR [2384+rbp]                     ;997.3
$LN456:
        mov       DWORD PTR [1992+rbp], r14d                    ;997.3
$LN457:
        lea       r8, QWORD PTR [1992+rbp]                      ;997.3
$LN458:
        call      for_write_seq_lis_xmit                        ;997.3
$LN459:
        jmp       .B2.55        ; Prob 100%                     ;997.3
$LN460:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.53::                        ; Preds .B2.50
                                ; Execution count [5.41e-002]: Infreq
$LN461:
        mov       r14, rsp                                      ;999.3
$LN462:
        lea       rcx, QWORD PTR [2384+rbp]                     ;999.3
$LN463:
        mov       r8, 01208384ff00H                             ;999.3
$LN464:
        lea       r9, QWORD PTR [__STRLITPACK_189.0.2]          ;999.3
$LN465:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;999.3
$LN466:
        lea       r10, QWORD PTR [__STRLITPACK_183]             ;999.3
$LN467:
        mov       QWORD PTR [rcx], 0                            ;999.3
$LN468:
        lea       r11, QWORD PTR [2576+rbp]                     ;999.3
$LN469:
        mov       QWORD PTR [r11], 23                           ;999.3
$LN470:
        mov       QWORD PTR [8+r11], r10                        ;999.3
$LN471:
        mov       QWORD PTR [32+r14], r11                       ;999.3
$LN472:
        call      for_write_seq_lis                             ;999.3
$LN473:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.54::                        ; Preds .B2.53
                                ; Execution count [5.41e-002]: Infreq
$LN474:
        mov       DWORD PTR [464+r12], 99                       ;1000.3
$LN475:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.55::                        ; Preds .B2.52 .B2.54
                                ; Execution count [1.08e-001]: Infreq
$LN476:
        mov       eax, 11                                       ;1002.17
$LN477:
        mov       r14, rsp                                      ;1002.1
$LN478:
        mov       rax, 16                                       ;1002.17
$LN479:
        sub       rsp, rax                                      ;1002.17
$LN480:
        lea       rax, QWORD PTR [48+rsp]                       ;1002.17
$LN481:
                                ; LOE rax rbx r12 r13 r14 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.85::                        ; Preds .B2.55
                                ; Execution count [1.08e-001]: Infreq
$LN482:
        mov       r15, rax                                      ;1002.17
$LN483:
        mov       edx, 11                                       ;1002.12
$LN484:
        mov       rcx, r15                                      ;1002.12
$LN485:
        lea       r8, QWORD PTR [__STRLITPACK_231]              ;1002.12
$LN486:
        mov       r9, rdx                                       ;1002.12
$LN487:
        call      for_trim                                      ;1002.12
$LN488:
                                ; LOE rbx r12 r13 r14 r15 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.56::                        ; Preds .B2.85
                                ; Execution count [1.08e-001]: Infreq
$LN489:
        mov       QWORD PTR [2512+rbp], r15                     ;1002.25
$LN490:
        lea       r15, QWORD PTR [2432+rbp]                     ;1002.32
$LN491:
        mov       edx, 80                                       ;1002.32
$LN492:
        mov       rcx, r15                                      ;1002.32
$LN493:
        mov       r9, rdx                                       ;1002.32
$LN494:
        lea       r8, QWORD PTR [1896+rbp]                      ;1002.32
$LN495:
        movsxd    rax, eax                                      ;1002.12
$LN496:
        lea       r10, QWORD PTR [__STRLITPACK_182]             ;1002.25
$LN497:
        mov       QWORD PTR [88+r15], rax                       ;1002.25
$LN498:
        mov       QWORD PTR [96+r15], r10                       ;1002.25
$LN499:
        mov       QWORD PTR [104+r15], 1                        ;1002.25
$LN500:
        call      for_trim                                      ;1002.32
$LN501:
                                ; LOE rbx r12 r13 r14 r15 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.57::                        ; Preds .B2.56
                                ; Execution count [1.08e-001]: Infreq
$LN502:
        mov       edx, 3                                        ;1002.1
$LN503:
        lea       rcx, QWORD PTR [2512+rbp]                     ;1002.1
$LN504:
        mov       r8, r12                                       ;1002.1
$LN505:
        mov       r9d, 80                                       ;1002.1
$LN506:
        movsxd    rax, eax                                      ;1002.32
$LN507:
        mov       QWORD PTR [32+rcx], r15                       ;1002.30
$LN508:
        mov       QWORD PTR [40+rcx], rax                       ;1002.30
$LN509:
        call      for_concat                                    ;1002.1
$LN510:
                                ; LOE rbx r12 r13 r14 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.58::                        ; Preds .B2.57
                                ; Execution count [1.08e-001]: Infreq
$LN511:
        mov       rax, r14                                      ;1002.1
$LN512:
        mov       rsp, rax                                      ;1002.1
$LN513:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.88::                        ; Preds .B2.58
                                ; Execution count [1.08e-001]: Infreq
$LN514:
        mov       edx, 128                                      ;1003.12
$LN515:
        lea       rcx, QWORD PTR [2000+rbp]                     ;1003.12
$LN516:
        mov       r9, rdx                                       ;1003.12
$LN517:
        lea       r8, QWORD PTR [1512+rbp]                      ;1003.12
$LN518:
        call      for_trim                                      ;1003.12
$LN519:
                                ; LOE rbx r12 r13 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.59::                        ; Preds .B2.88
                                ; Execution count [1.08e-001]: Infreq
$LN520:
        mov       r10, rsp                                      ;1003.1
$LN521:
        lea       rcx, QWORD PTR [80+r12]                       ;1003.1
$LN522:
        movsxd    rax, eax                                      ;1003.1
$LN523:
        mov       edx, 128                                      ;1003.1
$LN524:
        mov       r9, rax                                       ;1003.1
$LN525:
        lea       r8, QWORD PTR [2000+rbp]                      ;1003.1
$LN526:
        mov       QWORD PTR [32+r10], 0                         ;1003.1
$LN527:
        call      for_cpystr                                    ;1003.1
$LN528:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.60::                        ; Preds .B2.59
                                ; Execution count [1.08e-001]: Infreq
$LN529:
        mov       edx, 128                                      ;1004.12
$LN530:
        lea       rcx, QWORD PTR [2128+rbp]                     ;1004.12
$LN531:
        mov       r9, rdx                                       ;1004.12
$LN532:
        lea       r8, QWORD PTR [1640+rbp]                      ;1004.12
$LN533:
        call      for_trim                                      ;1004.12
$LN534:
                                ; LOE rbx r12 r13 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.61::                        ; Preds .B2.60
                                ; Execution count [1.08e-001]: Infreq
$LN535:
        mov       r10, rsp                                      ;1004.1
$LN536:
        lea       rcx, QWORD PTR [208+r12]                      ;1004.1
$LN537:
        movsxd    rax, eax                                      ;1004.1
$LN538:
        mov       edx, 128                                      ;1004.1
$LN539:
        mov       r9, rax                                       ;1004.1
$LN540:
        lea       r8, QWORD PTR [2128+rbp]                      ;1004.1
$LN541:
        mov       QWORD PTR [32+r10], 0                         ;1004.1
$LN542:
        call      for_cpystr                                    ;1004.1
$LN543:
                                ; LOE rbx r12 r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.62::                        ; Preds .B2.61
                                ; Execution count [1.08e-001]: Infreq
$LN544:
        mov       edx, 128                                      ;1005.12
$LN545:
        lea       rcx, QWORD PTR [2256+rbp]                     ;1005.12
$LN546:
        mov       r9, rdx                                       ;1005.12
$LN547:
        lea       r8, QWORD PTR [1768+rbp]                      ;1005.12
$LN548:
        call      for_trim                                      ;1005.12
$LN549:
                                ; LOE rbx r12 r13 eax esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.63::                        ; Preds .B2.62
                                ; Execution count [1.08e-001]: Infreq
$LN550:
        mov       r10, rsp                                      ;1005.1
$LN551:
        add       r12, 336                                      ;1005.1
$LN552:
        movsxd    rax, eax                                      ;1005.1
$LN553:
        mov       rcx, r12                                      ;1005.1
$LN554:
        mov       edx, 128                                      ;1005.1
$LN555:
        lea       r8, QWORD PTR [2256+rbp]                      ;1005.1
$LN556:
        mov       r9, rax                                       ;1005.1
$LN557:
        mov       QWORD PTR [32+r10], 0                         ;1005.1
$LN558:
        call      for_cpystr                                    ;1005.1
$LN559:
                                ; LOE rbx r13 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.64::                        ; Preds .B2.63
                                ; Execution count [1.08e-001]: Infreq
$LN560:
        mov       rax, r13                                      ;1008.1
$LN561:
        mov       rsp, rax                                      ;1008.1
$LN562:
        jmp       .B2.18        ; Prob 100%                     ;1008.1
$LN563:
        ALIGN     16
$LN564:
                                ; LOE rbx esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B2.65::
$LN565:
; mark_end;
ADDMETGRID ENDP
$LNADDMETGRID$566:
$LNADDMETGRID$567:
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.ADDMETGRID.B1_B64	DD	889853697
	DD	17957655
	DD	4027253124
	DD	3490177033
	DD	1879293957
	DD	1342267394
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.ADDMETGRID.B1_B64	DD	imagerel .B2.1
	DD	imagerel .B2.65
	DD	imagerel .unwind.ADDMETGRID.B1_B64
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.35_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.75	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
.2.35_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_size_0.76	DD	0000001d4H,000000000H
.2.35_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.35_2__kmpc_loc_pack.19
.2.35_2__kmpc_loc_pack.19	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	65
	DB	68
	DB	68
	DB	77
	DB	69
	DB	84
	DB	71
	DB	82
	DB	73
	DB	68
	DB	59
	DB	49
	DB	51
	DB	53
	DB	53
	DB	59
	DB	49
	DB	51
	DB	53
	DB	53
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.35_2_kmpc_loc_struct_pack.68	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.35_2__kmpc_loc_pack.67
.2.35_2__kmpc_loc_pack.67	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	65
	DB	68
	DB	68
	DB	77
	DB	69
	DB	84
	DB	71
	DB	82
	DB	73
	DB	68
	DB	59
	DB	49
	DB	51
	DB	53
	DB	53
	DB	59
	DB	49
	DB	52
	DB	49
	DB	57
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.35_2_kmpc_loc_struct_pack.52	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.35_2__kmpc_loc_pack.51
.2.35_2__kmpc_loc_pack.51	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	65
	DB	68
	DB	68
	DB	77
	DB	69
	DB	84
	DB	71
	DB	82
	DB	73
	DB	68
	DB	59
	DB	49
	DB	51
	DB	55
	DB	48
	DB	59
	DB	49
	DB	51
	DB	55
	DB	48
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.35_2_kmpc_loc_struct_pack.28	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.35_2__kmpc_loc_pack.27
.2.35_2__kmpc_loc_pack.27	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	65
	DB	68
	DB	68
	DB	77
	DB	69
	DB	84
	DB	71
	DB	82
	DB	73
	DB	68
	DB	59
	DB	49
	DB	51
	DB	55
	DB	51
	DB	59
	DB	49
	DB	51
	DB	55
	DB	51
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.35_2_kmpc_loc_struct_pack.36	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.35_2__kmpc_loc_pack.35
.2.35_2__kmpc_loc_pack.35	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	65
	DB	68
	DB	68
	DB	77
	DB	69
	DB	84
	DB	71
	DB	82
	DB	73
	DB	68
	DB	59
	DB	49
	DB	52
	DB	49
	DB	48
	DB	59
	DB	49
	DB	52
	DB	49
	DB	48
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.35_2_kmpc_loc_struct_pack.44	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.35_2__kmpc_loc_pack.43
.2.35_2__kmpc_loc_pack.43	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	65
	DB	68
	DB	68
	DB	77
	DB	69
	DB	84
	DB	71
	DB	82
	DB	73
	DB	68
	DB	59
	DB	49
	DB	52
	DB	49
	DB	49
	DB	59
	DB	49
	DB	52
	DB	49
	DB	49
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.35_2_kmpc_loc_struct_pack.60	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.35_2__kmpc_loc_pack.59
.2.35_2__kmpc_loc_pack.59	DB	59
	DB	117
	DB	110
	DB	107
	DB	110
	DB	111
	DB	119
	DB	110
	DB	59
	DB	65
	DB	68
	DB	68
	DB	77
	DB	69
	DB	84
	DB	71
	DB	82
	DB	73
	DB	68
	DB	59
	DB	49
	DB	52
	DB	49
	DB	55
	DB	59
	DB	49
	DB	52
	DB	49
	DB	55
	DB	59
	DB	59
_DATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  ADDMETGRID
_TEXT	SEGMENT      'CODE'
_2__routine_start_WRITESWIMLOG_2:
; -- Begin  WRITESWIMLOG
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC WRITESWIMLOG
; --- WRITESWIMLOG
WRITESWIMLOG	PROC 
.B3.1::                         ; Preds .B3.0
                                ; Execution count [1.00e+000]
L15::
                                                          ;1423.12
$LN568:
        push      rbx                                           ;1423.12
$LN569:
        sub       rsp, 512                                      ;1423.12
$LN570:
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B3.2::                         ; Preds .B3.6 .B3.1
                                ; Execution count [5.56e+000]
$LN571:
        mov       edx, 128                                      ;1436.12
$LN572:
        lea       rcx, QWORD PTR [176+rsp]                      ;1436.12
$LN573:
        call      SWIMGETLOGMESSAGE                             ;1436.12
$LN574:
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B3.3::                         ; Preds .B3.2
                                ; Execution count [5.56e+000]
$LN575:
        mov       eax, 128                                      ;1436.3
$LN576:
                                ; LOE rax rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B3.10::                        ; Preds .B3.10 .B3.3
                                ; Execution count [1.11e+001]
$LN577:
        movups    xmm0, XMMWORD PTR [160+rsp+rax]               ;1436.3
$LN578:
        movups    xmm1, XMMWORD PTR [144+rsp+rax]               ;1436.3
$LN579:
        movups    xmm2, XMMWORD PTR [128+rsp+rax]               ;1436.3
$LN580:
        movups    xmm3, XMMWORD PTR [112+rsp+rax]               ;1436.3
$LN581:
        movups    XMMWORD PTR [288+rsp+rax], xmm0               ;1436.3
$LN582:
        movups    XMMWORD PTR [272+rsp+rax], xmm1               ;1436.3
$LN583:
        movups    XMMWORD PTR [256+rsp+rax], xmm2               ;1436.3
$LN584:
        movups    XMMWORD PTR [240+rsp+rax], xmm3               ;1436.3
$LN585:
        sub       rax, 64                                       ;1436.3
$LN586:
        jne       .B3.10        ; Prob 50%                      ;1436.3
$LN587:
                                ; LOE rax rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B3.4::                         ; Preds .B3.10
                                ; Execution count [5.56e+000]
$LN588:
        mov       rax, rsp                                      ;1437.14
$LN589:
        lea       rcx, QWORD PTR [304+rsp]                      ;1437.14
$LN590:
        mov       edx, 128                                      ;1437.14
$LN591:
        lea       r8, QWORD PTR [496+rsp]                       ;1437.14
$LN592:
        mov       r9d, 1                                        ;1437.14
$LN593:
        mov       BYTE PTR [192+rcx], 0                         ;1437.17
$LN594:
        mov       QWORD PTR [32+rax], 2                         ;1437.14
$LN595:
        call      for_cpstr                                     ;1437.14
$LN596:
                                ; LOE rax rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B3.11::                        ; Preds .B3.4
                                ; Execution count [5.56e+000]
$LN597:
        test      eax, eax                                      ;1437.14
$LN598:
        jne       .B3.7         ; Prob 18%                      ;1437.14
$LN599:
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B3.5::                         ; Preds .B3.11
                                ; Execution count [4.56e+000]
$LN600:
        mov       edx, 128                                      ;1438.24
$LN601:
        lea       rbx, QWORD PTR [48+rsp]                       ;1438.24
$LN602:
        mov       rcx, rbx                                      ;1438.24
$LN603:
        lea       r8, QWORD PTR [304+rsp]                       ;1438.24
$LN604:
        mov       r9, rdx                                       ;1438.24
$LN605:
        call      for_trim                                      ;1438.24
$LN606:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B3.6::                         ; Preds .B3.5
                                ; Execution count [4.56e+000]
$LN607:
        mov       r9, rsp                                       ;1438.3
$LN608:
        lea       r8, QWORD PTR [WRITESWIMLOG$format_pack.0.10] ;1438.3
$LN609:
        mov       QWORD PTR [488+rsp], rbx                      ;1438.3
$LN610:
        lea       rbx, QWORD PTR [480+rsp]                      ;1438.3
$LN611:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;1438.3
$LN612:
        lea       rcx, QWORD PTR [432+rsp]                      ;1438.3
$LN613:
        movsxd    rax, eax                                      ;1438.24
$LN614:
        mov       QWORD PTR [32+r9], rbx                        ;1438.3
$LN615:
        mov       QWORD PTR [40+r9], r8                         ;1438.3
$LN616:
        mov       r8, 01208384ff00H                             ;1438.3
$LN617:
        lea       r9, QWORD PTR [__STRLITPACK_236.0.10]         ;1438.3
$LN618:
        mov       QWORD PTR [rcx], 0                            ;1438.3
$LN619:
        mov       QWORD PTR [48+rcx], rax                       ;1438.3
$LN620:
        call      for_write_seq_fmt                             ;1438.3
$LN621:
        jmp       .B3.2         ; Prob 100%                     ;1438.3
$LN622:
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B3.7::                         ; Preds .B3.11
                                ; Execution count [1.00e+000]: Infreq
$LN623:
        add       rsp, 512                                      ;1442.1
$LN624:
        pop       rbx                                           ;1442.1
$LN625:
        ret                                                     ;1442.1
$LN626:
        ALIGN     16
$LN627:
                                ; LOE
.B3.8::
$LN628:
; mark_end;
WRITESWIMLOG ENDP
$LNWRITESWIMLOG$629:
$LNWRITESWIMLOG$630:
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.WRITESWIMLOG.B1_B7	DD	198657
	DD	4194568
	DD	12289
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.WRITESWIMLOG.B1_B7	DD	imagerel .B3.1
	DD	imagerel .B3.8
	DD	imagerel .unwind.WRITESWIMLOG.B1_B7
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  WRITESWIMLOG
_TEXT	SEGMENT      'CODE'
_2__routine_start_SETFIXEDWIND_3:
; -- Begin  SETFIXEDWIND
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC SETFIXEDWIND
; --- SETFIXEDWIND
SETFIXEDWIND	PROC 
; parameter 1(UFIXED): rcx
; parameter 2(VFIXED): rdx
.B4.1::                         ; Preds .B4.0
                                ; Execution count [1.00e+000]
L20::
                                                          ;1012.12
$LN631:
        push      r13                                           ;1012.12
$LN632:
        push      r14                                           ;1012.12
$LN633:
        sub       rsp, 72                                       ;1012.12
$LN634:
        mov       r14, rdx                                      ;1012.12
$LN635:
        movsxd    rax, DWORD PTR [MET_FI_mp_UNIT_SPD]           ;1025.14
$LN636:
        mov       r13, rcx                                      ;1012.12
$LN637:
        dec       rax                                           ;1025.14
$LN638:
        movups    XMMWORD PTR [32+rsp], xmm9                    ;1012.12[spill]
$LN639:
        movups    XMMWORD PTR [48+rsp], xmm8                    ;1012.12[spill]
$LN640:
        cmp       rax, 4                                        ;1025.14
$LN641:
        ja        .B4.13        ; Prob 50%                      ;1025.14
$LN642:
                                ; LOE rax rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.2::                         ; Preds .B4.1
                                ; Execution count [5.00e-001]
$LN643:
        mov       edx, eax                                      ;1025.14
$LN644:
        lea       rcx, QWORD PTR [__ImageBase]                  ;1025.14
$LN645:
        movzx     eax, BYTE PTR [imagerel(.2.37_2.switchtab.2)+rcx+rdx] ;1025.14
$LN646:
        lea       rax, DWORD PTR [imagerel(..1.6_0.TAG.4.0.3)+rcx+rax] ;1025.14
$LN647:
        jmp       rax                                           ;1025.14
$LN648:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..1.6_0.TAG.4.0.3::
.B4.4::                         ; Preds .B4.2
                                ; Execution count [1.00e-001]
$LN649:
        movss     xmm9, DWORD PTR [_2il0floatpacket.10]         ;1035.5
$LN650:
        jmp       .B4.14        ; Prob 100%                     ;1035.5
$LN651:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..1.6_0.TAG.3.0.3::
.B4.6::                         ; Preds .B4.2
                                ; Execution count [1.00e-001]
$LN652:
        movss     xmm9, DWORD PTR [_2il0floatpacket.9]          ;1033.5
$LN653:
        jmp       .B4.14        ; Prob 100%                     ;1033.5
$LN654:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..1.6_0.TAG.2.0.3::
.B4.8::                         ; Preds .B4.2
                                ; Execution count [1.00e-001]
$LN655:
        movss     xmm9, DWORD PTR [_2il0floatpacket.8]          ;1031.5
$LN656:
        jmp       .B4.14        ; Prob 100%                     ;1031.5
$LN657:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..1.6_0.TAG.1.0.3::
.B4.10::                        ; Preds .B4.2
                                ; Execution count [1.00e-001]
$LN658:
        movss     xmm9, DWORD PTR [_2il0floatpacket.7]          ;1029.5
$LN659:
        jmp       .B4.14        ; Prob 100%                     ;1029.5
$LN660:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..1.6_0.TAG.0.0.3::
.B4.13::                        ; Preds .B4.2 .B4.1
                                ; Execution count [5.00e-001]
$LN661:
        movss     xmm9, DWORD PTR [_2il0floatpacket.11]         ;1037.5
$LN662:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.14::                        ; Preds .B4.13 .B4.4 .B4.6 .B4.8 .B4.10
                                ;      
                                ; Execution count [1.00e+000]
$LN663:
        movss     xmm8, DWORD PTR [MET_FI_mp_FIXED_DIR]         ;1041.1
$LN664:
        mulss     xmm8, DWORD PTR [_2il0floatpacket.6]          ;1041.1
$LN665:
        mulss     xmm9, DWORD PTR [MET_FI_mp_FIXED_SPD]         ;1040.1
$LN666:
        movaps    xmm0, xmm8                                    ;1043.17
$LN667:
        call      sinf                                          ;1043.17
$LN668:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.18::                        ; Preds .B4.14
                                ; Execution count [1.00e+000]
$LN669:
        mulss     xmm0, xmm9                                    ;1043.15
$LN670:
        xorps     xmm0, XMMWORD PTR [_2il0floatpacket.12]       ;1043.1
$LN671:
        movss     DWORD PTR [r13], xmm0                         ;1043.1
$LN672:
        movaps    xmm0, xmm8                                    ;1044.17
$LN673:
        call      cosf                                          ;1044.17
$LN674:
                                ; LOE rbx rbp rsi rdi r12 r14 r15 xmm0 xmm6 xmm7 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B4.17::                        ; Preds .B4.18
                                ; Execution count [1.00e+000]
$LN675:
        mulss     xmm9, xmm0                                    ;1044.15
$LN676:
        xorps     xmm9, XMMWORD PTR [_2il0floatpacket.12]       ;1044.1
$LN677:
        movss     DWORD PTR [r14], xmm9                         ;1044.1
$LN678:
        movups    xmm8, XMMWORD PTR [48+rsp]                    ;1047.1[spill]
$LN679:
        movups    xmm9, XMMWORD PTR [32+rsp]                    ;1047.1[spill]
$LN680:
        add       rsp, 72                                       ;1047.1
$LN681:
        pop       r14                                           ;1047.1
$LN682:
        pop       r13                                           ;1047.1
$LN683:
        ret                                                     ;1047.1
        ALIGN     16
$LN684:
                                ; LOE
.B4.15::
$LN685:
; mark_end;
SETFIXEDWIND ENDP
$LNSETFIXEDWIND$686:
$LNSETFIXEDWIND$687:
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SETFIXEDWIND.B1_B17	DD	467969
	DD	231460
	DD	170014
	DD	3758391816
	DD	53250
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SETFIXEDWIND.B1_B17	DD	imagerel .B4.1
	DD	imagerel .B4.15
	DD	imagerel .unwind.SETFIXEDWIND.B1_B17
.pdata	ENDS
_RDATA	SEGMENT     READ  'DATA'
.2.37_2.switchtab.2	DB	..1.6_0.TAG.0.0.3 - ..1.6_0.TAG.4.0.3
	DB	..1.6_0.TAG.1.0.3 - ..1.6_0.TAG.4.0.3
	DB	..1.6_0.TAG.2.0.3 - ..1.6_0.TAG.4.0.3
	DB	..1.6_0.TAG.3.0.3 - ..1.6_0.TAG.4.0.3
	DB	..1.6_0.TAG.4.0.3 - ..1.6_0.TAG.4.0.3
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  SETFIXEDWIND
_TEXT	SEGMENT      'CODE'
_2__routine_start_CHECK_BL_4:
; -- Begin  CHECK_BL
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC CHECK_BL
; --- CHECK_BL
CHECK_BL	PROC 
.B5.1::                         ; Preds .B5.0
                                ; Execution count [0.00e+000]
L30::
                                                          ;1105.12
$LN688:
        push      rbx                                           ;1105.12
$LN689:
        sub       rsp, 176                                      ;1105.12
$LN690:
        lea       rcx, QWORD PTR [.2.38_2_kmpc_loc_struct_pack.12] ;1105.12
$LN691:
        movups    XMMWORD PTR [160+rsp], xmm15                  ;1105.12[spill]
$LN692:
        call      __kmpc_global_thread_num                      ;1105.12
$LN693:
                                ; LOE rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.57::                        ; Preds .B5.1
                                ; Execution count [0.00e+000]
$LN694:
        mov       rcx, QWORD PTR [.2.38_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.27] ;1105.12
$LN695:
        mov       DWORD PTR [48+rsp], eax                       ;1105.12[spill]
$LN696:
        test      rcx, rcx                                      ;1105.12
$LN697:
        je        .B5.3         ; Prob 50%                      ;1105.12
$LN698:
                                ; LOE rcx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.2::                         ; Preds .B5.57
                                ; Execution count [0.00e+000]
$LN699:
        lea       edx, DWORD PTR [rax*8]                        ;1105.12
$LN700:
        movsxd    rdx, edx                                      ;1105.12
$LN701:
        mov       rbx, QWORD PTR [rdx+rcx]                      ;1105.12
$LN702:
        test      rbx, rbx                                      ;1105.12
$LN703:
        jne       .B5.5         ; Prob 50%                      ;1105.12
$LN704:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.3::                         ; Preds .B5.57 .B5.2
                                ; Execution count [0.00e+000]
$LN705:
        mov       rbx, rsp                                      ;1105.12
$LN706:
        lea       rax, QWORD PTR [.2.38_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.27] ;1105.12
$LN707:
        lea       rcx, QWORD PTR [.2.38_2_kmpc_loc_struct_pack.20] ;1105.12
$LN708:
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1105.12
$LN709:
        mov       r9, QWORD PTR [.2.38_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_size_0.28] ;1105.12
$LN710:
        mov       QWORD PTR [32+rbx], rax                       ;1105.12
$LN711:
        mov       edx, DWORD PTR [48+rsp]                       ;1105.12[spill]
$LN712:
        call      __kmpc_threadprivate_cached                   ;1105.12
$LN713:
                                ; LOE rax rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.58::                        ; Preds .B5.3
                                ; Execution count [0.00e+000]
$LN714:
        mov       rbx, rax                                      ;1105.12
$LN715:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.5::                         ; Preds .B5.58 .B5.2
                                ; Execution count [0.00e+000]
$LN716:
        mov       r8, QWORD PTR [.2.38_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_cache_1.29] ;1105.12
$LN717:
        test      r8, r8                                        ;1105.12
$LN718:
        je        .B5.7         ; Prob 50%                      ;1105.12
$LN719:
                                ; LOE rbx rbp rsi rdi r8 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.6::                         ; Preds .B5.5
                                ; Execution count [0.00e+000]
$LN720:
        mov       eax, DWORD PTR [48+rsp]                       ;1105.12[spill]
$LN721:
        lea       edx, DWORD PTR [rax*8]                        ;1105.12
$LN722:
        movsxd    rdx, edx                                      ;1105.12
$LN723:
        mov       rax, QWORD PTR [rdx+r8]                       ;1105.12
$LN724:
        test      rax, rax                                      ;1105.12
$LN725:
        jne       .B5.9         ; Prob 50%                      ;1105.12
$LN726:
                                ; LOE rax rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.7::                         ; Preds .B5.5 .B5.6
                                ; Execution count [0.00e+000]
$LN727:
        mov       r10, rsp                                      ;1105.12
$LN728:
        lea       rax, QWORD PTR [.2.38_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_cache_1.29] ;1105.12
$LN729:
        lea       rcx, QWORD PTR [.2.38_2_kmpc_loc_struct_pack.20] ;1105.12
$LN730:
        lea       r8, QWORD PTR [MET_PUF]                       ;1105.12
$LN731:
        mov       r9, QWORD PTR [.2.38_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_size_1.30] ;1105.12
$LN732:
        mov       QWORD PTR [32+r10], rax                       ;1105.12
$LN733:
        mov       edx, DWORD PTR [48+rsp]                       ;1105.12[spill]
$LN734:
        call      __kmpc_threadprivate_cached                   ;1105.12
$LN735:
                                ; LOE rax rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.9::                         ; Preds .B5.7 .B5.6
                                ; Execution count [1.00e+000]
$LN736:
        movss     xmm0, DWORD PTR [rax]                         ;1117.1
$LN737:
        ucomiss   xmm0, DWORD PTR [_2il0floatpacket.13]         ;1117.10
$LN738:
        jp        .B5.10        ; Prob 0%                       ;1117.10
$LN739:
        je        .B5.54        ; Prob 16%                      ;1117.10
$LN740:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.10::                        ; Preds .B5.9
                                ; Execution count [8.40e-001]
$LN741:
        ucomiss   xmm0, DWORD PTR [_2il0floatpacket.14]         ;1118.10
$LN742:
        pxor      xmm1, xmm1                                    ;1120.18
$LN743:
        jp        .B5.11        ; Prob 0%                       ;1118.10
$LN744:
        je        .B5.13        ; Prob 16%                      ;1118.10
$LN745:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.11::                        ; Preds .B5.10
                                ; Execution count [7.06e-001]
$LN746:
        ucomiss   xmm0, DWORD PTR [_2il0floatpacket.15]         ;1119.10
$LN747:
        jp        .B5.12        ; Prob 0%                       ;1119.10
$LN748:
        je        .B5.13        ; Prob 16%                      ;1119.10
$LN749:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.12::                        ; Preds .B5.11
                                ; Execution count [5.93e-001]
$LN750:
        ucomiss   xmm0, xmm1                                    ;1120.12
$LN751:
        jp        .B5.13        ; Prob 0%                       ;1120.12
$LN752:
        je        .B5.49        ; Prob 16%                      ;1120.12
$LN753:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.13::                        ; Preds .B5.10 .B5.11 .B5.50 .B5.12 .B5.54
                                ;      
                                ; Execution count [9.37e-001]
$LN754:
        movss     xmm0, DWORD PTR [MET_FI_mp_H_CNP]             ;1129.1
$LN755:
        ucomiss   xmm0, xmm1                                    ;1129.11
$LN756:
        jp        .B5.14        ; Prob 0%                       ;1129.11
$LN757:
        je        .B5.46        ; Prob 16%                      ;1129.11
$LN758:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.14::                        ; Preds .B5.13
                                ; Execution count [7.87e-001]
$LN759:
        mov       rax, rsp                                      ;1139.13
$LN760:
        lea       rcx, QWORD PTR [MET_FI_mp_BL_TYPE]            ;1139.13
$LN761:
        mov       edx, 80                                       ;1139.13
$LN762:
        lea       r8, QWORD PTR [__STRLITPACK_212]              ;1139.13
$LN763:
        mov       r9d, 4                                        ;1139.13
$LN764:
        mov       QWORD PTR [32+rax], 2                         ;1139.13
$LN765:
        call      for_cpstr                                     ;1139.13
$LN766:
                                ; LOE rax rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.60::                        ; Preds .B5.14
                                ; Execution count [7.87e-001]
$LN767:
        movss     xmm0, DWORD PTR [MET_FI_mp_CLOUD_COVER]       ;1141.3
$LN768:
        movss     xmm15, DWORD PTR [_2il0floatpacket.14]        ;1141.19
$LN769:
        test      eax, eax                                      ;1139.13
$LN770:
        je        .B5.25        ; Prob 50%                      ;1139.13
$LN771:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.15::                        ; Preds .B5.60
                                ; Execution count [3.93e-001]
$LN772:
        ucomiss   xmm0, xmm15                                   ;1141.19
$LN773:
        jp        .B5.16        ; Prob 0%                       ;1141.19
$LN774:
        je        .B5.37        ; Prob 16%                      ;1141.19
$LN775:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.16::                        ; Preds .B5.15
                                ; Execution count [3.30e-001]
$LN776:
        mov       eax, DWORD PTR [GRID_FI_mp_LMAP]              ;1151.3
$LN777:
        cmp       eax, 2                                        ;1151.3
$LN778:
        je        .B5.18        ; Prob 33%                      ;1151.3
$LN779:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.17::                        ; Preds .B5.16
                                ; Execution count [2.20e-001]
$LN780:
        cmp       eax, 4                                        ;1151.3
$LN781:
        jne       .B5.20        ; Prob 50%                      ;1151.3
$LN782:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.18::                        ; Preds .B5.17 .B5.16
                                ; Execution count [2.20e-001]
$LN783:
        movss     xmm0, DWORD PTR [GRID_FI_mp_LAT0]             ;1151.31
$LN784:
        ucomiss   xmm0, xmm15                                   ;1153.15
$LN785:
        jp        .B5.19        ; Prob 0%                       ;1153.15
$LN786:
        je        .B5.33        ; Prob 16%                      ;1153.15
$LN787:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.19::                        ; Preds .B5.18
                                ; Execution count [1.85e-001]
$LN788:
        movss     xmm0, DWORD PTR [GRID_FI_mp_LON0]             ;1153.15
$LN789:
        ucomiss   xmm0, xmm15                                   ;1153.38
$LN790:
        jp        .B5.20        ; Prob 0%                       ;1153.38
$LN791:
        je        .B5.33        ; Prob 16%                      ;1153.38
$LN792:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.20::                        ; Preds .B5.19 .B5.17
                                ; Execution count [2.66e-001]
$LN793:
        test      BYTE PTR [FLAGS_FI_mp_LYMD], 1                ;1164.12
$LN794:
        jne       .B5.27        ; Prob 39%                      ;1164.12
$LN795:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.21::                        ; Preds .B5.20
                                ; Execution count [1.59e-001]
$LN796:
        mov       rax, rsp                                      ;1166.5
$LN797:
        mov       rcx, rbx                                      ;1166.5
$LN798:
        mov       edx, 80                                       ;1166.5
$LN799:
        lea       r8, QWORD PTR [__STRLITPACK_204]              ;1166.5
$LN800:
        mov       r9d, 8                                        ;1166.5
$LN801:
        mov       DWORD PTR [464+rbx], 99                       ;1165.5
$LN802:
        mov       QWORD PTR [32+rax], 0                         ;1166.5
$LN803:
        call      for_cpystr                                    ;1166.5
$LN804:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.22::                        ; Preds .B5.21
                                ; Execution count [1.59e-001]
$LN805:
        mov       edx, 2                                        ;1167.5
$LN806:
        lea       r8, QWORD PTR [80+rbx]                        ;1167.5
$LN807:
        mov       r9d, 128                                      ;1167.5
$LN808:
        lea       rcx, QWORD PTR [48+rsp]                       ;1167.5
$LN809:
        lea       rax, QWORD PTR [__STRLITPACK_203]             ;1167.59
$LN810:
        lea       r10, QWORD PTR [MET_FI_mp_BL_TYPE]            ;1167.59
$LN811:
        mov       QWORD PTR [rcx], rax                          ;1167.59
$LN812:
        mov       QWORD PTR [8+rcx], 41                         ;1167.59
$LN813:
        mov       QWORD PTR [16+rcx], r10                       ;1167.59
$LN814:
        mov       QWORD PTR [24+rcx], 80                        ;1167.59
$LN815:
        call      for_concat                                    ;1167.5
$LN816:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.23::                        ; Preds .B5.22
                                ; Execution count [1.59e-001]
$LN817:
        mov       rax, rsp                                      ;1168.5
$LN818:
        add       rbx, 208                                      ;1168.5
$LN819:
        mov       rcx, rbx                                      ;1168.5
$LN820:
        mov       edx, 128                                      ;1168.5
$LN821:
        lea       r8, QWORD PTR [__STRLITPACK_202]              ;1168.5
$LN822:
        mov       r9d, 28                                       ;1168.5
$LN823:
        mov       QWORD PTR [32+rax], 0                         ;1168.5
$LN824:
        call      for_cpystr                                    ;1168.5
$LN825:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.24::                        ; Preds .B5.23
                                ; Execution count [1.59e-001]
$LN826:
        mov       rdx, rsp                                      ;1169.10
$LN827:
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_MSC]         ;1169.10
$LN828:
        mov       rcx, rbx                                      ;1169.10
$LN829:
        lea       r8, QWORD PTR [__STRLITPACK_201]              ;1169.10
$LN830:
        mov       r9d, 5                                        ;1169.10
$LN831:
        mov       QWORD PTR [32+rdx], rax                       ;1169.10
$LN832:
        mov       QWORD PTR [40+rdx], 256                       ;1169.10
$LN833:
        mov       edx, 128                                      ;1169.10
$LN834:
        call      REPORTFILENAME                                ;1169.10
$LN835:
        jmp       .B5.32        ; Prob 100%                     ;1169.10
$LN836:
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.25::                        ; Preds .B5.60
                                ; Execution count [3.93e-001]
$LN837:
        ucomiss   xmm0, xmm15                                   ;1173.22
$LN838:
        jne       .B5.27        ; Prob 76%                      ;1173.22
$LN839:
        jp        .B5.27        ; Prob 0%                       ;1173.22
$LN840:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.26::                        ; Preds .B5.25
                                ; Execution count [9.33e-002]
$LN841:
        mov       DWORD PTR [MET_FI_mp_CLOUD_COVER], 0          ;1175.3
$LN842:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.27::                        ; Preds .B5.20 .B5.26 .B5.25
                                ; Execution count [5.00e-001]
$LN843:
        mov       rax, rsp                                      ;1181.13
$LN844:
        lea       rcx, QWORD PTR [MET_FI_mp_BL_TYPE]            ;1181.13
$LN845:
        mov       edx, 80                                       ;1181.13
$LN846:
        lea       r8, QWORD PTR [__STRLITPACK_200]              ;1181.13
$LN847:
        mov       r9d, 3                                        ;1181.13
$LN848:
        mov       QWORD PTR [32+rax], 2                         ;1181.13
$LN849:
        call      for_cpstr                                     ;1181.13
$LN850:
                                ; LOE rax rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.61::                        ; Preds .B5.27
                                ; Execution count [5.00e-001]
$LN851:
        test      eax, eax                                      ;1181.13
$LN852:
        je        .B5.32        ; Prob 50%                      ;1181.13
$LN853:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.28::                        ; Preds .B5.61
                                ; Execution count [2.50e-001]
$LN854:
        movss     xmm0, DWORD PTR [MET_FI_mp_ZIMIN]             ;1185.3
$LN855:
        ucomiss   xmm0, xmm15                                   ;1185.13
$LN856:
        jp        .B5.29        ; Prob 0%                       ;1185.13
$LN857:
        je        .B5.43        ; Prob 16%                      ;1185.13
$LN858:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.29::                        ; Preds .B5.28
                                ; Execution count [2.10e-001]
$LN859:
        movss     xmm0, DWORD PTR [MET_FI_mp_ZIMAX]             ;1185.13
$LN860:
        ucomiss   xmm0, xmm15                                   ;1185.37
$LN861:
        jp        .B5.30        ; Prob 0%                       ;1185.37
$LN862:
        je        .B5.43        ; Prob 16%                      ;1185.37
$LN863:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.30::                        ; Preds .B5.29
                                ; Execution count [1.76e-001]
$LN864:
        movss     xmm0, DWORD PTR [MET_FI_mp_HCONST]            ;1195.3
$LN865:
        ucomiss   xmm0, xmm15                                   ;1195.14
$LN866:
        jp        .B5.31        ; Prob 0%                       ;1195.14
$LN867:
        je        .B5.40        ; Prob 16%                      ;1195.14
$LN868:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B5.31::                        ; Preds .B5.30
                                ; Execution count [1.48e-001]
$LN869:
        movss     xmm0, DWORD PTR [MET_FI_mp_HDIUR]             ;1195.14
$LN870:
        ucomiss   xmm0, xmm15                                   ;1195.38
$LN871:
        jp        .B5.32        ; Prob 0%                       ;1195.38
$LN872:
        je        .B5.40        ; Prob 16%                      ;1195.38
$LN873:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.32::                        ; Preds .B5.42 .B5.45 .B5.24 .B5.36 .B5.39
                                ;       .B5.48 .B5.53 .B5.31 .B5.61
                                ; Execution count [1.00e+000]
$LN874:
        movups    xmm15, XMMWORD PTR [160+rsp]                  ;1208.1[spill]
$LN875:
        add       rsp, 176                                      ;1208.1
$LN876:
        pop       rbx                                           ;1208.1
$LN877:
        ret                                                     ;1208.1
$LN878:
                                ; LOE
.B5.33::                        ; Preds .B5.19 .B5.18
                                ; Execution count [6.49e-002]
$LN879:
        mov       rax, rsp                                      ;1155.5
$LN880:
        mov       rcx, rbx                                      ;1155.5
$LN881:
        mov       edx, 80                                       ;1155.5
$LN882:
        lea       r8, QWORD PTR [__STRLITPACK_208]              ;1155.5
$LN883:
        mov       r9d, 8                                        ;1155.5
$LN884:
        mov       DWORD PTR [464+rbx], 99                       ;1154.5
$LN885:
        mov       QWORD PTR [32+rax], 0                         ;1155.5
$LN886:
        call      for_cpystr                                    ;1155.5
$LN887:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.34::                        ; Preds .B5.33
                                ; Execution count [6.49e-002]
$LN888:
        mov       edx, 80                                       ;1157.59
$LN889:
        lea       rcx, QWORD PTR [48+rsp]                       ;1157.59
$LN890:
        lea       r8, QWORD PTR [MET_FI_mp_BL_TYPE]             ;1157.59
$LN891:
        mov       r9, rdx                                       ;1157.59
$LN892:
        lea       rax, QWORD PTR [__STRLITPACK_219.0.6]         ;1157.57
$LN893:
        mov       QWORD PTR [80+rcx], rax                       ;1157.57
$LN894:
        mov       QWORD PTR [88+rcx], 81                        ;1157.57
$LN895:
        call      for_trim                                      ;1157.59
$LN896:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.62::                        ; Preds .B5.34
                                ; Execution count [6.49e-002]
$LN897:
        mov       edx, eax                                      ;1157.59
$LN898:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.35::                        ; Preds .B5.62
                                ; Execution count [6.49e-002]
$LN899:
        movsxd    rdx, edx                                      ;1157.59
$LN900:
        lea       r8, QWORD PTR [80+rbx]                        ;1156.5
$LN901:
        mov       QWORD PTR [152+rsp], rdx                      ;1157.57
$LN902:
        lea       rcx, QWORD PTR [128+rsp]                      ;1156.5
$LN903:
        mov       edx, 2                                        ;1156.5
$LN904:
        mov       r9d, 128                                      ;1156.5
$LN905:
        lea       rax, QWORD PTR [48+rsp]                       ;1157.57
$LN906:
        mov       QWORD PTR [96+rax], rax                       ;1157.57
$LN907:
        call      for_concat                                    ;1156.5
$LN908:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.36::                        ; Preds .B5.35
                                ; Execution count [6.49e-002]
$LN909:
        mov       rdx, rsp                                      ;1158.10
$LN910:
        add       rbx, 208                                      ;1158.10
$LN911:
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_MSC]         ;1158.10
$LN912:
        mov       rcx, rbx                                      ;1158.10
$LN913:
        lea       r8, QWORD PTR [__STRLITPACK_205]              ;1158.10
$LN914:
        mov       r9d, 5                                        ;1158.10
$LN915:
        mov       QWORD PTR [32+rdx], rax                       ;1158.10
$LN916:
        mov       QWORD PTR [40+rdx], 256                       ;1158.10
$LN917:
        mov       edx, 128                                      ;1158.10
$LN918:
        call      REPORTFILENAME                                ;1158.10
$LN919:
        jmp       .B5.32        ; Prob 100%                     ;1158.10
$LN920:
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.37::                        ; Preds .B5.15
                                ; Execution count [6.30e-002]: Infreq
$LN921:
        mov       rax, rsp                                      ;1143.5
$LN922:
        mov       rcx, rbx                                      ;1143.5
$LN923:
        mov       edx, 80                                       ;1143.5
$LN924:
        lea       r8, QWORD PTR [__STRLITPACK_211]              ;1143.5
$LN925:
        mov       r9d, 8                                        ;1143.5
$LN926:
        mov       DWORD PTR [464+rbx], 3                        ;1142.5
$LN927:
        mov       QWORD PTR [32+rax], 0                         ;1143.5
$LN928:
        call      for_cpystr                                    ;1143.5
$LN929:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.38::                        ; Preds .B5.37
                                ; Execution count [6.30e-002]: Infreq
$LN930:
        mov       rax, rsp                                      ;1144.5
$LN931:
        lea       rcx, QWORD PTR [80+rbx]                       ;1144.5
$LN932:
        mov       edx, 128                                      ;1144.5
$LN933:
        lea       r8, QWORD PTR [__STRLITPACK_210]              ;1144.5
$LN934:
        mov       r9d, 51                                       ;1144.5
$LN935:
        mov       QWORD PTR [32+rax], 0                         ;1144.5
$LN936:
        call      for_cpystr                                    ;1144.5
$LN937:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.39::                        ; Preds .B5.38
                                ; Execution count [6.30e-002]: Infreq
$LN938:
        mov       rdx, rsp                                      ;1145.10
$LN939:
        add       rbx, 208                                      ;1145.10
$LN940:
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_MSC]         ;1145.10
$LN941:
        mov       rcx, rbx                                      ;1145.10
$LN942:
        lea       r8, QWORD PTR [__STRLITPACK_209]              ;1145.10
$LN943:
        mov       r9d, 5                                        ;1145.10
$LN944:
        mov       QWORD PTR [32+rdx], rax                       ;1145.10
$LN945:
        mov       QWORD PTR [40+rdx], 256                       ;1145.10
$LN946:
        mov       edx, 128                                      ;1145.10
$LN947:
        call      REPORTFILENAME                                ;1145.10
$LN948:
        jmp       .B5.32        ; Prob 100%                     ;1145.10
$LN949:
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.40::                        ; Preds .B5.31 .B5.30
                                ; Execution count [5.19e-002]: Infreq
$LN950:
        mov       rax, rsp                                      ;1197.5
$LN951:
        mov       rcx, rbx                                      ;1197.5
$LN952:
        mov       edx, 80                                       ;1197.5
$LN953:
        lea       r8, QWORD PTR [__STRLITPACK_196]              ;1197.5
$LN954:
        mov       r9d, 8                                        ;1197.5
$LN955:
        mov       DWORD PTR [464+rbx], 3                        ;1196.5
$LN956:
        mov       QWORD PTR [32+rax], 0                         ;1197.5
$LN957:
        call      for_cpystr                                    ;1197.5
$LN958:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.41::                        ; Preds .B5.40
                                ; Execution count [5.19e-002]: Infreq
$LN959:
        mov       rax, rsp                                      ;1198.5
$LN960:
        lea       rcx, QWORD PTR [80+rbx]                       ;1198.5
$LN961:
        mov       edx, 128                                      ;1198.5
$LN962:
        lea       r8, QWORD PTR [__STRLITPACK_195]              ;1198.5
$LN963:
        mov       r9d, 41                                       ;1198.5
$LN964:
        mov       QWORD PTR [32+rax], 0                         ;1198.5
$LN965:
        call      for_cpystr                                    ;1198.5
$LN966:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.42::                        ; Preds .B5.41
                                ; Execution count [5.19e-002]: Infreq
$LN967:
        mov       rdx, rsp                                      ;1199.10
$LN968:
        add       rbx, 208                                      ;1199.10
$LN969:
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_MSC]         ;1199.10
$LN970:
        mov       rcx, rbx                                      ;1199.10
$LN971:
        lea       r8, QWORD PTR [__STRLITPACK_194]              ;1199.10
$LN972:
        mov       r9d, 5                                        ;1199.10
$LN973:
        mov       QWORD PTR [32+rdx], rax                       ;1199.10
$LN974:
        mov       QWORD PTR [40+rdx], 256                       ;1199.10
$LN975:
        mov       edx, 128                                      ;1199.10
$LN976:
        call      REPORTFILENAME                                ;1199.10
$LN977:
        jmp       .B5.32        ; Prob 100%                     ;1199.10
$LN978:
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.43::                        ; Preds .B5.29 .B5.28
                                ; Execution count [7.36e-002]: Infreq
$LN979:
        mov       rax, rsp                                      ;1187.5
$LN980:
        mov       rcx, rbx                                      ;1187.5
$LN981:
        mov       edx, 80                                       ;1187.5
$LN982:
        lea       r8, QWORD PTR [__STRLITPACK_199]              ;1187.5
$LN983:
        mov       r9d, 8                                        ;1187.5
$LN984:
        mov       DWORD PTR [464+rbx], 3                        ;1186.5
$LN985:
        mov       QWORD PTR [32+rax], 0                         ;1187.5
$LN986:
        call      for_cpystr                                    ;1187.5
$LN987:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.44::                        ; Preds .B5.43
                                ; Execution count [7.36e-002]: Infreq
$LN988:
        mov       rax, rsp                                      ;1188.5
$LN989:
        lea       rcx, QWORD PTR [80+rbx]                       ;1188.5
$LN990:
        mov       edx, 128                                      ;1188.5
$LN991:
        lea       r8, QWORD PTR [__STRLITPACK_198]              ;1188.5
$LN992:
        mov       r9d, 40                                       ;1188.5
$LN993:
        mov       QWORD PTR [32+rax], 0                         ;1188.5
$LN994:
        call      for_cpystr                                    ;1188.5
$LN995:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.45::                        ; Preds .B5.44
                                ; Execution count [7.36e-002]: Infreq
$LN996:
        mov       rdx, rsp                                      ;1189.10
$LN997:
        add       rbx, 208                                      ;1189.10
$LN998:
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_MSC]         ;1189.10
$LN999:
        mov       rcx, rbx                                      ;1189.10
$LN1000:
        lea       r8, QWORD PTR [__STRLITPACK_197]              ;1189.10
$LN1001:
        mov       r9d, 5                                        ;1189.10
$LN1002:
        mov       QWORD PTR [32+rdx], rax                       ;1189.10
$LN1003:
        mov       QWORD PTR [40+rdx], 256                       ;1189.10
$LN1004:
        mov       edx, 128                                      ;1189.10
$LN1005:
        call      REPORTFILENAME                                ;1189.10
$LN1006:
        jmp       .B5.32        ; Prob 100%                     ;1189.10
$LN1007:
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.46::                        ; Preds .B5.13
                                ; Execution count [1.50e-001]: Infreq
$LN1008:
        mov       rax, rsp                                      ;1131.3
$LN1009:
        mov       rcx, rbx                                      ;1131.3
$LN1010:
        mov       edx, 80                                       ;1131.3
$LN1011:
        lea       r8, QWORD PTR [__STRLITPACK_215]              ;1131.3
$LN1012:
        mov       r9d, 8                                        ;1131.3
$LN1013:
        mov       DWORD PTR [464+rbx], 3                        ;1130.3
$LN1014:
        mov       QWORD PTR [32+rax], 0                         ;1131.3
$LN1015:
        call      for_cpystr                                    ;1131.3
$LN1016:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.47::                        ; Preds .B5.46
                                ; Execution count [1.50e-001]: Infreq
$LN1017:
        mov       rax, rsp                                      ;1132.3
$LN1018:
        lea       rcx, QWORD PTR [80+rbx]                       ;1132.3
$LN1019:
        mov       edx, 128                                      ;1132.3
$LN1020:
        lea       r8, QWORD PTR [__STRLITPACK_214]              ;1132.3
$LN1021:
        mov       r9d, 31                                       ;1132.3
$LN1022:
        mov       QWORD PTR [32+rax], 0                         ;1132.3
$LN1023:
        call      for_cpystr                                    ;1132.3
$LN1024:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.48::                        ; Preds .B5.47
                                ; Execution count [1.50e-001]: Infreq
$LN1025:
        mov       rdx, rsp                                      ;1133.8
$LN1026:
        add       rbx, 208                                      ;1133.8
$LN1027:
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_MSC]         ;1133.8
$LN1028:
        mov       rcx, rbx                                      ;1133.8
$LN1029:
        lea       r8, QWORD PTR [__STRLITPACK_213]              ;1133.8
$LN1030:
        mov       r9d, 5                                        ;1133.8
$LN1031:
        mov       QWORD PTR [32+rdx], rax                       ;1133.8
$LN1032:
        mov       QWORD PTR [40+rdx], 256                       ;1133.8
$LN1033:
        mov       edx, 128                                      ;1133.8
$LN1034:
        call      REPORTFILENAME                                ;1133.8
$LN1035:
        jmp       .B5.32        ; Prob 100%                     ;1133.8
$LN1036:
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.49::                        ; Preds .B5.12
                                ; Execution count [9.48e-002]: Infreq
$LN1037:
        mov       eax, DWORD PTR [MET_FI_mp_I_CAT]              ;1120.12
$LN1038:
        cmp       eax, -65535                                   ;1120.12
$LN1039:
        je        .B5.51        ; Prob 33%                      ;1120.12
$LN1040:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.50::                        ; Preds .B5.49
                                ; Execution count [6.32e-002]: Infreq
$LN1041:
        test      eax, eax                                      ;1120.12
$LN1042:
        jne       .B5.13        ; Prob 50%                      ;1120.12
$LN1043:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.51::                        ; Preds .B5.49 .B5.50
                                ; Execution count [6.32e-002]: Infreq
$LN1044:
        mov       rax, rsp                                      ;1122.5
$LN1045:
        mov       rcx, rbx                                      ;1122.5
$LN1046:
        mov       edx, 80                                       ;1122.5
$LN1047:
        lea       r8, QWORD PTR [__STRLITPACK_218]              ;1122.5
$LN1048:
        mov       r9d, 8                                        ;1122.5
$LN1049:
        mov       DWORD PTR [464+rbx], 3                        ;1121.5
$LN1050:
        mov       QWORD PTR [32+rax], 0                         ;1122.5
$LN1051:
        call      for_cpystr                                    ;1122.5
$LN1052:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.52::                        ; Preds .B5.51
                                ; Execution count [6.32e-002]: Infreq
$LN1053:
        mov       rax, rsp                                      ;1123.5
$LN1054:
        lea       rcx, QWORD PTR [80+rbx]                       ;1123.5
$LN1055:
        mov       edx, 128                                      ;1123.5
$LN1056:
        lea       r8, QWORD PTR [__STRLITPACK_217]              ;1123.5
$LN1057:
        mov       r9d, 47                                       ;1123.5
$LN1058:
        mov       QWORD PTR [32+rax], 0                         ;1123.5
$LN1059:
        call      for_cpystr                                    ;1123.5
$LN1060:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.53::                        ; Preds .B5.52
                                ; Execution count [6.32e-002]: Infreq
$LN1061:
        mov       rdx, rsp                                      ;1124.10
$LN1062:
        add       rbx, 208                                      ;1124.10
$LN1063:
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_MSC]         ;1124.10
$LN1064:
        mov       rcx, rbx                                      ;1124.10
$LN1065:
        lea       r8, QWORD PTR [__STRLITPACK_216]              ;1124.10
$LN1066:
        mov       r9d, 5                                        ;1124.10
$LN1067:
        mov       QWORD PTR [32+rdx], rax                       ;1124.10
$LN1068:
        mov       QWORD PTR [40+rdx], 256                       ;1124.10
$LN1069:
        mov       edx, 128                                      ;1124.10
$LN1070:
        call      REPORTFILENAME                                ;1124.10
$LN1071:
        jmp       .B5.32        ; Prob 100%                     ;1124.10
$LN1072:
                                ; LOE rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.54::                        ; Preds .B5.9
                                ; Execution count [1.60e-001]: Infreq
$LN1073:
        pxor      xmm1, xmm1                                    ;1120.18
$LN1074:
        jmp       .B5.13        ; Prob 100%                     ;1120.18
$LN1075:
        ALIGN     16
$LN1076:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
.B5.55::
$LN1077:
; mark_end;
CHECK_BL ENDP
$LNCHECK_BL$1078:
$LNCHECK_BL$1079:
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CHECK_BL.B1_B54	DD	333825
	DD	718872
	DD	1442056
	DD	12289
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CHECK_BL.B1_B54	DD	imagerel .B5.1
	DD	imagerel .B5.55
	DD	imagerel .unwind.CHECK_BL.B1_B54
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.38_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.27	DD 2 DUP (?)	; pad
.2.38_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_cache_1.29	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DB 1 DUP ( 0H)	; pad
.2.38_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_size_0.28	DD	0000001d4H,000000000H
.2.38_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_size_1.30	DD	00000012cH,000000000H
.2.38_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.38_2__kmpc_loc_pack.11
.2.38_2__kmpc_loc_pack.11	DB	59
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
	DB	66
	DB	76
	DB	59
	DB	49
	DB	49
	DB	48
	DB	53
	DB	59
	DB	49
	DB	49
	DB	48
	DB	53
	DB	59
	DB	59
	DB 3 DUP ( 0H)	; pad
.2.38_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.38_2__kmpc_loc_pack.19
.2.38_2__kmpc_loc_pack.19	DB	59
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
	DB	66
	DB	76
	DB	59
	DB	49
	DB	49
	DB	48
	DB	53
	DB	59
	DB	49
	DB	50
	DB	48
	DB	56
	DB	59
	DB	59
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
	DD 6 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_219.0.6	DD	1953723725
	DD	1717920800
	DD	543518313
	DD	544235885
	DD	1701209458
	DD	1668179314
	DD	1869357157
	DD	1769234787
	DD	1713401455
	DD	1629516399
	DD	1297372448
	DD	544370464
	DD	1953653059
	DD	1634300773
	DD	1970413678
	DD	1752637550
	DD	1965059685
	DD	1735289203
	DD	1598833184
	DD	1162893652
	DW	61
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  CHECK_BL
_TEXT	SEGMENT      'CODE'
_2__routine_start_BUILDFILENAME_5:
; -- Begin  BUILDFILENAME
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC BUILDFILENAME
; --- BUILDFILENAME
BUILDFILENAME	PROC 
; parameter 1(BUILDFILENAME): rcx
; parameter 2(.tmp..T2781__V$fd5): rdx
; parameter 3(STRING): r8
; parameter 4(.tmp..T2784__V$fd7): r9
; parameter 5(LINE): 1136 + rbp
; parameter 6(.tmp..T2789__V$fda): 1144 + rbp
; parameter 7(PATH_IN): 1152 + rbp
; parameter 8(.tmp..T2794__V$fdd): 1160 + rbp
.B6.1::                         ; Preds .B6.0
                                ; Execution count [1.00e+000]
L42::
                                                          ;1446.23
$LN1080:
        push      rbp                                           ;1446.23
$LN1081:
        push      rbx                                           ;1446.23
$LN1082:
        push      rsi                                           ;1446.23
$LN1083:
        push      rdi                                           ;1446.23
$LN1084:
        push      r12                                           ;1446.23
$LN1085:
        push      r13                                           ;1446.23
$LN1086:
        push      r14                                           ;1446.23
$LN1087:
        push      r15                                           ;1446.23
$LN1088:
        sub       rsp, 1080                                     ;1446.23
$LN1089:
        lea       rbp, QWORD PTR [48+rsp]                       ;1446.23
$LN1090:
        mov       r12, r9                                       ;1446.23
$LN1091:
        mov       r10, rsp                                      ;1483.5
$LN1092:
        mov       rdi, r8                                       ;1446.23
$LN1093:
        mov       r14, QWORD PTR [1144+rbp]                     ;1446.23
$LN1094:
        mov       r15d, r14d                                    ;1483.5
$LN1095:
        mov       r13, QWORD PTR [1136+rbp]                     ;1446.23
$LN1096:
        mov       rsi, rdx                                      ;1446.23
$LN1097:
        mov       rbx, rcx                                      ;1446.23
$LN1098:
        mov       rcx, r13                                      ;1483.5
$LN1099:
        mov       edx, r15d                                     ;1483.5
$LN1100:
        lea       r8, QWORD PTR [__STRLITPACK_237]              ;1483.5
$LN1101:
        mov       r9d, 1                                        ;1483.5
$LN1102:
        mov       DWORD PTR [32+r10], 0                         ;1483.5
$LN1103:
        call      for_f90_index                                 ;1483.5
$LN1104:
                                ; LOE rbx rsi rdi r12 r13 r14 eax r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.26::                        ; Preds .B6.1
                                ; Execution count [1.00e+000]
$LN1105:
        test      eax, eax                                      ;1484.7
$LN1106:
        jne       .B6.6         ; Prob 50%                      ;1484.7
$LN1107:
                                ; LOE rbx rsi rdi r12 r13 r14 eax r15d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.2::                         ; Preds .B6.26
                                ; Execution count [5.00e-001]
$LN1108:
        mov       r10, rsp                                      ;1485.7
$LN1109:
        mov       rcx, r13                                      ;1485.7
$LN1110:
        mov       edx, r15d                                     ;1485.7
$LN1111:
        lea       r8, QWORD PTR [__STRLITPACK_238]              ;1485.7
$LN1112:
        mov       r9d, 1                                        ;1485.7
$LN1113:
        mov       DWORD PTR [32+r10], 0                         ;1485.7
$LN1114:
        call      for_f90_index                                 ;1485.7
$LN1115:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.27::                        ; Preds .B6.2
                                ; Execution count [5.00e-001]
$LN1116:
        test      eax, eax                                      ;1490.7
$LN1117:
        jne       .B6.6         ; Prob 50%                      ;1490.7
$LN1118:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.3::                         ; Preds .B6.27
                                ; Execution count [5.00e-001]
$LN1119:
        mov       rax, r12                                      ;1492.24
$LN1120:
        mov       r13, rsp                                      ;1492.3
$LN1121:
        add       rax, 15                                       ;1492.24
$LN1122:
        and       rax, -16                                      ;1492.24
$LN1123:
        call      __chkstk                                      ;1492.24
$LN1124:
        sub       rsp, rax                                      ;1492.24
$LN1125:
        lea       rax, QWORD PTR [48+rsp]                       ;1492.24
$LN1126:
                                ; LOE rax rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.29::                        ; Preds .B6.3
                                ; Execution count [5.00e-001]
$LN1127:
        mov       r14, rax                                      ;1492.24
$LN1128:
        mov       rdx, r12                                      ;1492.19
$LN1129:
        mov       rcx, r14                                      ;1492.19
$LN1130:
        mov       r8, rdi                                       ;1492.19
$LN1131:
        mov       r9, r12                                       ;1492.19
$LN1132:
        call      for_trim                                      ;1492.19
$LN1133:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.4::                         ; Preds .B6.29
                                ; Execution count [5.00e-001]
$LN1134:
        mov       r10, rsp                                      ;1492.3
$LN1135:
        mov       rcx, rbx                                      ;1492.3
$LN1136:
        movsxd    rax, eax                                      ;1492.3
$LN1137:
        mov       rdx, rsi                                      ;1492.3
$LN1138:
        mov       r8, r14                                       ;1492.3
$LN1139:
        mov       r9, rax                                       ;1492.3
$LN1140:
        mov       QWORD PTR [32+r10], 0                         ;1492.3
$LN1141:
        call      for_cpystr                                    ;1492.3
$LN1142:
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.5::                         ; Preds .B6.4
                                ; Execution count [5.00e-001]
$LN1143:
        mov       rax, r13                                      ;1492.3
$LN1144:
        mov       rsp, rax                                      ;1492.3
$LN1145:
        jmp       .B6.14        ; Prob 100%                     ;1492.3
$LN1146:
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.6::                         ; Preds .B6.26 .B6.27
                                ; Execution count [5.00e-001]
$LN1147:
        movsxd    rax, eax                                      ;1496.13
$LN1148:
        mov       r10, rsp                                      ;1496.3
$LN1149:
        sub       r14, rax                                      ;1496.13
$LN1150:
        lea       rcx, QWORD PTR [256+rbp]                      ;1496.3
$LN1151:
        test      r14, r14                                      ;1496.3
$LN1152:
        lea       r8, QWORD PTR [r13+rax]                       ;1496.3
$LN1153:
        mov       r13d, 0                                       ;1496.3
$LN1154:
        cmovle    r14, r13                                      ;1496.3
$LN1155:
        mov       edx, 256                                      ;1496.3
$LN1156:
        mov       r9, r14                                       ;1496.3
$LN1157:
        mov       QWORD PTR [32+r10], r13                       ;1496.3
$LN1158:
        call      for_cpystr                                    ;1496.3
$LN1159:
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.7::                         ; Preds .B6.6
                                ; Execution count [5.00e-001]
$LN1160:
        mov       r10, rsp                                      ;1497.7
$LN1161:
        lea       rcx, QWORD PTR [256+rbp]                      ;1497.7
$LN1162:
        mov       edx, 256                                      ;1497.7
$LN1163:
        lea       r8, QWORD PTR [__STRLITPACK_237]              ;1497.7
$LN1164:
        mov       r9d, 1                                        ;1497.7
$LN1165:
        mov       DWORD PTR [32+r10], 0                         ;1497.7
$LN1166:
        call      for_f90_index                                 ;1497.7
$LN1167:
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.30::                        ; Preds .B6.7
                                ; Execution count [5.00e-001]
$LN1168:
        test      eax, eax                                      ;1498.9
$LN1169:
        jne       .B6.11        ; Prob 38%                      ;1498.9
$LN1170:
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.8::                         ; Preds .B6.30
                                ; Execution count [3.10e-001]
$LN1171:
        mov       r10, rsp                                      ;1499.9
$LN1172:
        lea       rcx, QWORD PTR [256+rbp]                      ;1499.9
$LN1173:
        mov       edx, 256                                      ;1499.9
$LN1174:
        lea       r8, QWORD PTR [__STRLITPACK_238]              ;1499.9
$LN1175:
        mov       r9d, 1                                        ;1499.9
$LN1176:
        mov       DWORD PTR [32+r10], 0                         ;1499.9
$LN1177:
        call      for_f90_index                                 ;1499.9
$LN1178:
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.31::                        ; Preds .B6.8
                                ; Execution count [3.10e-001]
$LN1179:
        test      eax, eax                                      ;1502.9
$LN1180:
        jne       .B6.11        ; Prob 50%                      ;1502.9
$LN1181:
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.9::                         ; Preds .B6.31
                                ; Execution count [2.50e-001]
$LN1182:
        mov       edx, 256                                      ;1503.21
$LN1183:
        lea       rcx, QWORD PTR [rbp]                          ;1503.21
$LN1184:
        mov       r9, rdx                                       ;1503.21
$LN1185:
        lea       r8, QWORD PTR [256+rbp]                       ;1503.21
$LN1186:
        call      for_trim                                      ;1503.21
$LN1187:
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.10::                        ; Preds .B6.9
                                ; Execution count [2.50e-001]
$LN1188:
        mov       r10, rsp                                      ;1503.5
$LN1189:
        mov       rcx, rbx                                      ;1503.5
$LN1190:
        movsxd    rax, eax                                      ;1503.5
$LN1191:
        mov       rdx, rsi                                      ;1503.5
$LN1192:
        mov       r9, rax                                       ;1503.5
$LN1193:
        lea       r8, QWORD PTR [rbp]                           ;1503.5
$LN1194:
        mov       QWORD PTR [32+r10], 0                         ;1503.5
$LN1195:
        call      for_cpystr                                    ;1503.5
$LN1196:
        jmp       .B6.14        ; Prob 100%                     ;1503.5
$LN1197:
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.11::                        ; Preds .B6.30 .B6.31
                                ; Execution count [2.50e-001]
$LN1198:
        movsxd    rax, eax                                      ;1505.26
$LN1199:
        xor       r10d, r10d                                    ;1505.26
$LN1200:
        dec       rax                                           ;1505.26
$LN1201:
        mov       r14, rsp                                      ;1505.5
$LN1202:
        cmovg     r10, rax                                      ;1505.26
$LN1203:
        mov       rax, r10                                      ;1505.26
$LN1204:
        add       rax, 15                                       ;1505.26
$LN1205:
        and       rax, -16                                      ;1505.26
$LN1206:
        call      __chkstk                                      ;1505.26
$LN1207:
        sub       rsp, rax                                      ;1505.26
$LN1208:
        lea       rax, QWORD PTR [48+rsp]                       ;1505.26
$LN1209:
                                ; LOE rax rbx rsi rdi r10 r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.34::                        ; Preds .B6.11
                                ; Execution count [2.50e-001]
$LN1210:
        mov       r13, rax                                      ;1505.26
$LN1211:
        mov       rdx, r10                                      ;1505.21
$LN1212:
        mov       rcx, r13                                      ;1505.21
$LN1213:
        lea       r8, QWORD PTR [256+rbp]                       ;1505.21
$LN1214:
        mov       r9, r10                                       ;1505.21
$LN1215:
        call      for_trim                                      ;1505.21
$LN1216:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.12::                        ; Preds .B6.34
                                ; Execution count [2.50e-001]
$LN1217:
        mov       r10, rsp                                      ;1505.5
$LN1218:
        mov       rcx, rbx                                      ;1505.5
$LN1219:
        movsxd    rax, eax                                      ;1505.5
$LN1220:
        mov       rdx, rsi                                      ;1505.5
$LN1221:
        mov       r8, r13                                       ;1505.5
$LN1222:
        mov       r9, rax                                       ;1505.5
$LN1223:
        mov       QWORD PTR [32+r10], 0                         ;1505.5
$LN1224:
        call      for_cpystr                                    ;1505.5
$LN1225:
                                ; LOE rbx rsi rdi r12 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.13::                        ; Preds .B6.12
                                ; Execution count [2.50e-001]
$LN1226:
        mov       rax, r14                                      ;1505.5
$LN1227:
        mov       rsp, rax                                      ;1505.5
$LN1228:
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.14::                        ; Preds .B6.5 .B6.10 .B6.13
                                ; Execution count [1.00e+000]
$LN1229:
        mov       rcx, QWORD PTR [1152+rbp]                     ;1510.5
$LN1230:
        mov       rdx, QWORD PTR [1160+rbp]                     ;1510.5
$LN1231:
        call      for_len_trim                                  ;1510.5
$LN1232:
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.35::                        ; Preds .B6.14
                                ; Execution count [1.00e+000]
$LN1233:
        test      eax, eax                                      ;1510.23
$LN1234:
        jle       .B6.23        ; Prob 16%                      ;1510.23
$LN1235:
                                ; LOE rbx rsi rdi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.15::                        ; Preds .B6.35
                                ; Execution count [8.40e-001]
$LN1236:
        mov       r10, rsp                                      ;1511.3
$LN1237:
        lea       rcx, QWORD PTR [256+rbp]                      ;1511.3
$LN1238:
        mov       edx, 256                                      ;1511.3
$LN1239:
        mov       r8, rdi                                       ;1511.3
$LN1240:
        mov       r9, r12                                       ;1511.3
$LN1241:
        mov       QWORD PTR [32+r10], 0                         ;1511.3
$LN1242:
        call      for_cpystr                                    ;1511.3
$LN1243:
                                ; LOE rbx rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.16::                        ; Preds .B6.15
                                ; Execution count [8.40e-001]
$LN1244:
        mov       rdi, rsp                                      ;1512.8
$LN1245:
        mov       rcx, rbx                                      ;1512.8
$LN1246:
        mov       rdx, rsi                                      ;1512.8
$LN1247:
        lea       r8, QWORD PTR [256+rbp]                       ;1512.8
$LN1248:
        mov       r9d, 256                                      ;1512.8
$LN1249:
        lea       r12, QWORD PTR [512+rbp]                      ;1512.8
$LN1250:
        mov       QWORD PTR [32+rdi], r12                       ;1512.8
$LN1251:
        mov       QWORD PTR [40+rdi], 256                       ;1512.8
$LN1252:
        call      SPLITNAME                                     ;1512.8
$LN1253:
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.17::                        ; Preds .B6.16
                                ; Execution count [8.40e-001]
$LN1254:
        mov       edx, 256                                      ;1513.13
$LN1255:
        lea       rcx, QWORD PTR [768+rbp]                      ;1513.13
$LN1256:
        mov       r8, r12                                       ;1513.13
$LN1257:
        mov       r9, rdx                                       ;1513.13
$LN1258:
        call      STRIPNULL                                     ;1513.13
$LN1259:
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.18::                        ; Preds .B6.17
                                ; Execution count [8.40e-001]
$LN1260:
        mov       rcx, r12                                      ;1513.3
$LN1261:
        lea       rdx, QWORD PTR [768+rbp]                      ;1513.3
$LN1262:
        mov       r8d, 256                                      ;1513.3
$LN1263:
        call      memmove                                       ;1513.3
$LN1264:
                                ; LOE rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.19::                        ; Preds .B6.18
                                ; Execution count [8.40e-001]
$LN1265:
        mov       rcx, r12                                      ;1514.7
$LN1266:
        mov       edx, 256                                      ;1514.7
$LN1267:
        call      for_len_trim                                  ;1514.7
$LN1268:
                                ; LOE rbx rsi eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.36::                        ; Preds .B6.19
                                ; Execution count [8.40e-001]
$LN1269:
        test      eax, eax                                      ;1514.25
$LN1270:
        jne       .B6.23        ; Prob 78%                      ;1514.25
$LN1271:
                                ; LOE rbx rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.20::                        ; Preds .B6.36
                                ; Execution count [1.85e-001]
$LN1272:
        mov       rax, QWORD PTR [1160+rbp]                     ;1514.64
$LN1273:
        mov       r12, rsp                                      ;1514.31
$LN1274:
        add       rax, 15                                       ;1514.64
$LN1275:
        and       rax, -16                                      ;1514.64
$LN1276:
        call      __chkstk                                      ;1514.64
$LN1277:
        sub       rsp, rax                                      ;1514.64
$LN1278:
        lea       rax, QWORD PTR [48+rsp]                       ;1514.64
$LN1279:
                                ; LOE rax rbx rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.38::                        ; Preds .B6.20
                                ; Execution count [1.85e-001]
$LN1280:
        mov       rdi, rax                                      ;1514.64
$LN1281:
        mov       rdx, QWORD PTR [1160+rbp]                     ;1514.59
$LN1282:
        mov       rcx, rdi                                      ;1514.59
$LN1283:
        mov       r9, rdx                                       ;1514.59
$LN1284:
        mov       r8, QWORD PTR [1152+rbp]                      ;1514.59
$LN1285:
        call      for_trim                                      ;1514.59
$LN1286:
                                ; LOE rbx rsi rdi r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.21::                        ; Preds .B6.38
                                ; Execution count [1.85e-001]
$LN1287:
        movsxd    rax, eax                                      ;1514.31
$LN1288:
        mov       rcx, rbx                                      ;1514.31
$LN1289:
        mov       rdx, rsi                                      ;1514.31
$LN1290:
        mov       r8, rdi                                       ;1514.31
$LN1291:
        mov       r9, rax                                       ;1514.31
$LN1292:
        call      ADDPATH                                       ;1514.31
$LN1293:
                                ; LOE rbx r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.22::                        ; Preds .B6.21
                                ; Execution count [1.85e-001]
$LN1294:
        mov       rax, r12                                      ;1514.31
$LN1295:
        mov       rsp, rax                                      ;1514.31
$LN1296:
                                ; LOE rbx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B6.23::                        ; Preds .B6.22 .B6.36 .B6.35
                                ; Execution count [1.00e+000]
$LN1297:
        mov       rax, rbx                                      ;1518.1
$LN1298:
        lea       rsp, QWORD PTR [1032+rbp]                     ;1518.1
$LN1299:
        pop       r15                                           ;1518.1
$LN1300:
        pop       r14                                           ;1518.1
$LN1301:
        pop       r13                                           ;1518.1
$LN1302:
        pop       r12                                           ;1518.1
$LN1303:
        pop       rdi                                           ;1518.1
$LN1304:
        pop       rsi                                           ;1518.1
$LN1305:
        pop       rbx                                           ;1518.1
$LN1306:
        pop       rbp                                           ;1518.1
$LN1307:
        ret                                                     ;1518.1
        ALIGN     16
$LN1308:
                                ; LOE
.B6.24::
$LN1309:
; mark_end;
BUILDFILENAME ENDP
$LNBUILDFILENAME$1310:
$LNBUILDFILENAME$1311:
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.BUILDFILENAME.B1_B23	DD	889919489
	DD	18023192
	DD	4027318407
	DD	3490242570
	DD	1879359494
	DD	805462019
	DD	20481
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.BUILDFILENAME.B1_B23	DD	imagerel .B6.1
	DD	imagerel .B6.24
	DD	imagerel .unwind.BUILDFILENAME.B1_B23
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  BUILDFILENAME
_TEXT	SEGMENT      'CODE'
_2__routine_start_SETMETGRID_6:
; -- Begin  SETMETGRID
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC SETMETGRID
; --- SETMETGRID
SETMETGRID	PROC 
.B7.1::                         ; Preds .B7.0
                                ; Execution count [0.00e+000]
L49::
                                                          ;1271.18
$LN1312:
        push      rbp                                           ;1271.18
$LN1313:
        push      rbx                                           ;1271.18
$LN1314:
        push      rsi                                           ;1271.18
$LN1315:
        push      rdi                                           ;1271.18
$LN1316:
        push      r12                                           ;1271.18
$LN1317:
        push      r13                                           ;1271.18
$LN1318:
        sub       rsp, 1608                                     ;1271.18
$LN1319:
        lea       rbp, QWORD PTR [48+rsp]                       ;1271.18
$LN1320:
        lea       rcx, QWORD PTR [.2.40_2_kmpc_loc_struct_pack.20] ;1271.18
$LN1321:
        call      __kmpc_global_thread_num                      ;1271.18
$LN1322:
                                ; LOE r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.100::                       ; Preds .B7.1
                                ; Execution count [0.00e+000]
$LN1323:
        mov       rcx, QWORD PTR [.2.40_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.35] ;1271.18
$LN1324:
        mov       edx, eax                                      ;1271.18
$LN1325:
        test      rcx, rcx                                      ;1271.18
$LN1326:
        je        .B7.3         ; Prob 50%                      ;1271.18
$LN1327:
                                ; LOE rcx r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.2::                         ; Preds .B7.100
                                ; Execution count [0.00e+000]
$LN1328:
        lea       eax, DWORD PTR [rdx*8]                        ;1271.18
$LN1329:
        cdqe                                                    ;1271.18
$LN1330:
        mov       rbx, QWORD PTR [rcx+rax]                      ;1271.18
$LN1331:
        test      rbx, rbx                                      ;1271.18
$LN1332:
        jne       .B7.5         ; Prob 50%                      ;1271.18
$LN1333:
                                ; LOE rbx r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.3::                         ; Preds .B7.100 .B7.2
                                ; Execution count [0.00e+000]
$LN1334:
        mov       rbx, rsp                                      ;1271.18
$LN1335:
        lea       rcx, QWORD PTR [.2.40_2_kmpc_loc_struct_pack.28] ;1271.18
$LN1336:
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1271.18
$LN1337:
        lea       rax, QWORD PTR [.2.40_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.35] ;1271.18
$LN1338:
        mov       r9, QWORD PTR [.2.40_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_size_0.36] ;1271.18
$LN1339:
        mov       QWORD PTR [32+rbx], rax                       ;1271.18
$LN1340:
        call      __kmpc_threadprivate_cached                   ;1271.18
$LN1341:
                                ; LOE rax r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.101::                       ; Preds .B7.3
                                ; Execution count [0.00e+000]
$LN1342:
        mov       rbx, rax                                      ;1271.18
$LN1343:
                                ; LOE rbx r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.5::                         ; Preds .B7.101 .B7.2
                                ; Execution count [1.00e+000]
$LN1344:
        mov       esi, -1                                       ;1284.1
$LN1345:
        call      CLEARMETGRID                                  ;1286.6
$LN1346:
                                ; LOE rbx r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.6::                         ; Preds .B7.5
                                ; Execution count [1.00e+000]
$LN1347:
        lea       rcx, QWORD PTR [MET_FI_mp_NUMMETMAX]          ;1288.10
$LN1348:
        call      SWIMNUMFIELDS                                 ;1288.10
$LN1349:
                                ; LOE rbx r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.7::                         ; Preds .B7.6
                                ; Execution count [1.00e+000]
$LN1350:
        mov       DWORD PTR [MET_FI_mp_NUMMET], eax             ;1288.1
$LN1351:
        test      eax, eax                                      ;1289.12
$LN1352:
        jge       .B7.10        ; Prob 21%                      ;1289.12
$LN1353:
                                ; LOE rbx r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.8::                         ; Preds .B7.7
                                ; Execution count [7.84e-001]
$LN1354:
        mov       rdi, rsp                                      ;1291.3
$LN1355:
        mov       rcx, rbx                                      ;1291.3
$LN1356:
        mov       edx, 80                                       ;1291.3
$LN1357:
        lea       r8, QWORD PTR [__STRLITPACK_229]              ;1291.3
$LN1358:
        mov       r9d, 10                                       ;1291.3
$LN1359:
        mov       DWORD PTR [464+rbx], 3                        ;1290.3
$LN1360:
        mov       QWORD PTR [32+rdi], 0                         ;1291.3
$LN1361:
        call      for_cpystr                                    ;1291.3
$LN1362:
                                ; LOE rbx r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.9::                         ; Preds .B7.8
                                ; Execution count [7.84e-001]
$LN1363:
        mov       rdi, rsp                                      ;1292.3
$LN1364:
        add       rbx, 80                                       ;1292.3
$LN1365:
        mov       rcx, rbx                                      ;1292.3
$LN1366:
        mov       edx, 128                                      ;1292.3
$LN1367:
        lea       r8, QWORD PTR [__STRLITPACK_228]              ;1292.3
$LN1368:
        mov       r9d, 11                                       ;1292.3
$LN1369:
        mov       QWORD PTR [32+rdi], 0                         ;1292.3
$LN1370:
        call      for_cpystr                                    ;1292.3
$LN1371:
        jmp       .B7.39        ; Prob 100%                     ;1292.3
$LN1372:
                                ; LOE r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.10::                        ; Preds .B7.7
                                ; Execution count [2.16e-001]
$LN1373:
        movsxd    r8, DWORD PTR [MET_FI_mp_NUMMETMAX]           ;1296.1
$LN1374:
        xor       r12d, r12d                                    ;1296.1
$LN1375:
        test      r8, r8                                        ;1296.1
$LN1376:
        lea       rcx, QWORD PTR [1552+rbp]                     ;1296.1
$LN1377:
        cmovle    r8, r12                                       ;1296.1
$LN1378:
        mov       edx, 2                                        ;1296.1
$LN1379:
        mov       r9d, 440                                      ;1296.1
$LN1380:
        call      for_check_mult_overflow64                     ;1296.1
$LN1381:
                                ; LOE rbx r12 r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.11::                        ; Preds .B7.10
                                ; Execution count [2.16e-001]
$LN1382:
        mov       r11, 0fffffff00fffffffH                       ;1296.1
$LN1383:
        and       eax, 1                                        ;1296.1
$LN1384:
        and       r11, QWORD PTR [MET_FI_mp_METGRID+24]         ;1296.1
$LN1385:
        mov       r10, 0f000000000H                             ;1296.1
$LN1386:
        add       r11, 1073741824                               ;1296.1
$LN1387:
        lea       rdx, QWORD PTR [MET_FI_mp_METGRID]            ;1296.1
$LN1388:
        mov       edi, r11d                                     ;1296.1
$LN1389:
        mov       r9, r11                                       ;1296.1
$LN1390:
        and       edi, 1                                        ;1296.1
$LN1391:
        and       r9, -256                                      ;1296.1
$LN1392:
        shr       r9, 8                                         ;1296.1
$LN1393:
        shl       eax, 4                                        ;1296.1
$LN1394:
        and       r9d, 1                                        ;1296.1
$LN1395:
        mov       QWORD PTR [MET_FI_mp_METGRID+24], r11         ;1296.1
$LN1396:
        lea       r8d, DWORD PTR [1+rdi+rdi]                    ;1296.1
$LN1397:
        and       r11, r10                                      ;1296.1
$LN1398:
        or        r8d, eax                                      ;1296.1
$LN1399:
        shl       r9d, 21                                       ;1296.1
$LN1400:
        shr       r11, 36                                       ;1296.1
$LN1401:
        or        r8d, r9d                                      ;1296.1
$LN1402:
        and       r8d, -31457281                                ;1296.1
$LN1403:
        shl       r11d, 21                                      ;1296.1
$LN1404:
        or        r8d, r11d                                     ;1296.1
$LN1405:
        add       r8d, 262144                                   ;1296.1
$LN1406:
        mov       rcx, QWORD PTR [1552+rbp]                     ;1296.1
$LN1407:
        call      for_alloc_allocatable                         ;1296.1
$LN1408:
                                ; LOE rax rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.104::                       ; Preds .B7.11
                                ; Execution count [2.16e-001]
$LN1409:
        mov       r13, rax                                      ;1296.1
$LN1410:
                                ; LOE rbx r12 r13 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.12::                        ; Preds .B7.104
                                ; Execution count [2.16e-001]
$LN1411:
        test      r13, r13                                      ;1296.1
$LN1412:
        jne       .B7.18        ; Prob 50%                      ;1296.1
$LN1413:
                                ; LOE rbx r12 r13 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.13::                        ; Preds .B7.12
                                ; Execution count [1.08e-001]
$LN1414:
        mov       r11, QWORD PTR [MET_FI_mp_METGRID+24]         ;1296.1
$LN1415:
        mov       r13, r11                                      ;1296.1
$LN1416:
        and       r13, -256                                     ;1296.1
$LN1417:
        mov       rdi, 0f000000000H                             ;1296.1
$LN1418:
        shr       r13, 8                                        ;1296.1
$LN1419:
        and       r11, rdi                                      ;1296.1
$LN1420:
        shl       r13, 63                                       ;1296.1
$LN1421:
        mov       r10, 0ffffff0fffffffffH                       ;1296.1
$LN1422:
        shr       r13, 55                                       ;1296.1
$LN1423:
        mov       edx, 440                                      ;1296.1
$LN1424:
        shr       r11, 36                                       ;1296.1
$LN1425:
        add       r13, 133                                      ;1296.1
$LN1426:
        movsxd    r8, DWORD PTR [MET_FI_mp_NUMMETMAX]           ;1296.1
$LN1427:
        test      r8, r8                                        ;1296.1
$LN1428:
        mov       QWORD PTR [MET_FI_mp_METGRID+8], rdx          ;1296.1
$LN1429:
        lea       rcx, QWORD PTR [1536+rbp]                     ;1296.1
$LN1430:
        mov       QWORD PTR [MET_FI_mp_METGRID+56], rdx         ;1296.1
$LN1431:
        cmovle    r8, r12                                       ;1296.1
$LN1432:
        shl       r11, 60                                       ;1296.1
$LN1433:
        and       r13, r10                                      ;1296.1
$LN1434:
        shr       r11, 24                                       ;1296.1
$LN1435:
        mov       edx, 2                                        ;1296.1
$LN1436:
        mov       r9d, 440                                      ;1296.1
$LN1437:
        or        r13, r11                                      ;1296.1
$LN1438:
        mov       edi, 1                                        ;1296.1
$LN1439:
        mov       QWORD PTR [MET_FI_mp_METGRID+24], r13         ;1296.1
$LN1440:
        mov       QWORD PTR [MET_FI_mp_METGRID+32], rdi         ;1296.1
$LN1441:
        mov       QWORD PTR [MET_FI_mp_METGRID+16], r12         ;1296.1
$LN1442:
        mov       QWORD PTR [MET_FI_mp_METGRID+64], rdi         ;1296.1
$LN1443:
        mov       QWORD PTR [MET_FI_mp_METGRID+48], r8          ;1296.1
$LN1444:
        call      for_check_mult_overflow64                     ;1296.1
$LN1445:
                                ; LOE rbx rdi r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.14::                        ; Preds .B7.13
                                ; Execution count [1.08e-001]
$LN1446:
        movsxd    r8, DWORD PTR [MET_FI_mp_NUMMETMAX]           ;1296.1
$LN1447:
        test      r8, r8                                        ;1296.1
$LN1448:
        lea       rcx, QWORD PTR [1544+rbp]                     ;1296.1
$LN1449:
        cmovle    r8, r12                                       ;1296.1
$LN1450:
        mov       edx, 2                                        ;1296.1
$LN1451:
        mov       r9d, 4                                        ;1296.1
$LN1452:
        call      for_check_mult_overflow64                     ;1296.1
$LN1453:
                                ; LOE rbx rdi r12 r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.15::                        ; Preds .B7.14
                                ; Execution count [1.08e-001]
$LN1454:
        mov       r13, 0fffffff00fffffffH                       ;1296.1
$LN1455:
        and       eax, 1                                        ;1296.1
$LN1456:
        and       r13, QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE+24] ;1296.1
$LN1457:
        mov       r11, 0f000000000H                             ;1296.1
$LN1458:
        add       r13, 1073741824                               ;1296.1
$LN1459:
        lea       rdx, QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE]   ;1296.1
$LN1460:
        mov       r9d, r13d                                     ;1296.1
$LN1461:
        mov       r10, r13                                      ;1296.1
$LN1462:
        and       r9d, 1                                        ;1296.1
$LN1463:
        and       r10, -256                                     ;1296.1
$LN1464:
        shr       r10, 8                                        ;1296.1
$LN1465:
        shl       eax, 4                                        ;1296.1
$LN1466:
        and       r10d, 1                                       ;1296.1
$LN1467:
        mov       QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE+24], r13 ;1296.1
$LN1468:
        lea       r8d, DWORD PTR [1+r9+r9]                      ;1296.1
$LN1469:
        and       r13, r11                                      ;1296.1
$LN1470:
        or        r8d, eax                                      ;1296.1
$LN1471:
        shl       r10d, 21                                      ;1296.1
$LN1472:
        shr       r13, 36                                       ;1296.1
$LN1473:
        or        r8d, r10d                                     ;1296.1
$LN1474:
        and       r8d, -31457281                                ;1296.1
$LN1475:
        shl       r13d, 21                                      ;1296.1
$LN1476:
        or        r8d, r13d                                     ;1296.1
$LN1477:
        add       r8d, 262144                                   ;1296.1
$LN1478:
        mov       rcx, QWORD PTR [1544+rbp]                     ;1296.1
$LN1479:
        call      for_alloc_allocatable                         ;1296.1
$LN1480:
                                ; LOE rax rbx rdi r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.106::                       ; Preds .B7.15
                                ; Execution count [1.08e-001]
$LN1481:
        mov       r13, rax                                      ;1296.1
$LN1482:
                                ; LOE rbx rdi r12 r13 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.16::                        ; Preds .B7.106
                                ; Execution count [1.08e-001]
$LN1483:
        test      r13, r13                                      ;1296.1
$LN1484:
        jne       .B7.18        ; Prob 50%                      ;1296.1
$LN1485:
                                ; LOE rbx rdi r12 r13 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.17::                        ; Preds .B7.16
                                ; Execution count [5.41e-002]
$LN1486:
        mov       rdx, QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE+24] ;1296.1
$LN1487:
        mov       r9, rdx                                       ;1296.1
$LN1488:
        and       r9, -256                                      ;1296.1
$LN1489:
        mov       r10, 0f000000000H                             ;1296.1
$LN1490:
        shr       r9, 8                                         ;1296.1
$LN1491:
        and       rdx, r10                                      ;1296.1
$LN1492:
        shl       r9, 63                                        ;1296.1
$LN1493:
        mov       r11, 0ffffff0fffffffffH                       ;1296.1
$LN1494:
        shr       r9, 55                                        ;1296.1
$LN1495:
        lea       rcx, QWORD PTR [1528+rbp]                     ;1296.1
$LN1496:
        shr       rdx, 36                                       ;1296.1
$LN1497:
        add       r9, 133                                       ;1296.1
$LN1498:
        shl       rdx, 60                                       ;1296.1
$LN1499:
        and       r9, r11                                       ;1296.1
$LN1500:
        movsxd    r8, DWORD PTR [MET_FI_mp_NUMMETMAX]           ;1296.1
$LN1501:
        test      r8, r8                                        ;1296.1
$LN1502:
        mov       QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE+32], rdi ;1296.1
$LN1503:
        cmovle    r8, r12                                       ;1296.1
$LN1504:
        shr       rdx, 24                                       ;1296.1
$LN1505:
        or        r9, rdx                                       ;1296.1
$LN1506:
        mov       edx, 4                                        ;1296.1
$LN1507:
        mov       QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE+24], r9 ;1296.1
$LN1508:
        mov       r9d, 4                                        ;1296.1
$LN1509:
        mov       QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE+8], rdx ;1296.1
$LN1510:
        mov       QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE+56], rdx ;1296.1
$LN1511:
        mov       edx, 2                                        ;1296.1
$LN1512:
        mov       QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE+16], r12 ;1296.1
$LN1513:
        mov       QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE+64], rdi ;1296.1
$LN1514:
        mov       QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE+48], r8 ;1296.1
$LN1515:
        call      for_check_mult_overflow64                     ;1296.1
$LN1516:
                                ; LOE rbx r12 r13 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.18::                        ; Preds .B7.17 .B7.16 .B7.12
                                ; Execution count [2.16e-001]
$LN1517:
        test      r13d, r13d                                    ;1297.16
$LN1518:
        je        .B7.21        ; Prob 50%                      ;1297.16
$LN1519:
                                ; LOE rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.19::                        ; Preds .B7.18
                                ; Execution count [1.08e-001]
$LN1520:
        mov       rdi, rsp                                      ;1299.3
$LN1521:
        mov       rcx, rbx                                      ;1299.3
$LN1522:
        mov       edx, 80                                       ;1299.3
$LN1523:
        lea       r8, QWORD PTR [__STRLITPACK_227]              ;1299.3
$LN1524:
        mov       r9d, 10                                       ;1299.3
$LN1525:
        mov       DWORD PTR [464+rbx], 99                       ;1298.3
$LN1526:
        mov       QWORD PTR [32+rdi], 0                         ;1299.3
$LN1527:
        call      for_cpystr                                    ;1299.3
$LN1528:
                                ; LOE rbx r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.20::                        ; Preds .B7.19
                                ; Execution count [1.08e-001]
$LN1529:
        mov       rdi, rsp                                      ;1300.3
$LN1530:
        add       rbx, 80                                       ;1300.3
$LN1531:
        mov       rcx, rbx                                      ;1300.3
$LN1532:
        mov       edx, 128                                      ;1300.3
$LN1533:
        lea       r8, QWORD PTR [__STRLITPACK_226]              ;1300.3
$LN1534:
        mov       r9d, 26                                       ;1300.3
$LN1535:
        mov       QWORD PTR [32+rdi], 0                         ;1300.3
$LN1536:
        call      for_cpystr                                    ;1300.3
$LN1537:
        jmp       .B7.39        ; Prob 100%                     ;1300.3
$LN1538:
                                ; LOE r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.21::                        ; Preds .B7.18
                                ; Execution count [1.08e-001]
$LN1539:
        mov       r8, QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE+48] ;1306.1
$LN1540:
        mov       DWORD PTR [FLAGS_FI_mp_LTER], 0               ;1304.1
$LN1541:
        test      r8, r8                                        ;1306.1
$LN1542:
        jle       .B7.24        ; Prob 50%                      ;1306.1
$LN1543:
                                ; LOE rbx r8 r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.22::                        ; Preds .B7.21
                                ; Execution count [5.41e-004]
$LN1544:
        mov       rcx, QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE]   ;1306.1
$LN1545:
        cmp       r8, 24                                        ;1306.1
$LN1546:
        jle       .B7.87        ; Prob 0%                       ;1306.1
$LN1547:
                                ; LOE rcx rbx r8 r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.23::                        ; Preds .B7.22
                                ; Execution count [1.08e-001]
$LN1548:
        shl       r8, 2                                         ;1306.1
$LN1549:
        xor       edx, edx                                      ;1306.1
$LN1550:
        call      _intel_fast_memset                            ;1306.1
$LN1551:
                                ; LOE rbx r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.24::                        ; Preds .B7.93 .B7.21 .B7.91 .B7.23
                                ; Execution count [1.08e-001]
$LN1552:
        mov       r12d, DWORD PTR [MET_FI_mp_NUMMETMAX]         ;1308.1
$LN1553:
        mov       r10d, 1                                       ;1308.1
$LN1554:
        test      r12d, r12d                                    ;1308.1
$LN1555:
        jle       .B7.38        ; Prob 2%                       ;1308.1
$LN1556:
                                ; LOE rbx r14 r15 esi r10d r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.25::                        ; Preds .B7.24
                                ; Execution count [1.06e-001]
$LN1557:
        mov       r11, QWORD PTR [MET_FI_mp_METGRID+64]         ;1311.5
$LN1558:
        mov       edi, -79652914                                ;1312.5
$LN1559:
        mov       r13, QWORD PTR [MET_FI_mp_METGRID]            ;1311.5
$LN1560:
                                ; LOE rbx r11 r13 r14 r15 esi edi r10d r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.26::                        ; Preds .B7.36 .B7.25
                                ; Execution count [4.31e-001]
$LN1561:
        cmp       r10d, DWORD PTR [MET_FI_mp_NUMMET]            ;1310.9
$LN1562:
        jle       .B7.28        ; Prob 22%                      ;1310.9
$LN1563:
                                ; LOE rbx r11 r13 r14 r15 esi edi r10d r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.27::                        ; Preds .B7.26
                                ; Execution count [3.36e-001]
$LN1564:
        movsxd    rdx, r10d                                     ;1311.5
$LN1565:
        sub       rdx, r11                                      ;1311.5
$LN1566:
        imul      r9, rdx, 440                                  ;1311.5
$LN1567:
        mov       DWORD PTR [r13+r9], 0                         ;1311.5
$LN1568:
        mov       DWORD PTR [32+r13+r9], edi                    ;1312.5
$LN1569:
        jmp       .B7.36        ; Prob 100%                     ;1312.5
$LN1570:
                                ; LOE rbx r11 r13 r14 r15 esi edi r10d r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.28::                        ; Preds .B7.26
                                ; Execution count [9.49e-002]
$LN1571:
        mov       DWORD PTR [1524+rbp], r10d                    ;1308.1
$LN1572:
        neg       r11                                           ;1315.11
$LN1573:
        movsxd    r10, r10d                                     ;1315.11
$LN1574:
        lea       rcx, QWORD PTR [1524+rbp]                     ;1315.11
$LN1575:
        add       r11, r10                                      ;1315.11
$LN1576:
        imul      rdx, r11, 440                                 ;1315.11
$LN1577:
        add       rdx, r13                                      ;1315.11
$LN1578:
        call      SWIMGETGRID                                   ;1315.11
$LN1579:
                                ; LOE rbx r14 r15 eax esi edi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.29::                        ; Preds .B7.28
                                ; Execution count [9.49e-002]
$LN1580:
        cmp       eax, 1                                        ;1316.13
$LN1581:
        jne       .B7.66        ; Prob 20%                      ;1316.13
$LN1582:
                                ; LOE rbx r14 r15 esi edi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.30::                        ; Preds .B7.29
                                ; Execution count [7.59e-002]
$LN1583:
        imul      r9, QWORD PTR [MET_FI_mp_METGRID+64], 440     ;1322.21
$LN1584:
        movsxd    rdx, DWORD PTR [1524+rbp]                     ;1322.3
$LN1585:
        imul      r11, rdx, 440                                 ;1322.21
$LN1586:
        mov       rcx, QWORD PTR [MET_FI_mp_METGRID]            ;1322.3
$LN1587:
        sub       rcx, r9                                       ;1322.21
$LN1588:
        mov       r10d, DWORD PTR [FLAGS_FI_mp_CREATE]          ;1322.21
$LN1589:
        not       r10d                                          ;1322.43
$LN1590:
        and       DWORD PTR [24+r11+rcx], r10d                  ;1322.3
$LN1591:
        add       rcx, r11                                      ;1324.8
$LN1592:
        call      ALLOCMETGRIDARRAYS                            ;1324.8
$LN1593:
                                ; LOE rbx r14 r15 esi edi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.31::                        ; Preds .B7.30
                                ; Execution count [7.59e-002]
$LN1594:
        cmp       DWORD PTR [464+rbx], 0                        ;1325.14
$LN1595:
        jne       .B7.39        ; Prob 20%                      ;1325.14
$LN1596:
                                ; LOE rbx r14 r15 esi edi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.32::                        ; Preds .B7.31
                                ; Execution count [6.07e-002]
$LN1597:
        mov       r11, QWORD PTR [MET_FI_mp_METGRID+64]         ;1327.3
$LN1598:
        mov       rdx, r11                                      ;1327.7
$LN1599:
        mov       r10d, DWORD PTR [1524+rbp]                    ;1327.3
$LN1600:
        neg       rdx                                           ;1327.7
$LN1601:
        movsxd    r10, r10d                                     ;1327.7
$LN1602:
        add       rdx, r10                                      ;1327.7
$LN1603:
        imul      rdx, rdx, 440                                 ;1327.7
$LN1604:
        mov       r13, QWORD PTR [MET_FI_mp_METGRID]            ;1327.3
$LN1605:
        add       rdx, r13                                      ;1327.7
$LN1606:
        test      BYTE PTR [24+rdx], 1                          ;1327.7
$LN1607:
        jne       .B7.41        ; Prob 3%                       ;1327.7
$LN1608:
                                ; LOE rdx rbx r11 r13 r14 r15 esi edi r10d r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.33::                        ; Preds .B7.43 .B7.32
                                ; Execution count [6.03e-002]
$LN1609:
        imul      r9, r11, -440                                 ;1337.5
$LN1610:
        add       r9, r13                                       ;1337.5
$LN1611:
        cmp       r10d, 1                                       ;1336.9
$LN1612:
        je        .B7.40        ; Prob 16%                      ;1336.9
$LN1613:
                                ; LOE rbx r9 r11 r13 r14 r15 esi edi r10d r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.34::                        ; Preds .B7.33
                                ; Execution count [5.07e-002]
$LN1614:
        mov       eax, DWORD PTR [GRID_FI_mp_MGRD]              ;1339.49
$LN1615:
        xor       r8d, r8d                                      ;1339.49
$LN1616:
        cdq                                                     ;1339.49
$LN1617:
        xor       eax, edx                                      ;1339.49
$LN1618:
        pxor      xmm0, xmm0                                    ;1339.42
$LN1619:
        sub       eax, edx                                      ;1339.49
$LN1620:
        mov       edx, 1                                        ;1339.49
$LN1621:
        mov       ecx, eax                                      ;1339.49
$LN1622:
        shl       edx, cl                                       ;1339.49
$LN1623:
        cmp       eax, 31                                       ;1339.49
$LN1624:
        movsxd    rax, r10d                                     ;1339.24
$LN1625:
        cmovbe    r8d, edx                                      ;1339.49
$LN1626:
        cvtsi2ss  xmm0, r8d                                     ;1339.42
$LN1627:
        imul      rdx, rax, 440                                 ;1339.24
$LN1628:
        mulss     xmm0, DWORD PTR [BASIC_FI_mp_DXSPLT]          ;1339.61
$LN1629:
        mulss     xmm0, xmm0                                    ;1339.69
$LN1630:
        mulss     xmm0, DWORD PTR [32+rdx+r9]                   ;1339.5
$LN1631:
        movss     DWORD PTR [32+rdx+r9], xmm0                   ;1339.5
$LN1632:
                                ; LOE rax rbx r11 r13 r14 r15 esi edi r10d r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.35::                        ; Preds .B7.40 .B7.34
                                ; Execution count [6.03e-002]
$LN1633:
        sub       rax, QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE+64] ;1342.3
$LN1634:
        mov       rdx, QWORD PTR [MET_FI_mp_LMETGRIDCOMPLETE]   ;1342.3
$LN1635:
        mov       DWORD PTR [rdx+rax*4], -1                     ;1342.3
$LN1636:
                                ; LOE rbx r11 r13 r14 r15 esi edi r10d r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.36::                        ; Preds .B7.27 .B7.35
                                ; Execution count [3.97e-001]
$LN1637:
        inc       r10d                                          ;1308.1
$LN1638:
        cmp       r10d, r12d                                    ;1308.1
$LN1639:
        jle       .B7.26        ; Prob 82%                      ;1308.1
$LN1640:
                                ; LOE rbx r11 r13 r14 r15 esi edi r10d r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.38::                        ; Preds .B7.36 .B7.24
                                ; Execution count [7.37e-002]
$LN1641:
        mov       esi, 1                                        ;1346.1
$LN1642:
                                ; LOE r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.39::                        ; Preds .B7.31 .B7.9 .B7.20 .B7.38 .B7.86
                                ;       .B7.64
                                ; Execution count [1.00e+000]
$LN1643:
        mov       eax, esi                                      ;1351.1
$LN1644:
        lea       rsp, QWORD PTR [1560+rbp]                     ;1351.1
$LN1645:
        pop       r13                                           ;1351.1
$LN1646:
        pop       r12                                           ;1351.1
$LN1647:
        pop       rdi                                           ;1351.1
$LN1648:
        pop       rsi                                           ;1351.1
$LN1649:
        pop       rbx                                           ;1351.1
$LN1650:
        pop       rbp                                           ;1351.1
$LN1651:
        ret                                                     ;1351.1
$LN1652:
                                ; LOE
.B7.40::                        ; Preds .B7.33
                                ; Execution count [9.65e-003]: Infreq
$LN1653:
        mov       edx, DWORD PTR [BASIC_FI_mp_DELX2]            ;1337.5
$LN1654:
        mov       eax, 1                                        ;1342.3
$LN1655:
        mov       DWORD PTR [472+r9], edx                       ;1337.5
$LN1656:
        jmp       .B7.35        ; Prob 100%                     ;1337.5
$LN1657:
                                ; LOE rax rbx r11 r13 r14 r15 esi edi r10d r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.41::                        ; Preds .B7.32
                                ; Execution count [2.06e-003]: Infreq
$LN1658:
        mov       DWORD PTR [FLAGS_FI_mp_LTER], -1              ;1328.5
$LN1659:
        lea       rcx, QWORD PTR [1524+rbp]                     ;1329.11
$LN1660:
        call      SWIMGETTERRAIN                                ;1329.11
$LN1661:
                                ; LOE rbx r14 r15 eax esi edi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.42::                        ; Preds .B7.41
                                ; Execution count [2.06e-003]: Infreq
$LN1662:
        cmp       eax, 1                                        ;1330.13
$LN1663:
        jne       .B7.44        ; Prob 20%                      ;1330.13
$LN1664:
                                ; LOE rbx r14 r15 esi edi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.43::                        ; Preds .B7.42
                                ; Execution count [1.65e-003]: Infreq
$LN1665:
        mov       r11, QWORD PTR [MET_FI_mp_METGRID+64]         ;1337.5
$LN1666:
        mov       r13, QWORD PTR [MET_FI_mp_METGRID]            ;1337.5
$LN1667:
        mov       r10d, DWORD PTR [1524+rbp]                    ;1336.3
$LN1668:
        jmp       .B7.33        ; Prob 100%                     ;1336.3
$LN1669:
                                ; LOE rbx r11 r13 r14 r15 esi edi r10d r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.44::                        ; Preds .B7.42
                                ; Execution count [4.12e-004]: Infreq
$LN1670:
        mov       rdi, rsp                                      ;979.12
$LN1671:
        lea       rcx, QWORD PTR [rbp]                          ;991.6
$LN1672:
        call      SWIMREPORTERROR                               ;991.6
$LN1673:
                                ; LOE rbx rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.45::                        ; Preds .B7.49 .B7.44
                                ; Execution count [2.29e-003]: Infreq
$LN1674:
        mov       edx, 128                                      ;1436.12
$LN1675:
        lea       rcx, QWORD PTR [1200+rbp]                     ;1436.12
$LN1676:
        call      SWIMGETLOGMESSAGE                             ;1436.12
$LN1677:
                                ; LOE rbx rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.46::                        ; Preds .B7.45
                                ; Execution count [2.29e-003]: Infreq
$LN1678:
        mov       edx, 128                                      ;1436.3
$LN1679:
                                ; LOE rdx rbx rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.98::                        ; Preds .B7.98 .B7.46
                                ; Execution count [4.58e-003]: Infreq
$LN1680:
        movups    xmm0, XMMWORD PTR [1184+rbp+rdx]              ;1436.3
$LN1681:
        movups    xmm1, XMMWORD PTR [1168+rbp+rdx]              ;1436.3
$LN1682:
        movups    xmm2, XMMWORD PTR [1152+rbp+rdx]              ;1436.3
$LN1683:
        movups    xmm3, XMMWORD PTR [1136+rbp+rdx]              ;1436.3
$LN1684:
        movups    XMMWORD PTR [1312+rbp+rdx], xmm0              ;1436.3
$LN1685:
        movups    XMMWORD PTR [1296+rbp+rdx], xmm1              ;1436.3
$LN1686:
        movups    XMMWORD PTR [1280+rbp+rdx], xmm2              ;1436.3
$LN1687:
        movups    XMMWORD PTR [1264+rbp+rdx], xmm3              ;1436.3
$LN1688:
        sub       rdx, 64                                       ;1436.3
$LN1689:
        jne       .B7.98        ; Prob 50%                      ;1436.3
$LN1690:
                                ; LOE rdx rbx rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.47::                        ; Preds .B7.98
                                ; Execution count [2.29e-003]: Infreq
$LN1691:
        mov       r10, rsp                                      ;1437.14
$LN1692:
        lea       rcx, QWORD PTR [1328+rbp]                     ;1437.14
$LN1693:
        mov       edx, 128                                      ;1437.14
$LN1694:
        lea       r8, QWORD PTR [1520+rbp]                      ;1437.14
$LN1695:
        mov       r9d, 1                                        ;1437.14
$LN1696:
        mov       BYTE PTR [r8], 0                              ;1437.17
$LN1697:
        mov       QWORD PTR [32+r10], 2                         ;1437.14
$LN1698:
        call      for_cpstr                                     ;1437.14
$LN1699:
                                ; LOE rax rbx rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.109::                       ; Preds .B7.47
                                ; Execution count [2.29e-003]: Infreq
$LN1700:
        test      eax, eax                                      ;1437.14
$LN1701:
        jne       .B7.50        ; Prob 18%                      ;1437.14
$LN1702:
                                ; LOE rbx rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.48::                        ; Preds .B7.109
                                ; Execution count [1.88e-003]: Infreq
$LN1703:
        mov       edx, 128                                      ;1438.24
$LN1704:
        lea       r12, QWORD PTR [1072+rbp]                     ;1438.24
$LN1705:
        mov       rcx, r12                                      ;1438.24
$LN1706:
        lea       r8, QWORD PTR [1328+rbp]                      ;1438.24
$LN1707:
        mov       r9, rdx                                       ;1438.24
$LN1708:
        call      for_trim                                      ;1438.24
$LN1709:
                                ; LOE rbx rdi r12 r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.49::                        ; Preds .B7.48
                                ; Execution count [1.88e-003]: Infreq
$LN1710:
        mov       QWORD PTR [1512+rbp], r12                     ;1438.3
$LN1711:
        mov       r12, rsp                                      ;1438.3
$LN1712:
        mov       r8, 01208384ff00H                             ;1438.3
$LN1713:
        lea       rcx, QWORD PTR [1456+rbp]                     ;1438.3
$LN1714:
        lea       r9, QWORD PTR [__STRLITPACK_236.0.10]         ;1438.3
$LN1715:
        lea       r10, QWORD PTR [1504+rbp]                     ;1438.3
$LN1716:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;1438.3
$LN1717:
        lea       r11, QWORD PTR [WRITESWIMLOG$format_pack.0.10] ;1438.3
$LN1718:
        movsxd    rax, eax                                      ;1438.24
$LN1719:
        mov       QWORD PTR [rcx], 0                            ;1438.3
$LN1720:
        mov       QWORD PTR [48+rcx], rax                       ;1438.3
$LN1721:
        mov       QWORD PTR [32+r12], r10                       ;1438.3
$LN1722:
        mov       QWORD PTR [40+r12], r11                       ;1438.3
$LN1723:
        call      for_write_seq_fmt                             ;1438.3
$LN1724:
        jmp       .B7.45        ; Prob 100%                     ;1438.3
$LN1725:
                                ; LOE rbx rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.50::                        ; Preds .B7.109
                                ; Execution count [4.12e-004]: Infreq
$LN1726:
        mov       r12d, DWORD PTR [rbp]                         ;995.1
$LN1727:
        test      r12d, r12d                                    ;995.22
$LN1728:
        je        .B7.53        ; Prob 50%                      ;995.22
$LN1729:
                                ; LOE rbx rdi r14 r15 esi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.51::                        ; Preds .B7.50
                                ; Execution count [2.06e-004]: Infreq
$LN1730:
        mov       r13, rsp                                      ;997.3
$LN1731:
        lea       rcx, QWORD PTR [864+rbp]                      ;997.3
$LN1732:
        mov       r8, 01208384ff00H                             ;997.3
$LN1733:
        lea       r9, QWORD PTR [__STRLITPACK_187.0.2]          ;997.3
$LN1734:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;997.3
$LN1735:
        lea       r10, QWORD PTR [__STRLITPACK_185]             ;997.3
$LN1736:
        mov       DWORD PTR [464+rbx], r12d                     ;996.3
$LN1737:
        lea       r11, QWORD PTR [1040+rbp]                     ;997.3
$LN1738:
        mov       QWORD PTR [rcx], 0                            ;997.3
$LN1739:
        mov       QWORD PTR [r11], 25                           ;997.3
$LN1740:
        mov       QWORD PTR [8+r11], r10                        ;997.3
$LN1741:
        mov       QWORD PTR [32+r13], r11                       ;997.3
$LN1742:
        call      for_write_seq_lis                             ;997.3
$LN1743:
                                ; LOE rbx rdi r14 r15 esi r12d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.52::                        ; Preds .B7.51
                                ; Execution count [2.06e-004]: Infreq
$LN1744:
        lea       rdx, QWORD PTR [__STRLITPACK_188.0.2]         ;997.3
$LN1745:
        lea       rcx, QWORD PTR [864+rbp]                      ;997.3
$LN1746:
        mov       DWORD PTR [472+rbp], r12d                     ;997.3
$LN1747:
        lea       r8, QWORD PTR [472+rbp]                       ;997.3
$LN1748:
        call      for_write_seq_lis_xmit                        ;997.3
$LN1749:
        jmp       .B7.55        ; Prob 100%                     ;997.3
$LN1750:
                                ; LOE rbx rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.53::                        ; Preds .B7.50
                                ; Execution count [2.06e-004]: Infreq
$LN1751:
        mov       r12, rsp                                      ;999.3
$LN1752:
        lea       rcx, QWORD PTR [864+rbp]                      ;999.3
$LN1753:
        mov       r8, 01208384ff00H                             ;999.3
$LN1754:
        lea       r9, QWORD PTR [__STRLITPACK_189.0.2]          ;999.3
$LN1755:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;999.3
$LN1756:
        lea       r10, QWORD PTR [__STRLITPACK_183]             ;999.3
$LN1757:
        mov       QWORD PTR [rcx], 0                            ;999.3
$LN1758:
        lea       r11, QWORD PTR [1056+rbp]                     ;999.3
$LN1759:
        mov       QWORD PTR [r11], 23                           ;999.3
$LN1760:
        mov       QWORD PTR [8+r11], r10                        ;999.3
$LN1761:
        mov       QWORD PTR [32+r12], r11                       ;999.3
$LN1762:
        call      for_write_seq_lis                             ;999.3
$LN1763:
                                ; LOE rbx rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.54::                        ; Preds .B7.53
                                ; Execution count [2.06e-004]: Infreq
$LN1764:
        mov       DWORD PTR [464+rbx], 99                       ;1000.3
$LN1765:
                                ; LOE rbx rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.55::                        ; Preds .B7.52 .B7.54
                                ; Execution count [4.12e-004]: Infreq
$LN1766:
        mov       eax, 14                                       ;1002.17
$LN1767:
        mov       r12, rsp                                      ;1002.1
$LN1768:
        mov       rax, 16                                       ;1002.17
$LN1769:
        sub       rsp, rax                                      ;1002.17
$LN1770:
        lea       rax, QWORD PTR [48+rsp]                       ;1002.17
$LN1771:
                                ; LOE rax rbx rdi r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.112::                       ; Preds .B7.55
                                ; Execution count [4.12e-004]: Infreq
$LN1772:
        mov       r13, rax                                      ;1002.17
$LN1773:
        mov       edx, 14                                       ;1002.12
$LN1774:
        mov       rcx, r13                                      ;1002.12
$LN1775:
        lea       r8, QWORD PTR [__STRLITPACK_224]              ;1002.12
$LN1776:
        mov       r9, rdx                                       ;1002.12
$LN1777:
        call      for_trim                                      ;1002.12
$LN1778:
                                ; LOE rbx rdi r12 r13 r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.56::                        ; Preds .B7.112
                                ; Execution count [4.12e-004]: Infreq
$LN1779:
        mov       QWORD PTR [992+rbp], r13                      ;1002.25
$LN1780:
        lea       r13, QWORD PTR [912+rbp]                      ;1002.32
$LN1781:
        mov       edx, 80                                       ;1002.32
$LN1782:
        mov       rcx, r13                                      ;1002.32
$LN1783:
        mov       r9, rdx                                       ;1002.32
$LN1784:
        lea       r8, QWORD PTR [392+rbp]                       ;1002.32
$LN1785:
        movsxd    rax, eax                                      ;1002.12
$LN1786:
        lea       r10, QWORD PTR [__STRLITPACK_182]             ;1002.25
$LN1787:
        mov       QWORD PTR [88+r13], rax                       ;1002.25
$LN1788:
        mov       QWORD PTR [96+r13], r10                       ;1002.25
$LN1789:
        mov       QWORD PTR [104+r13], 1                        ;1002.25
$LN1790:
        call      for_trim                                      ;1002.32
$LN1791:
                                ; LOE rbx rdi r12 r13 r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.57::                        ; Preds .B7.56
                                ; Execution count [4.12e-004]: Infreq
$LN1792:
        mov       edx, 3                                        ;1002.1
$LN1793:
        lea       rcx, QWORD PTR [992+rbp]                      ;1002.1
$LN1794:
        mov       r8, rbx                                       ;1002.1
$LN1795:
        mov       r9d, 80                                       ;1002.1
$LN1796:
        movsxd    rax, eax                                      ;1002.32
$LN1797:
        mov       QWORD PTR [32+rcx], r13                       ;1002.30
$LN1798:
        mov       QWORD PTR [40+rcx], rax                       ;1002.30
$LN1799:
        call      for_concat                                    ;1002.1
$LN1800:
                                ; LOE rbx rdi r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.58::                        ; Preds .B7.57
                                ; Execution count [4.12e-004]: Infreq
$LN1801:
        mov       rax, r12                                      ;1002.1
$LN1802:
        mov       rsp, rax                                      ;1002.1
$LN1803:
                                ; LOE rbx rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.115::                       ; Preds .B7.58
                                ; Execution count [4.12e-004]: Infreq
$LN1804:
        mov       edx, 128                                      ;1003.12
$LN1805:
        lea       rcx, QWORD PTR [480+rbp]                      ;1003.12
$LN1806:
        mov       r9, rdx                                       ;1003.12
$LN1807:
        lea       r8, QWORD PTR [8+rbp]                         ;1003.12
$LN1808:
        call      for_trim                                      ;1003.12
$LN1809:
                                ; LOE rbx rdi r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.59::                        ; Preds .B7.115
                                ; Execution count [4.12e-004]: Infreq
$LN1810:
        mov       r10, rsp                                      ;1003.1
$LN1811:
        lea       rcx, QWORD PTR [80+rbx]                       ;1003.1
$LN1812:
        movsxd    rax, eax                                      ;1003.1
$LN1813:
        mov       edx, 128                                      ;1003.1
$LN1814:
        mov       r9, rax                                       ;1003.1
$LN1815:
        lea       r8, QWORD PTR [480+rbp]                       ;1003.1
$LN1816:
        mov       QWORD PTR [32+r10], 0                         ;1003.1
$LN1817:
        call      for_cpystr                                    ;1003.1
$LN1818:
                                ; LOE rbx rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.60::                        ; Preds .B7.59
                                ; Execution count [4.12e-004]: Infreq
$LN1819:
        mov       edx, 128                                      ;1004.12
$LN1820:
        lea       rcx, QWORD PTR [608+rbp]                      ;1004.12
$LN1821:
        mov       r9, rdx                                       ;1004.12
$LN1822:
        lea       r8, QWORD PTR [136+rbp]                       ;1004.12
$LN1823:
        call      for_trim                                      ;1004.12
$LN1824:
                                ; LOE rbx rdi r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.61::                        ; Preds .B7.60
                                ; Execution count [4.12e-004]: Infreq
$LN1825:
        mov       r10, rsp                                      ;1004.1
$LN1826:
        lea       rcx, QWORD PTR [208+rbx]                      ;1004.1
$LN1827:
        movsxd    rax, eax                                      ;1004.1
$LN1828:
        mov       edx, 128                                      ;1004.1
$LN1829:
        mov       r9, rax                                       ;1004.1
$LN1830:
        lea       r8, QWORD PTR [608+rbp]                       ;1004.1
$LN1831:
        mov       QWORD PTR [32+r10], 0                         ;1004.1
$LN1832:
        call      for_cpystr                                    ;1004.1
$LN1833:
                                ; LOE rbx rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.62::                        ; Preds .B7.61
                                ; Execution count [4.12e-004]: Infreq
$LN1834:
        mov       edx, 128                                      ;1005.12
$LN1835:
        lea       rcx, QWORD PTR [736+rbp]                      ;1005.12
$LN1836:
        mov       r9, rdx                                       ;1005.12
$LN1837:
        lea       r8, QWORD PTR [264+rbp]                       ;1005.12
$LN1838:
        call      for_trim                                      ;1005.12
$LN1839:
                                ; LOE rbx rdi r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.63::                        ; Preds .B7.62
                                ; Execution count [4.12e-004]: Infreq
$LN1840:
        mov       r10, rsp                                      ;1005.1
$LN1841:
        add       rbx, 336                                      ;1005.1
$LN1842:
        movsxd    rax, eax                                      ;1005.1
$LN1843:
        mov       rcx, rbx                                      ;1005.1
$LN1844:
        mov       edx, 128                                      ;1005.1
$LN1845:
        lea       r8, QWORD PTR [736+rbp]                       ;1005.1
$LN1846:
        mov       r9, rax                                       ;1005.1
$LN1847:
        mov       QWORD PTR [32+r10], 0                         ;1005.1
$LN1848:
        call      for_cpystr                                    ;1005.1
$LN1849:
                                ; LOE rdi r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.64::                        ; Preds .B7.63
                                ; Execution count [4.12e-004]: Infreq
$LN1850:
        mov       rax, rdi                                      ;1008.1
$LN1851:
        mov       rsp, rax                                      ;1008.1
$LN1852:
        jmp       .B7.39        ; Prob 100%                     ;1008.1
$LN1853:
                                ; LOE r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.66::                        ; Preds .B7.29
                                ; Execution count [1.90e-002]: Infreq
$LN1854:
        mov       r12, rsp                                      ;979.12
$LN1855:
        lea       rcx, QWORD PTR [rbp]                          ;991.6
$LN1856:
        call      SWIMREPORTERROR                               ;991.6
$LN1857:
                                ; LOE rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.67::                        ; Preds .B7.71 .B7.66
                                ; Execution count [1.05e-001]: Infreq
$LN1858:
        mov       edx, 128                                      ;1436.12
$LN1859:
        lea       rcx, QWORD PTR [1200+rbp]                     ;1436.12
$LN1860:
        call      SWIMGETLOGMESSAGE                             ;1436.12
$LN1861:
                                ; LOE rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.68::                        ; Preds .B7.67
                                ; Execution count [1.05e-001]: Infreq
$LN1862:
        mov       edx, 128                                      ;1436.3
$LN1863:
                                ; LOE rdx rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.99::                        ; Preds .B7.99 .B7.68
                                ; Execution count [2.11e-001]: Infreq
$LN1864:
        movups    xmm0, XMMWORD PTR [1184+rbp+rdx]              ;1436.3
$LN1865:
        movups    xmm1, XMMWORD PTR [1168+rbp+rdx]              ;1436.3
$LN1866:
        movups    xmm2, XMMWORD PTR [1152+rbp+rdx]              ;1436.3
$LN1867:
        movups    xmm3, XMMWORD PTR [1136+rbp+rdx]              ;1436.3
$LN1868:
        movups    XMMWORD PTR [1312+rbp+rdx], xmm0              ;1436.3
$LN1869:
        movups    XMMWORD PTR [1296+rbp+rdx], xmm1              ;1436.3
$LN1870:
        movups    XMMWORD PTR [1280+rbp+rdx], xmm2              ;1436.3
$LN1871:
        movups    XMMWORD PTR [1264+rbp+rdx], xmm3              ;1436.3
$LN1872:
        sub       rdx, 64                                       ;1436.3
$LN1873:
        jne       .B7.99        ; Prob 50%                      ;1436.3
$LN1874:
                                ; LOE rdx rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.69::                        ; Preds .B7.99
                                ; Execution count [1.05e-001]: Infreq
$LN1875:
        mov       rdi, rsp                                      ;1437.14
$LN1876:
        lea       rcx, QWORD PTR [1328+rbp]                     ;1437.14
$LN1877:
        mov       edx, 128                                      ;1437.14
$LN1878:
        lea       r8, QWORD PTR [1520+rbp]                      ;1437.14
$LN1879:
        mov       r9d, 1                                        ;1437.14
$LN1880:
        mov       BYTE PTR [r8], 0                              ;1437.17
$LN1881:
        mov       QWORD PTR [32+rdi], 2                         ;1437.14
$LN1882:
        call      for_cpstr                                     ;1437.14
$LN1883:
                                ; LOE rax rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.118::                       ; Preds .B7.69
                                ; Execution count [1.05e-001]: Infreq
$LN1884:
        test      eax, eax                                      ;1437.14
$LN1885:
        jne       .B7.72        ; Prob 18%                      ;1437.14
$LN1886:
                                ; LOE rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.70::                        ; Preds .B7.118
                                ; Execution count [8.65e-002]: Infreq
$LN1887:
        mov       edx, 128                                      ;1438.24
$LN1888:
        lea       rdi, QWORD PTR [1072+rbp]                     ;1438.24
$LN1889:
        mov       rcx, rdi                                      ;1438.24
$LN1890:
        lea       r8, QWORD PTR [1328+rbp]                      ;1438.24
$LN1891:
        mov       r9, rdx                                       ;1438.24
$LN1892:
        call      for_trim                                      ;1438.24
$LN1893:
                                ; LOE rbx rdi r12 r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.71::                        ; Preds .B7.70
                                ; Execution count [8.65e-002]: Infreq
$LN1894:
        mov       r11, rsp                                      ;1438.3
$LN1895:
        lea       rcx, QWORD PTR [1456+rbp]                     ;1438.3
$LN1896:
        mov       r8, 01208384ff00H                             ;1438.3
$LN1897:
        lea       r9, QWORD PTR [__STRLITPACK_236.0.10]         ;1438.3
$LN1898:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;1438.3
$LN1899:
        lea       r10, QWORD PTR [WRITESWIMLOG$format_pack.0.10] ;1438.3
$LN1900:
        movsxd    rax, eax                                      ;1438.24
$LN1901:
        mov       QWORD PTR [56+rcx], rdi                       ;1438.3
$LN1902:
        lea       rdi, QWORD PTR [1504+rbp]                     ;1438.3
$LN1903:
        mov       QWORD PTR [rcx], 0                            ;1438.3
$LN1904:
        mov       QWORD PTR [48+rcx], rax                       ;1438.3
$LN1905:
        mov       QWORD PTR [32+r11], rdi                       ;1438.3
$LN1906:
        mov       QWORD PTR [40+r11], r10                       ;1438.3
$LN1907:
        call      for_write_seq_fmt                             ;1438.3
$LN1908:
        jmp       .B7.67        ; Prob 100%                     ;1438.3
$LN1909:
                                ; LOE rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.72::                        ; Preds .B7.118
                                ; Execution count [1.90e-002]: Infreq
$LN1910:
        mov       edi, DWORD PTR [rbp]                          ;995.1
$LN1911:
        test      edi, edi                                      ;995.22
$LN1912:
        je        .B7.75        ; Prob 50%                      ;995.22
$LN1913:
                                ; LOE rbx r12 r14 r15 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.73::                        ; Preds .B7.72
                                ; Execution count [9.49e-003]: Infreq
$LN1914:
        mov       r13, rsp                                      ;997.3
$LN1915:
        lea       rcx, QWORD PTR [864+rbp]                      ;997.3
$LN1916:
        mov       r8, 01208384ff00H                             ;997.3
$LN1917:
        lea       r9, QWORD PTR [__STRLITPACK_187.0.2]          ;997.3
$LN1918:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;997.3
$LN1919:
        lea       r10, QWORD PTR [__STRLITPACK_185]             ;997.3
$LN1920:
        mov       DWORD PTR [464+rbx], edi                      ;996.3
$LN1921:
        lea       r11, QWORD PTR [1040+rbp]                     ;997.3
$LN1922:
        mov       QWORD PTR [rcx], 0                            ;997.3
$LN1923:
        mov       QWORD PTR [r11], 25                           ;997.3
$LN1924:
        mov       QWORD PTR [8+r11], r10                        ;997.3
$LN1925:
        mov       QWORD PTR [32+r13], r11                       ;997.3
$LN1926:
        call      for_write_seq_lis                             ;997.3
$LN1927:
                                ; LOE rbx r12 r14 r15 esi edi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.74::                        ; Preds .B7.73
                                ; Execution count [9.49e-003]: Infreq
$LN1928:
        lea       rdx, QWORD PTR [__STRLITPACK_188.0.2]         ;997.3
$LN1929:
        lea       rcx, QWORD PTR [864+rbp]                      ;997.3
$LN1930:
        mov       DWORD PTR [472+rbp], edi                      ;997.3
$LN1931:
        lea       r8, QWORD PTR [472+rbp]                       ;997.3
$LN1932:
        call      for_write_seq_lis_xmit                        ;997.3
$LN1933:
        jmp       .B7.77        ; Prob 100%                     ;997.3
$LN1934:
                                ; LOE rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.75::                        ; Preds .B7.72
                                ; Execution count [9.49e-003]: Infreq
$LN1935:
        mov       r11, rsp                                      ;999.3
$LN1936:
        lea       rcx, QWORD PTR [864+rbp]                      ;999.3
$LN1937:
        mov       r8, 01208384ff00H                             ;999.3
$LN1938:
        lea       r9, QWORD PTR [__STRLITPACK_189.0.2]          ;999.3
$LN1939:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;999.3
$LN1940:
        lea       rdi, QWORD PTR [__STRLITPACK_183]             ;999.3
$LN1941:
        mov       QWORD PTR [rcx], 0                            ;999.3
$LN1942:
        lea       r10, QWORD PTR [1056+rbp]                     ;999.3
$LN1943:
        mov       QWORD PTR [r10], 23                           ;999.3
$LN1944:
        mov       QWORD PTR [8+r10], rdi                        ;999.3
$LN1945:
        mov       QWORD PTR [32+r11], r10                       ;999.3
$LN1946:
        call      for_write_seq_lis                             ;999.3
$LN1947:
                                ; LOE rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.76::                        ; Preds .B7.75
                                ; Execution count [9.49e-003]: Infreq
$LN1948:
        mov       DWORD PTR [464+rbx], 99                       ;1000.3
$LN1949:
                                ; LOE rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.77::                        ; Preds .B7.74 .B7.76
                                ; Execution count [1.90e-002]: Infreq
$LN1950:
        mov       eax, 11                                       ;1002.17
$LN1951:
        mov       rdi, rsp                                      ;1002.1
$LN1952:
        mov       rax, 16                                       ;1002.17
$LN1953:
        sub       rsp, rax                                      ;1002.17
$LN1954:
        lea       rax, QWORD PTR [48+rsp]                       ;1002.17
$LN1955:
                                ; LOE rax rbx rdi r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.121::                       ; Preds .B7.77
                                ; Execution count [1.90e-002]: Infreq
$LN1956:
        mov       r13, rax                                      ;1002.17
$LN1957:
        mov       edx, 11                                       ;1002.12
$LN1958:
        mov       rcx, r13                                      ;1002.12
$LN1959:
        lea       r8, QWORD PTR [__STRLITPACK_225]              ;1002.12
$LN1960:
        mov       r9, rdx                                       ;1002.12
$LN1961:
        call      for_trim                                      ;1002.12
$LN1962:
                                ; LOE rbx rdi r12 r13 r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.78::                        ; Preds .B7.121
                                ; Execution count [1.90e-002]: Infreq
$LN1963:
        mov       QWORD PTR [992+rbp], r13                      ;1002.25
$LN1964:
        lea       r13, QWORD PTR [912+rbp]                      ;1002.32
$LN1965:
        mov       edx, 80                                       ;1002.32
$LN1966:
        mov       rcx, r13                                      ;1002.32
$LN1967:
        mov       r9, rdx                                       ;1002.32
$LN1968:
        lea       r8, QWORD PTR [392+rbp]                       ;1002.32
$LN1969:
        movsxd    rax, eax                                      ;1002.12
$LN1970:
        lea       r10, QWORD PTR [__STRLITPACK_182]             ;1002.25
$LN1971:
        mov       QWORD PTR [88+r13], rax                       ;1002.25
$LN1972:
        mov       QWORD PTR [96+r13], r10                       ;1002.25
$LN1973:
        mov       QWORD PTR [104+r13], 1                        ;1002.25
$LN1974:
        call      for_trim                                      ;1002.32
$LN1975:
                                ; LOE rbx rdi r12 r13 r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.79::                        ; Preds .B7.78
                                ; Execution count [1.90e-002]: Infreq
$LN1976:
        mov       edx, 3                                        ;1002.1
$LN1977:
        lea       rcx, QWORD PTR [992+rbp]                      ;1002.1
$LN1978:
        mov       r8, rbx                                       ;1002.1
$LN1979:
        mov       r9d, 80                                       ;1002.1
$LN1980:
        movsxd    rax, eax                                      ;1002.32
$LN1981:
        mov       QWORD PTR [32+rcx], r13                       ;1002.30
$LN1982:
        mov       QWORD PTR [40+rcx], rax                       ;1002.30
$LN1983:
        call      for_concat                                    ;1002.1
$LN1984:
                                ; LOE rbx rdi r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.80::                        ; Preds .B7.79
                                ; Execution count [1.90e-002]: Infreq
$LN1985:
        mov       rax, rdi                                      ;1002.1
$LN1986:
        mov       rsp, rax                                      ;1002.1
$LN1987:
                                ; LOE rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.124::                       ; Preds .B7.80
                                ; Execution count [1.90e-002]: Infreq
$LN1988:
        mov       edx, 128                                      ;1003.12
$LN1989:
        lea       rcx, QWORD PTR [480+rbp]                      ;1003.12
$LN1990:
        mov       r9, rdx                                       ;1003.12
$LN1991:
        lea       r8, QWORD PTR [8+rbp]                         ;1003.12
$LN1992:
        call      for_trim                                      ;1003.12
$LN1993:
                                ; LOE rbx r12 r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.81::                        ; Preds .B7.124
                                ; Execution count [1.90e-002]: Infreq
$LN1994:
        mov       rdi, rsp                                      ;1003.1
$LN1995:
        lea       rcx, QWORD PTR [80+rbx]                       ;1003.1
$LN1996:
        movsxd    rax, eax                                      ;1003.1
$LN1997:
        mov       edx, 128                                      ;1003.1
$LN1998:
        mov       r9, rax                                       ;1003.1
$LN1999:
        lea       r8, QWORD PTR [480+rbp]                       ;1003.1
$LN2000:
        mov       QWORD PTR [32+rdi], 0                         ;1003.1
$LN2001:
        call      for_cpystr                                    ;1003.1
$LN2002:
                                ; LOE rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.82::                        ; Preds .B7.81
                                ; Execution count [1.90e-002]: Infreq
$LN2003:
        mov       edx, 128                                      ;1004.12
$LN2004:
        lea       rcx, QWORD PTR [608+rbp]                      ;1004.12
$LN2005:
        mov       r9, rdx                                       ;1004.12
$LN2006:
        lea       r8, QWORD PTR [136+rbp]                       ;1004.12
$LN2007:
        call      for_trim                                      ;1004.12
$LN2008:
                                ; LOE rbx r12 r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.83::                        ; Preds .B7.82
                                ; Execution count [1.90e-002]: Infreq
$LN2009:
        mov       rdi, rsp                                      ;1004.1
$LN2010:
        lea       rcx, QWORD PTR [208+rbx]                      ;1004.1
$LN2011:
        movsxd    rax, eax                                      ;1004.1
$LN2012:
        mov       edx, 128                                      ;1004.1
$LN2013:
        mov       r9, rax                                       ;1004.1
$LN2014:
        lea       r8, QWORD PTR [608+rbp]                       ;1004.1
$LN2015:
        mov       QWORD PTR [32+rdi], 0                         ;1004.1
$LN2016:
        call      for_cpystr                                    ;1004.1
$LN2017:
                                ; LOE rbx r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.84::                        ; Preds .B7.83
                                ; Execution count [1.90e-002]: Infreq
$LN2018:
        mov       edx, 128                                      ;1005.12
$LN2019:
        lea       rcx, QWORD PTR [736+rbp]                      ;1005.12
$LN2020:
        mov       r9, rdx                                       ;1005.12
$LN2021:
        lea       r8, QWORD PTR [264+rbp]                       ;1005.12
$LN2022:
        call      for_trim                                      ;1005.12
$LN2023:
                                ; LOE rbx r12 r14 r15 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.85::                        ; Preds .B7.84
                                ; Execution count [1.90e-002]: Infreq
$LN2024:
        mov       rdi, rsp                                      ;1005.1
$LN2025:
        add       rbx, 336                                      ;1005.1
$LN2026:
        movsxd    rax, eax                                      ;1005.1
$LN2027:
        mov       rcx, rbx                                      ;1005.1
$LN2028:
        mov       edx, 128                                      ;1005.1
$LN2029:
        lea       r8, QWORD PTR [736+rbp]                       ;1005.1
$LN2030:
        mov       r9, rax                                       ;1005.1
$LN2031:
        mov       QWORD PTR [32+rdi], 0                         ;1005.1
$LN2032:
        call      for_cpystr                                    ;1005.1
$LN2033:
                                ; LOE r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.86::                        ; Preds .B7.85
                                ; Execution count [1.90e-002]: Infreq
$LN2034:
        mov       rax, r12                                      ;1008.1
$LN2035:
        mov       rsp, rax                                      ;1008.1
$LN2036:
        jmp       .B7.39        ; Prob 100%                     ;1008.1
$LN2037:
                                ; LOE r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.87::                        ; Preds .B7.22
                                ; Execution count [1.08e-001]: Infreq
$LN2038:
        cmp       r8, 4                                         ;1306.1
$LN2039:
        jl        .B7.95        ; Prob 10%                      ;1306.1
$LN2040:
                                ; LOE rcx rbx r8 r12 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.88::                        ; Preds .B7.87
                                ; Execution count [1.08e-001]: Infreq
$LN2041:
        mov       rdx, r8                                       ;1306.1
$LN2042:
        and       rdx, -4                                       ;1306.1
$LN2043:
        pxor      xmm0, xmm0                                    ;1306.1
$LN2044:
                                ; LOE rdx rcx rbx r8 r12 r14 r15 esi xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.89::                        ; Preds .B7.89 .B7.88
                                ; Execution count [6.01e-001]: Infreq
$LN2045:
        movdqu    XMMWORD PTR [rcx+r12*4], xmm0                 ;1306.1
$LN2046:
        add       r12, 4                                        ;1306.1
$LN2047:
        cmp       r12, rdx                                      ;1306.1
$LN2048:
        jb        .B7.89        ; Prob 82%                      ;1306.1
$LN2049:
                                ; LOE rdx rcx rbx r8 r12 r14 r15 esi xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.91::                        ; Preds .B7.89 .B7.95
                                ; Execution count [1.20e-001]: Infreq
$LN2050:
        cmp       rdx, r8                                       ;1306.1
$LN2051:
        jae       .B7.24        ; Prob 10%                      ;1306.1
$LN2052:
                                ; LOE rdx rcx rbx r8 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.93::                        ; Preds .B7.91 .B7.93
                                ; Execution count [6.01e-001]: Infreq
$LN2053:
        mov       DWORD PTR [rcx+rdx*4], 0                      ;1306.1
$LN2054:
        inc       rdx                                           ;1306.1
$LN2055:
        cmp       rdx, r8                                       ;1306.1
$LN2056:
        jb        .B7.93        ; Prob 82%                      ;1306.1
$LN2057:
        jmp       .B7.24        ; Prob 100%                     ;1306.1
$LN2058:
                                ; LOE rdx rcx rbx r8 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.95::                        ; Preds .B7.87
                                ; Execution count [1.08e-002]: Infreq
$LN2059:
        mov       rdx, r12                                      ;1306.1
$LN2060:
        jmp       .B7.91        ; Prob 100%                     ;1306.1
$LN2061:
        ALIGN     16
$LN2062:
                                ; LOE rdx rcx rbx r8 r14 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B7.96::
$LN2063:
; mark_end;
SETMETGRID ENDP
$LNSETMETGRID$2064:
$LNSETMETGRID$2065:
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SETMETGRID.B1_B95	DD	889787393
	DD	17761044
	DD	3490185417
	DD	1879359494
	DD	805462019
	DD	20481
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SETMETGRID.B1_B95	DD	imagerel .B7.1
	DD	imagerel .B7.96
	DD	imagerel .unwind.SETMETGRID.B1_B95
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.40_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.35	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DB 3 DUP ( 0H)	; pad
.2.40_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_size_0.36	DD	0000001d4H,000000000H
.2.40_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.40_2__kmpc_loc_pack.19
.2.40_2__kmpc_loc_pack.19	DB	59
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
	DB	77
	DB	69
	DB	84
	DB	71
	DB	82
	DB	73
	DB	68
	DB	59
	DB	49
	DB	50
	DB	55
	DB	49
	DB	59
	DB	49
	DB	50
	DB	55
	DB	49
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.40_2_kmpc_loc_struct_pack.28	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.40_2__kmpc_loc_pack.27
.2.40_2__kmpc_loc_pack.27	DB	59
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
	DB	77
	DB	69
	DB	84
	DB	71
	DB	82
	DB	73
	DB	68
	DB	59
	DB	49
	DB	50
	DB	55
	DB	49
	DB	59
	DB	49
	DB	51
	DB	53
	DB	49
	DB	59
	DB	59
_DATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  SETMETGRID
_TEXT	SEGMENT      'CODE'
_2__routine_start_INIT_MET_PARAMS_7:
; -- Begin  INIT_MET_PARAMS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC INIT_MET_PARAMS
; --- INIT_MET_PARAMS
INIT_MET_PARAMS	PROC 
.B8.1::                         ; Preds .B8.0
                                ; Execution count [0.00e+000]
L56::
                                                          ;1212.12
$LN2066:
        push      r13                                           ;1212.12
$LN2067:
        push      r14                                           ;1212.12
$LN2068:
        sub       rsp, 72                                       ;1212.12
$LN2069:
        lea       rcx, QWORD PTR [.2.41_2_kmpc_loc_struct_pack.12] ;1212.12
$LN2070:
        movups    XMMWORD PTR [48+rsp], xmm6                    ;1212.12[spill]
$LN2071:
        call      __kmpc_global_thread_num                      ;1212.12
$LN2072:
                                ; LOE rbx rbp rsi rdi r12 r15 eax xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.14::                        ; Preds .B8.1
                                ; Execution count [0.00e+000]
$LN2073:
        mov       r8, QWORD PTR [.2.41_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_cache_0.27] ;1212.12
$LN2074:
        test      r8, r8                                        ;1212.12
$LN2075:
        je        .B8.3         ; Prob 50%                      ;1212.12
$LN2076:
                                ; LOE rbx rbp rsi rdi r8 r12 r15 eax xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.2::                         ; Preds .B8.14
                                ; Execution count [0.00e+000]
$LN2077:
        lea       ecx, DWORD PTR [rax*8]                        ;1212.12
$LN2078:
        movsxd    rcx, ecx                                      ;1212.12
$LN2079:
        mov       r13, QWORD PTR [rcx+r8]                       ;1212.12
$LN2080:
        test      r13, r13                                      ;1212.12
$LN2081:
        jne       .B8.5         ; Prob 50%                      ;1212.12
$LN2082:
                                ; LOE rbx rbp rsi rdi r12 r13 r15 eax xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.3::                         ; Preds .B8.2 .B8.14
                                ; Execution count [0.00e+000]
$LN2083:
        mov       r11, rsp                                      ;1212.12
$LN2084:
        lea       rcx, QWORD PTR [.2.41_2_kmpc_loc_struct_pack.20] ;1212.12
$LN2085:
        lea       r8, QWORD PTR [MET_PUF]                       ;1212.12
$LN2086:
        mov       edx, eax                                      ;1212.12
$LN2087:
        mov       r9, QWORD PTR [.2.41_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_size_0.28] ;1212.12
$LN2088:
        lea       r10, QWORD PTR [.2.41_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_cache_0.27] ;1212.12
$LN2089:
        mov       QWORD PTR [32+r11], r10                       ;1212.12
$LN2090:
        call      __kmpc_threadprivate_cached                   ;1212.12
$LN2091:
                                ; LOE rax rbx rbp rsi rdi r12 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.15::                        ; Preds .B8.3
                                ; Execution count [0.00e+000]
$LN2092:
        mov       r13, rax                                      ;1212.12
$LN2093:
                                ; LOE rbx rbp rsi rdi r12 r13 r15 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.5::                         ; Preds .B8.15 .B8.2
                                ; Execution count [1.00e+000]
$LN2094:
        mov       r10, rsp                                      ;1233.1
$LN2095:
        lea       rcx, QWORD PTR [MET_FI_mp_MET_TYPE]           ;1233.1
$LN2096:
        movss     xmm6, DWORD PTR [_2il0floatpacket.14]         ;1222.1
$LN2097:
        mov       edx, 80                                       ;1233.1
$LN2098:
        mov       eax, DWORD PTR [MET_FI_mp_MCTYPEPRJ]          ;1230.1
$LN2099:
        lea       r8, QWORD PTR [__STRLITPACK_220]              ;1233.1
$LN2100:
        mov       r9d, 64                                       ;1233.1
$LN2101:
        xor       r14d, r14d                                    ;1223.1
$LN2102:
        movss     DWORD PTR [MET_FI_mp_TBIN_MET], xmm6          ;1222.1
$LN2103:
        mov       DWORD PTR [MET_FI_mp_LUA], r14d               ;1223.1
$LN2104:
        mov       DWORD PTR [MET_FI_mp_LBL], r14d               ;1224.1
$LN2105:
        mov       DWORD PTR [MET_FI_mp_LENSM], r14d             ;1225.1
$LN2106:
        mov       DWORD PTR [MET_FI_mp_LSV_OPER], r14d          ;1226.1
$LN2107:
        mov       DWORD PTR [MET_FI_mp_LSFC], r14d              ;1227.1
$LN2108:
        mov       DWORD PTR [MET_FI_mp_LFORMAT], r14d           ;1228.1
$LN2109:
        mov       DWORD PTR [MET_FI_mp_LMC_UA], r14d            ;1229.1
$LN2110:
        mov       DWORD PTR [MET_FI_mp_MCTYPEMET], eax          ;1230.1
$LN2111:
        mov       DWORD PTR [MET_FI_mp_LOCAL_MET], r14d         ;1231.1
$LN2112:
        movss     DWORD PTR [MET_FI_mp_SL_HAZ], xmm6            ;1232.1
$LN2113:
        mov       QWORD PTR [32+r10], 0                         ;1233.1
$LN2114:
        call      for_cpystr                                    ;1233.1
$LN2115:
                                ; LOE rbx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.6::                         ; Preds .B8.5
                                ; Execution count [1.00e+000]
$LN2116:
        mov       rax, rsp                                      ;1234.1
$LN2117:
        lea       rcx, QWORD PTR [MET_FI_mp_BL_TYPE]            ;1234.1
$LN2118:
        mov       edx, 80                                       ;1234.1
$LN2119:
        lea       r8, QWORD PTR [__STRLITPACK_220]              ;1234.1
$LN2120:
        mov       r9d, 64                                       ;1234.1
$LN2121:
        mov       QWORD PTR [32+rax], 0                         ;1234.1
$LN2122:
        call      for_cpystr                                    ;1234.1
$LN2123:
                                ; LOE rbx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.7::                         ; Preds .B8.6
                                ; Execution count [1.00e+000]
$LN2124:
        mov       rax, rsp                                      ;1235.1
$LN2125:
        lea       rcx, QWORD PTR [MET_FI_mp_ENSM_TYPE]          ;1235.1
$LN2126:
        mov       edx, 80                                       ;1235.1
$LN2127:
        lea       r8, QWORD PTR [__STRLITPACK_220]              ;1235.1
$LN2128:
        mov       r9d, 64                                       ;1235.1
$LN2129:
        mov       QWORD PTR [32+rax], 0                         ;1235.1
$LN2130:
        call      for_cpystr                                    ;1235.1
$LN2131:
                                ; LOE rbx rbp rsi rdi r12 r13 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.8::                         ; Preds .B8.7
                                ; Execution count [1.00e+000]
$LN2132:
        mov       rax, rsp                                      ;1246.1
$LN2133:
        lea       rcx, QWORD PTR [MET_FI_mp_PR_TYPE]            ;1246.1
$LN2134:
        mov       edx, 80                                       ;1246.1
$LN2135:
        lea       r8, QWORD PTR [__STRLITPACK_223]              ;1246.1
$LN2136:
        mov       r9d, 4                                        ;1246.1
$LN2137:
        movss     DWORD PTR [MET_FI_mp_ZIMIN], xmm6             ;1236.1
$LN2138:
        movss     DWORD PTR [MET_FI_mp_ZIMAX], xmm6             ;1237.1
$LN2139:
        movss     DWORD PTR [MET_FI_mp_HCONST], xmm6            ;1238.1
$LN2140:
        movss     DWORD PTR [MET_FI_mp_HDIUR], xmm6             ;1239.1
$LN2141:
        mov       DWORD PTR [MET_FI_mp_H_CNP], -1082130432      ;1240.1
$LN2142:
        mov       DWORD PTR [MET_FI_mp_ALPHA_CNP], r14d         ;1241.1
$LN2143:
        movss     DWORD PTR [r13], xmm6                         ;1242.1
$LN2144:
        movss     DWORD PTR [MET_FI_mp_BOWEN], xmm6             ;1243.1
$LN2145:
        movss     DWORD PTR [MET_FI_mp_ALBEDO], xmm6            ;1244.1
$LN2146:
        movss     DWORD PTR [MET_FI_mp_CLOUD_COVER], xmm6       ;1245.1
$LN2147:
        mov       QWORD PTR [32+rax], 0                         ;1246.1
$LN2148:
        call      for_cpystr                                    ;1246.1
$LN2149:
                                ; LOE rbx rbp rsi rdi r12 r15 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.9::                         ; Preds .B8.8
                                ; Execution count [1.00e+000]
$LN2150:
        mov       rax, rsp                                      ;1259.1
$LN2151:
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_MET]         ;1259.1
$LN2152:
        mov       edx, 256                                      ;1259.1
$LN2153:
        lea       r8, QWORD PTR [__STRLITPACK_222]              ;1259.1
$LN2154:
        mov       r9d, 1                                        ;1259.1
$LN2155:
        movss     DWORD PTR [MET_FI_mp_PR_RATE], xmm6           ;1247.1
$LN2156:
        movss     DWORD PTR [MET_FI_mp_TPRCP], xmm6             ;1248.1
$LN2157:
        movss     DWORD PTR [MET_FI_mp_TPRCPN], xmm6            ;1249.1
$LN2158:
        mov       DWORD PTR [FLAGS_FI_mp_LWASH], -1             ;1250.1
$LN2159:
        mov       DWORD PTR [MET_FI_mp_HMIN], r14d              ;1251.1
$LN2160:
        mov       DWORD PTR [MET_FI_mp_ALPHA_MIN], r14d         ;1252.1
$LN2161:
        mov       DWORD PTR [MET_FI_mp_ALPHA_MAX], 1065353216   ;1253.1
$LN2162:
        mov       DWORD PTR [MET_FI_mp_MAX_ITER_AC], 10000      ;1254.1
$LN2163:
        mov       DWORD PTR [MET_FI_mp_MAX_ITER], 30            ;1255.1
$LN2164:
        mov       DWORD PTR [MET_FI_mp_P_EPS], 925353388        ;1256.1
$LN2165:
        mov       DWORD PTR [MET_FI_mp_AC_EPS], 1008981770      ;1257.1
$LN2166:
        mov       DWORD PTR [MET_FI_mp_LOUT_MC], 0              ;1258.1
$LN2167:
        mov       QWORD PTR [32+rax], 0                         ;1259.1
$LN2168:
        call      for_cpystr                                    ;1259.1
$LN2169:
                                ; LOE rbx rbp rsi rdi r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.10::                        ; Preds .B8.9
                                ; Execution count [1.00e+000]
$LN2170:
        mov       rax, rsp                                      ;1260.1
$LN2171:
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_SFC]         ;1260.1
$LN2172:
        mov       edx, 256                                      ;1260.1
$LN2173:
        lea       r8, QWORD PTR [__STRLITPACK_221]              ;1260.1
$LN2174:
        mov       r9d, 1                                        ;1260.1
$LN2175:
        mov       QWORD PTR [32+rax], 0                         ;1260.1
$LN2176:
        call      for_cpystr                                    ;1260.1
$LN2177:
                                ; LOE rbx rbp rsi rdi r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B8.11::                        ; Preds .B8.10
                                ; Execution count [1.00e+000]
$LN2178:
        movss     DWORD PTR [MET_FI_mp_TOUT_MET], xmm6          ;1262.1
$LN2179:
        mov       eax, -1                                       ;1263.1
$LN2180:
        movups    xmm6, XMMWORD PTR [48+rsp]                    ;1267.1[spill]
$LN2181:
        mov       DWORD PTR [MET_FI_mp_LOUT_MET], 0             ;1261.1
$LN2182:
        mov       DWORD PTR [MET_FI_mp_LOUT_3D], eax            ;1263.1
$LN2183:
        mov       DWORD PTR [MET_FI_mp_LOUT_2D], eax            ;1264.1
$LN2184:
        add       rsp, 72                                       ;1267.1
$LN2185:
        pop       r14                                           ;1267.1
$LN2186:
        pop       r13                                           ;1267.1
$LN2187:
        ret                                                     ;1267.1
$LN2188:
        ALIGN     16
$LN2189:
                                ; LOE
.B8.12::
$LN2190:
; mark_end;
INIT_MET_PARAMS ENDP
$LNINIT_MET_PARAMS$2191:
$LNINIT_MET_PARAMS$2192:
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INIT_MET_PARAMS.B1_B11	DD	332801
	DD	223252
	DD	3758391816
	DD	53250
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INIT_MET_PARAMS.B1_B11	DD	imagerel .B8.1
	DD	imagerel .B8.12
	DD	imagerel .unwind.INIT_MET_PARAMS.B1_B11
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.41_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DB 1 DUP ( 0H)	; pad
.2.41_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_size_0.28	DD	00000012cH,000000000H
.2.41_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.41_2__kmpc_loc_pack.11
.2.41_2__kmpc_loc_pack.11	DB	59
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
	DB	77
	DB	69
	DB	84
	DB	95
	DB	80
	DB	65
	DB	82
	DB	65
	DB	77
	DB	83
	DB	59
	DB	49
	DB	50
	DB	49
	DB	50
	DB	59
	DB	49
	DB	50
	DB	49
	DB	50
	DB	59
	DB	59
.2.41_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.41_2__kmpc_loc_pack.19
.2.41_2__kmpc_loc_pack.19	DB	59
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
	DB	77
	DB	69
	DB	84
	DB	95
	DB	80
	DB	65
	DB	82
	DB	65
	DB	77
	DB	83
	DB	59
	DB	49
	DB	50
	DB	49
	DB	50
	DB	59
	DB	49
	DB	50
	DB	54
	DB	55
	DB	59
	DB	59
_DATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  INIT_MET_PARAMS
_TEXT	SEGMENT      'CODE'
_2__routine_start_CHECKHRESDEFAULT_8:
; -- Begin  CHECKHRESDEFAULT
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC CHECKHRESDEFAULT
; --- CHECKHRESDEFAULT
CHECKHRESDEFAULT	PROC 
; parameter 1(HRES): rcx
.B9.1::                         ; Preds .B9.0
                                ; Execution count [0.00e+000]
L64::
                                                          ;1074.12
$LN2193:
        push      r13                                           ;1074.12
$LN2194:
        push      r14                                           ;1074.12
$LN2195:
        sub       rsp, 56                                       ;1074.12
$LN2196:
        mov       r14, rcx                                      ;1074.12
$LN2197:
        lea       rcx, QWORD PTR [.2.42_2_kmpc_loc_struct_pack.12] ;1074.12
$LN2198:
        call      __kmpc_global_thread_num                      ;1074.12
$LN2199:
                                ; LOE rbx rbp rsi rdi r12 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.17::                        ; Preds .B9.1
                                ; Execution count [0.00e+000]
$LN2200:
        mov       r8, QWORD PTR [.2.42_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.27] ;1074.12
$LN2201:
        test      r8, r8                                        ;1074.12
$LN2202:
        je        .B9.3         ; Prob 50%                      ;1074.12
$LN2203:
                                ; LOE rbx rbp rsi rdi r8 r12 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.2::                         ; Preds .B9.17
                                ; Execution count [0.00e+000]
$LN2204:
        lea       ecx, DWORD PTR [rax*8]                        ;1074.12
$LN2205:
        movsxd    rcx, ecx                                      ;1074.12
$LN2206:
        mov       r13, QWORD PTR [rcx+r8]                       ;1074.12
$LN2207:
        test      r13, r13                                      ;1074.12
$LN2208:
        jne       .B9.5         ; Prob 50%                      ;1074.12
$LN2209:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.3::                         ; Preds .B9.2 .B9.17
                                ; Execution count [0.00e+000]
$LN2210:
        mov       r11, rsp                                      ;1074.12
$LN2211:
        lea       rcx, QWORD PTR [.2.42_2_kmpc_loc_struct_pack.20] ;1074.12
$LN2212:
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;1074.12
$LN2213:
        mov       edx, eax                                      ;1074.12
$LN2214:
        mov       r9, QWORD PTR [.2.42_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_size_0.28] ;1074.12
$LN2215:
        lea       r10, QWORD PTR [.2.42_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.27] ;1074.12
$LN2216:
        mov       QWORD PTR [32+r11], r10                       ;1074.12
$LN2217:
        call      __kmpc_threadprivate_cached                   ;1074.12
$LN2218:
                                ; LOE rax rbx rbp rsi rdi r12 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.18::                        ; Preds .B9.3
                                ; Execution count [0.00e+000]
$LN2219:
        mov       r13, rax                                      ;1074.12
$LN2220:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.5::                         ; Preds .B9.18 .B9.2
                                ; Execution count [1.00e+000]
$LN2221:
        movss     xmm0, DWORD PTR [r14]                         ;1083.1
$LN2222:
        ucomiss   xmm0, DWORD PTR [_2il0floatpacket.13]         ;1083.10
$LN2223:
        jp        .B9.6         ; Prob 0%                       ;1083.10
$LN2224:
        je        .B9.14        ; Prob 78%                      ;1083.10
$LN2225:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.6::                         ; Preds .B9.5
                                ; Execution count [2.16e-001]
$LN2226:
        mov       rax, rsp                                      ;1085.3
$LN2227:
        mov       rcx, r13                                      ;1085.3
$LN2228:
        mov       edx, 80                                       ;1085.3
$LN2229:
        lea       r8, QWORD PTR [__STRLITPACK_193]              ;1085.3
$LN2230:
        mov       r9d, 8                                        ;1085.3
$LN2231:
        mov       DWORD PTR [464+r13], 3                        ;1084.3
$LN2232:
        mov       QWORD PTR [32+rax], 0                         ;1085.3
$LN2233:
        call      for_cpystr                                    ;1085.3
$LN2234:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.7::                         ; Preds .B9.6
                                ; Execution count [2.16e-001]
$LN2235:
        mov       rax, rsp                                      ;1086.3
$LN2236:
        lea       rcx, QWORD PTR [80+r13]                       ;1086.3
$LN2237:
        mov       edx, 128                                      ;1086.3
$LN2238:
        lea       r8, QWORD PTR [__STRLITPACK_192]              ;1086.3
$LN2239:
        mov       r9d, 29                                       ;1086.3
$LN2240:
        mov       QWORD PTR [32+rax], 0                         ;1086.3
$LN2241:
        call      for_cpystr                                    ;1086.3
$LN2242:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.8::                         ; Preds .B9.7
                                ; Execution count [2.16e-001]
$LN2243:
        mov       rax, rsp                                      ;1087.3
$LN2244:
        lea       rcx, QWORD PTR [208+r13]                      ;1087.3
$LN2245:
        mov       edx, 128                                      ;1087.3
$LN2246:
        lea       r8, QWORD PTR [__STRLITPACK_191]              ;1087.3
$LN2247:
        mov       r9d, 40                                       ;1087.3
$LN2248:
        mov       QWORD PTR [32+rax], 0                         ;1087.3
$LN2249:
        call      for_cpystr                                    ;1087.3
$LN2250:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.9::                         ; Preds .B9.8
                                ; Execution count [2.16e-001]
$LN2251:
        mov       rax, rsp                                      ;1088.3
$LN2252:
        lea       rcx, QWORD PTR [336+r13]                      ;1088.3
$LN2253:
        mov       edx, 128                                      ;1088.3
$LN2254:
        lea       r8, QWORD PTR [__STRLITPACK_190]              ;1088.3
$LN2255:
        mov       r9d, 53                                       ;1088.3
$LN2256:
        mov       QWORD PTR [32+rax], 0                         ;1088.3
$LN2257:
        call      for_cpystr                                    ;1088.3
$LN2258:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.10::                        ; Preds .B9.9
                                ; Execution count [2.16e-001]
$LN2259:
        lea       rcx, QWORD PTR [__NLITPACK_3.0.5]             ;1089.8
$LN2260:
        call      WARNINGMESSAGE                                ;1089.8
$LN2261:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.11::                        ; Preds .B9.10
                                ; Execution count [2.16e-001]
$LN2262:
        cmp       DWORD PTR [464+r13], 0                        ;1090.14
$LN2263:
        je        .B9.13        ; Prob 38%                      ;1090.14
$LN2264:
                                ; LOE rbx rbp rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.12::                        ; Preds .B9.11
                                ; Execution count [1.34e-001]
$LN2265:
        mov       DWORD PTR [464+r13], 10                       ;1091.5
$LN2266:
        add       rsp, 56                                       ;1091.5
$LN2267:
        pop       r14                                           ;1091.5
$LN2268:
        pop       r13                                           ;1091.5
$LN2269:
        ret                                                     ;1091.5
$LN2270:
                                ; LOE rbx rbp rsi rdi r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.13::                        ; Preds .B9.11
                                ; Execution count [8.23e-002]
$LN2271:
        movss     xmm0, DWORD PTR [_2il0floatpacket.13]         ;1094.5
$LN2272:
        movss     DWORD PTR [r14], xmm0                         ;1094.5
$LN2273:
                                ; LOE rbx rbp rsi rdi r12 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B9.14::                        ; Preds .B9.5 .B9.13
                                ; Execution count [1.00e+000]
$LN2274:
        add       rsp, 56                                       ;1101.1
$LN2275:
        pop       r14                                           ;1101.1
$LN2276:
        pop       r13                                           ;1101.1
$LN2277:
        ret                                                     ;1101.1
$LN2278:
        ALIGN     16
$LN2279:
                                ; LOE
.B9.15::
$LN2280:
; mark_end;
CHECKHRESDEFAULT ENDP
$LNCHECKHRESDEFAULT$2281:
$LNCHECKHRESDEFAULT$2282:
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.CHECKHRESDEFAULT.B1_B14	DD	198657
	DD	3758383624
	DD	53250
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.CHECKHRESDEFAULT.B1_B14	DD	imagerel .B9.1
	DD	imagerel .B9.15
	DD	imagerel .unwind.CHECKHRESDEFAULT.B1_B14
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.42_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
.2.42_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_size_0.28	DD	0000001d4H,000000000H
.2.42_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.42_2__kmpc_loc_pack.11
.2.42_2__kmpc_loc_pack.11	DB	59
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
	DB	72
	DB	82
	DB	69
	DB	83
	DB	68
	DB	69
	DB	70
	DB	65
	DB	85
	DB	76
	DB	84
	DB	59
	DB	49
	DB	48
	DB	55
	DB	52
	DB	59
	DB	49
	DB	48
	DB	55
	DB	52
	DB	59
	DB	59
	DB 3 DUP ( 0H)	; pad
.2.42_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.42_2__kmpc_loc_pack.19
.2.42_2__kmpc_loc_pack.19	DB	59
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
	DB	72
	DB	82
	DB	69
	DB	83
	DB	68
	DB	69
	DB	70
	DB	65
	DB	85
	DB	76
	DB	84
	DB	59
	DB	49
	DB	48
	DB	55
	DB	52
	DB	59
	DB	49
	DB	49
	DB	48
	DB	49
	DB	59
	DB	59
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
	DB 2 DUP ( 0H)	; pad
__NLITPACK_3.0.5	DD	-1
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  CHECKHRESDEFAULT
_TEXT	SEGMENT      'CODE'
_2__routine_start_SETSWIMERROR_9:
; -- Begin  SETSWIMERROR
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC SETSWIMERROR
; --- SETSWIMERROR
SETSWIMERROR	PROC 
; parameter 1(ROUTINE): rcx
; parameter 2(.tmp..T1589__V$a88): rdx
.B10.1::                        ; Preds .B10.0
                                ; Execution count [0.00e+000]
L71::
                                                          ;979.12
$LN2283:
        push      rbp                                           ;979.12
$LN2284:
        push      rdi                                           ;979.12
$LN2285:
        push      r12                                           ;979.12
$LN2286:
        push      r13                                           ;979.12
$LN2287:
        push      r14                                           ;979.12
$LN2288:
        push      r15                                           ;979.12
$LN2289:
        sub       rsp, 1576                                     ;979.12
$LN2290:
        lea       rbp, QWORD PTR [48+rsp]                       ;979.12
$LN2291:
        mov       r13, rcx                                      ;979.12
$LN2292:
        lea       rcx, QWORD PTR [.2.43_2_kmpc_loc_struct_pack.12] ;979.12
$LN2293:
        mov       r12, rdx                                      ;979.12
$LN2294:
        call      __kmpc_global_thread_num                      ;979.12
$LN2295:
                                ; LOE rbx rsi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.29::                       ; Preds .B10.1
                                ; Execution count [0.00e+000]
$LN2296:
        mov       rdi, QWORD PTR [.2.43_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.27] ;979.12
$LN2297:
        test      rdi, rdi                                      ;979.12
$LN2298:
        je        .B10.3        ; Prob 50%                      ;979.12
$LN2299:
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.2::                        ; Preds .B10.29
                                ; Execution count [0.00e+000]
$LN2300:
        lea       ecx, DWORD PTR [rax*8]                        ;979.12
$LN2301:
        movsxd    rcx, ecx                                      ;979.12
$LN2302:
        mov       rdi, QWORD PTR [rdi+rcx]                      ;979.12
$LN2303:
        test      rdi, rdi                                      ;979.12
$LN2304:
        jne       .B10.5        ; Prob 50%                      ;979.12
$LN2305:
                                ; LOE rbx rsi rdi r12 r13 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.3::                        ; Preds .B10.2 .B10.29
                                ; Execution count [0.00e+000]
$LN2306:
        mov       r10, rsp                                      ;979.12
$LN2307:
        lea       rcx, QWORD PTR [.2.43_2_kmpc_loc_struct_pack.20] ;979.12
$LN2308:
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;979.12
$LN2309:
        mov       edx, eax                                      ;979.12
$LN2310:
        mov       r9, QWORD PTR [.2.43_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_size_0.28] ;979.12
$LN2311:
        lea       rdi, QWORD PTR [.2.43_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.27] ;979.12
$LN2312:
        mov       QWORD PTR [32+r10], rdi                       ;979.12
$LN2313:
        call      __kmpc_threadprivate_cached                   ;979.12
$LN2314:
                                ; LOE rax rbx rsi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.30::                       ; Preds .B10.3
                                ; Execution count [0.00e+000]
$LN2315:
        mov       rdi, rax                                      ;979.12
$LN2316:
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.5::                        ; Preds .B10.30 .B10.2
                                ; Execution count [1.00e+000]
$LN2317:
        lea       rcx, QWORD PTR [rbp]                          ;991.6
$LN2318:
        call      SWIMREPORTERROR                               ;991.6
$LN2319:
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.6::                        ; Preds .B10.10 .B10.5
                                ; Execution count [5.56e+000]
$LN2320:
        mov       edx, 128                                      ;1436.12
$LN2321:
        lea       rcx, QWORD PTR [1200+rbp]                     ;1436.12
$LN2322:
        call      SWIMGETLOGMESSAGE                             ;1436.12
$LN2323:
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.7::                        ; Preds .B10.6
                                ; Execution count [5.56e+000]
$LN2324:
        mov       r10d, 128                                     ;1436.3
$LN2325:
                                ; LOE rbx rsi rdi r10 r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.28::                       ; Preds .B10.28 .B10.7
                                ; Execution count [1.11e+001]
$LN2326:
        movups    xmm0, XMMWORD PTR [1184+rbp+r10]              ;1436.3
$LN2327:
        movups    xmm1, XMMWORD PTR [1168+rbp+r10]              ;1436.3
$LN2328:
        movups    xmm2, XMMWORD PTR [1152+rbp+r10]              ;1436.3
$LN2329:
        movups    xmm3, XMMWORD PTR [1136+rbp+r10]              ;1436.3
$LN2330:
        movups    XMMWORD PTR [1312+rbp+r10], xmm0              ;1436.3
$LN2331:
        movups    XMMWORD PTR [1296+rbp+r10], xmm1              ;1436.3
$LN2332:
        movups    XMMWORD PTR [1280+rbp+r10], xmm2              ;1436.3
$LN2333:
        movups    XMMWORD PTR [1264+rbp+r10], xmm3              ;1436.3
$LN2334:
        sub       r10, 64                                       ;1436.3
$LN2335:
        jne       .B10.28       ; Prob 50%                      ;1436.3
$LN2336:
                                ; LOE rbx rsi rdi r10 r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.8::                        ; Preds .B10.28
                                ; Execution count [5.56e+000]
$LN2337:
        mov       r10, rsp                                      ;1437.14
$LN2338:
        lea       rcx, QWORD PTR [1328+rbp]                     ;1437.14
$LN2339:
        mov       edx, 128                                      ;1437.14
$LN2340:
        lea       r8, QWORD PTR [1520+rbp]                      ;1437.14
$LN2341:
        mov       r9d, 1                                        ;1437.14
$LN2342:
        mov       BYTE PTR [r8], 0                              ;1437.17
$LN2343:
        mov       QWORD PTR [32+r10], 2                         ;1437.14
$LN2344:
        call      for_cpstr                                     ;1437.14
$LN2345:
                                ; LOE rax rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.31::                       ; Preds .B10.8
                                ; Execution count [5.56e+000]
$LN2346:
        test      eax, eax                                      ;1437.14
$LN2347:
        jne       .B10.11       ; Prob 18%                      ;1437.14
$LN2348:
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.9::                        ; Preds .B10.31
                                ; Execution count [4.56e+000]
$LN2349:
        mov       edx, 128                                      ;1438.24
$LN2350:
        lea       r14, QWORD PTR [1072+rbp]                     ;1438.24
$LN2351:
        mov       rcx, r14                                      ;1438.24
$LN2352:
        lea       r8, QWORD PTR [1328+rbp]                      ;1438.24
$LN2353:
        mov       r9, rdx                                       ;1438.24
$LN2354:
        call      for_trim                                      ;1438.24
$LN2355:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.10::                       ; Preds .B10.9
                                ; Execution count [4.56e+000]
$LN2356:
        mov       QWORD PTR [1512+rbp], r14                     ;1438.3
$LN2357:
        mov       r14, rsp                                      ;1438.3
$LN2358:
        mov       r8, 01208384ff00H                             ;1438.3
$LN2359:
        lea       rcx, QWORD PTR [1456+rbp]                     ;1438.3
$LN2360:
        lea       r9, QWORD PTR [__STRLITPACK_236.0.10]         ;1438.3
$LN2361:
        lea       r10, QWORD PTR [1504+rbp]                     ;1438.3
$LN2362:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;1438.3
$LN2363:
        lea       r11, QWORD PTR [WRITESWIMLOG$format_pack.0.10] ;1438.3
$LN2364:
        movsxd    rax, eax                                      ;1438.24
$LN2365:
        mov       QWORD PTR [rcx], 0                            ;1438.3
$LN2366:
        mov       QWORD PTR [48+rcx], rax                       ;1438.3
$LN2367:
        mov       QWORD PTR [32+r14], r10                       ;1438.3
$LN2368:
        mov       QWORD PTR [40+r14], r11                       ;1438.3
$LN2369:
        call      for_write_seq_fmt                             ;1438.3
$LN2370:
        jmp       .B10.6        ; Prob 100%                     ;1438.3
$LN2371:
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.11::                       ; Preds .B10.31
                                ; Execution count [1.00e+000]: Infreq
$LN2372:
        mov       r14d, DWORD PTR [rbp]                         ;995.1
$LN2373:
        test      r14d, r14d                                    ;995.22
$LN2374:
        je        .B10.14       ; Prob 50%                      ;995.22
$LN2375:
                                ; LOE rbx rsi rdi r12 r13 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.12::                       ; Preds .B10.11
                                ; Execution count [5.00e-001]: Infreq
$LN2376:
        mov       r15, rsp                                      ;997.3
$LN2377:
        lea       rcx, QWORD PTR [864+rbp]                      ;997.3
$LN2378:
        mov       r8, 01208384ff00H                             ;997.3
$LN2379:
        lea       r9, QWORD PTR [__STRLITPACK_187.0.2]          ;997.3
$LN2380:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;997.3
$LN2381:
        lea       r10, QWORD PTR [__STRLITPACK_185]             ;997.3
$LN2382:
        mov       DWORD PTR [464+rdi], r14d                     ;996.3
$LN2383:
        lea       r11, QWORD PTR [1040+rbp]                     ;997.3
$LN2384:
        mov       QWORD PTR [rcx], 0                            ;997.3
$LN2385:
        mov       QWORD PTR [r11], 25                           ;997.3
$LN2386:
        mov       QWORD PTR [8+r11], r10                        ;997.3
$LN2387:
        mov       QWORD PTR [32+r15], r11                       ;997.3
$LN2388:
        call      for_write_seq_lis                             ;997.3
$LN2389:
                                ; LOE rbx rsi rdi r12 r13 r14d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.13::                       ; Preds .B10.12
                                ; Execution count [5.00e-001]: Infreq
$LN2390:
        lea       rdx, QWORD PTR [__STRLITPACK_188.0.2]         ;997.3
$LN2391:
        lea       rcx, QWORD PTR [864+rbp]                      ;997.3
$LN2392:
        mov       DWORD PTR [472+rbp], r14d                     ;997.3
$LN2393:
        lea       r8, QWORD PTR [472+rbp]                       ;997.3
$LN2394:
        call      for_write_seq_lis_xmit                        ;997.3
$LN2395:
        jmp       .B10.16       ; Prob 100%                     ;997.3
$LN2396:
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.14::                       ; Preds .B10.11
                                ; Execution count [5.00e-001]: Infreq
$LN2397:
        mov       r14, rsp                                      ;999.3
$LN2398:
        lea       rcx, QWORD PTR [864+rbp]                      ;999.3
$LN2399:
        mov       r8, 01208384ff00H                             ;999.3
$LN2400:
        lea       r9, QWORD PTR [__STRLITPACK_189.0.2]          ;999.3
$LN2401:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_LOG]          ;999.3
$LN2402:
        lea       r10, QWORD PTR [__STRLITPACK_183]             ;999.3
$LN2403:
        mov       QWORD PTR [rcx], 0                            ;999.3
$LN2404:
        lea       r11, QWORD PTR [1056+rbp]                     ;999.3
$LN2405:
        mov       QWORD PTR [r11], 23                           ;999.3
$LN2406:
        mov       QWORD PTR [8+r11], r10                        ;999.3
$LN2407:
        mov       QWORD PTR [32+r14], r11                       ;999.3
$LN2408:
        call      for_write_seq_lis                             ;999.3
$LN2409:
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.15::                       ; Preds .B10.14
                                ; Execution count [5.00e-001]: Infreq
$LN2410:
        mov       DWORD PTR [464+rdi], 99                       ;1000.3
$LN2411:
                                ; LOE rbx rsi rdi r12 r13 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.16::                       ; Preds .B10.13 .B10.15
                                ; Execution count [1.00e+000]: Infreq
$LN2412:
        mov       rax, r12                                      ;1002.17
$LN2413:
        mov       r14, rsp                                      ;1002.1
$LN2414:
        add       rax, 15                                       ;1002.17
$LN2415:
        and       rax, -16                                      ;1002.17
$LN2416:
        call      __chkstk                                      ;1002.17
$LN2417:
        sub       rsp, rax                                      ;1002.17
$LN2418:
        lea       rax, QWORD PTR [48+rsp]                       ;1002.17
$LN2419:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.34::                       ; Preds .B10.16
                                ; Execution count [1.00e+000]: Infreq
$LN2420:
        mov       r15, rax                                      ;1002.17
$LN2421:
        mov       rdx, r12                                      ;1002.12
$LN2422:
        mov       rcx, r15                                      ;1002.12
$LN2423:
        mov       r8, r13                                       ;1002.12
$LN2424:
        mov       r9, r12                                       ;1002.12
$LN2425:
        call      for_trim                                      ;1002.12
$LN2426:
                                ; LOE rbx rsi rdi r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.17::                       ; Preds .B10.34
                                ; Execution count [1.00e+000]: Infreq
$LN2427:
        mov       edx, 80                                       ;1002.32
$LN2428:
        lea       r12, QWORD PTR [912+rbp]                      ;1002.32
$LN2429:
        mov       rcx, r12                                      ;1002.32
$LN2430:
        lea       r8, QWORD PTR [392+rbp]                       ;1002.32
$LN2431:
        mov       r9, rdx                                       ;1002.32
$LN2432:
        lea       r10, QWORD PTR [__STRLITPACK_182]             ;1002.25
$LN2433:
        movsxd    rax, eax                                      ;1002.12
$LN2434:
        mov       QWORD PTR [80+r12], r15                       ;1002.25
$LN2435:
        mov       QWORD PTR [88+r12], rax                       ;1002.25
$LN2436:
        mov       QWORD PTR [96+r12], r10                       ;1002.25
$LN2437:
        mov       QWORD PTR [104+r12], 1                        ;1002.25
$LN2438:
        call      for_trim                                      ;1002.32
$LN2439:
                                ; LOE rbx rsi rdi r12 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.18::                       ; Preds .B10.17
                                ; Execution count [1.00e+000]: Infreq
$LN2440:
        mov       edx, 3                                        ;1002.1
$LN2441:
        lea       rcx, QWORD PTR [992+rbp]                      ;1002.1
$LN2442:
        mov       r8, rdi                                       ;1002.1
$LN2443:
        mov       r9d, 80                                       ;1002.1
$LN2444:
        movsxd    rax, eax                                      ;1002.32
$LN2445:
        mov       QWORD PTR [32+rcx], r12                       ;1002.30
$LN2446:
        mov       QWORD PTR [40+rcx], rax                       ;1002.30
$LN2447:
        call      for_concat                                    ;1002.1
$LN2448:
                                ; LOE rbx rsi rdi r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.19::                       ; Preds .B10.18
                                ; Execution count [1.00e+000]: Infreq
$LN2449:
        mov       rax, r14                                      ;1002.1
$LN2450:
        mov       rsp, rax                                      ;1002.1
$LN2451:
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.37::                       ; Preds .B10.19
                                ; Execution count [1.00e+000]: Infreq
$LN2452:
        mov       edx, 128                                      ;1003.12
$LN2453:
        lea       rcx, QWORD PTR [480+rbp]                      ;1003.12
$LN2454:
        mov       r9, rdx                                       ;1003.12
$LN2455:
        lea       r8, QWORD PTR [8+rbp]                         ;1003.12
$LN2456:
        call      for_trim                                      ;1003.12
$LN2457:
                                ; LOE rbx rsi rdi eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.20::                       ; Preds .B10.37
                                ; Execution count [1.00e+000]: Infreq
$LN2458:
        mov       r10, rsp                                      ;1003.1
$LN2459:
        lea       rcx, QWORD PTR [80+rdi]                       ;1003.1
$LN2460:
        movsxd    rax, eax                                      ;1003.1
$LN2461:
        mov       edx, 128                                      ;1003.1
$LN2462:
        mov       r9, rax                                       ;1003.1
$LN2463:
        lea       r8, QWORD PTR [480+rbp]                       ;1003.1
$LN2464:
        mov       QWORD PTR [32+r10], 0                         ;1003.1
$LN2465:
        call      for_cpystr                                    ;1003.1
$LN2466:
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.21::                       ; Preds .B10.20
                                ; Execution count [1.00e+000]: Infreq
$LN2467:
        mov       edx, 128                                      ;1004.12
$LN2468:
        lea       rcx, QWORD PTR [608+rbp]                      ;1004.12
$LN2469:
        mov       r9, rdx                                       ;1004.12
$LN2470:
        lea       r8, QWORD PTR [136+rbp]                       ;1004.12
$LN2471:
        call      for_trim                                      ;1004.12
$LN2472:
                                ; LOE rbx rsi rdi eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.22::                       ; Preds .B10.21
                                ; Execution count [1.00e+000]: Infreq
$LN2473:
        mov       r10, rsp                                      ;1004.1
$LN2474:
        lea       rcx, QWORD PTR [208+rdi]                      ;1004.1
$LN2475:
        movsxd    rax, eax                                      ;1004.1
$LN2476:
        mov       edx, 128                                      ;1004.1
$LN2477:
        mov       r9, rax                                       ;1004.1
$LN2478:
        lea       r8, QWORD PTR [608+rbp]                       ;1004.1
$LN2479:
        mov       QWORD PTR [32+r10], 0                         ;1004.1
$LN2480:
        call      for_cpystr                                    ;1004.1
$LN2481:
                                ; LOE rbx rsi rdi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.23::                       ; Preds .B10.22
                                ; Execution count [1.00e+000]: Infreq
$LN2482:
        mov       edx, 128                                      ;1005.12
$LN2483:
        lea       rcx, QWORD PTR [736+rbp]                      ;1005.12
$LN2484:
        mov       r9, rdx                                       ;1005.12
$LN2485:
        lea       r8, QWORD PTR [264+rbp]                       ;1005.12
$LN2486:
        call      for_trim                                      ;1005.12
$LN2487:
                                ; LOE rbx rsi rdi eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.24::                       ; Preds .B10.23
                                ; Execution count [1.00e+000]: Infreq
$LN2488:
        mov       r10, rsp                                      ;1005.1
$LN2489:
        add       rdi, 336                                      ;1005.1
$LN2490:
        movsxd    rax, eax                                      ;1005.1
$LN2491:
        mov       rcx, rdi                                      ;1005.1
$LN2492:
        mov       edx, 128                                      ;1005.1
$LN2493:
        lea       r8, QWORD PTR [736+rbp]                       ;1005.1
$LN2494:
        mov       r9, rax                                       ;1005.1
$LN2495:
        mov       QWORD PTR [32+r10], 0                         ;1005.1
$LN2496:
        call      for_cpystr                                    ;1005.1
$LN2497:
                                ; LOE rbx rsi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B10.25::                       ; Preds .B10.24
                                ; Execution count [1.00e+000]: Infreq
$LN2498:
        lea       rsp, QWORD PTR [1528+rbp]                     ;1008.1
$LN2499:
        pop       r15                                           ;1008.1
$LN2500:
        pop       r14                                           ;1008.1
$LN2501:
        pop       r13                                           ;1008.1
$LN2502:
        pop       r12                                           ;1008.1
$LN2503:
        pop       rdi                                           ;1008.1
$LN2504:
        pop       rbp                                           ;1008.1
$LN2505:
        ret                                                     ;1008.1
$LN2506:
        ALIGN     16
$LN2507:
                                ; LOE
.B10.26::
$LN2508:
; mark_end;
SETSWIMERROR ENDP
$LNSETSWIMERROR$2509:
$LNSETSWIMERROR$2510:
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.SETSWIMERROR.B1_B25	DD	889787905
	DD	17892118
	DD	4027187397
	DD	3490111496
	DD	1879228420
	DD	20481
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.SETSWIMERROR.B1_B25	DD	imagerel .B10.1
	DD	imagerel .B10.26
	DD	imagerel .unwind.SETSWIMERROR.B1_B25
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.43_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.27	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DB 3 DUP ( 0H)	; pad
.2.43_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_size_0.28	DD	0000001d4H,000000000H
.2.43_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.43_2__kmpc_loc_pack.11
.2.43_2__kmpc_loc_pack.11	DB	59
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
	DB	83
	DB	87
	DB	73
	DB	77
	DB	69
	DB	82
	DB	82
	DB	79
	DB	82
	DB	59
	DB	57
	DB	55
	DB	57
	DB	59
	DB	57
	DB	55
	DB	57
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.43_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.43_2__kmpc_loc_pack.19
.2.43_2__kmpc_loc_pack.19	DB	59
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
	DB	83
	DB	87
	DB	73
	DB	77
	DB	69
	DB	82
	DB	82
	DB	79
	DB	82
	DB	59
	DB	57
	DB	55
	DB	57
	DB	59
	DB	49
	DB	48
	DB	48
	DB	56
	DB	59
	DB	59
_DATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  SETSWIMERROR
_TEXT	SEGMENT      'CODE'
_2__routine_start_INIT_MET_10:
; -- Begin  INIT_MET
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
; mark_begin;
       ALIGN     16
	PUBLIC INIT_MET
; --- INIT_MET
INIT_MET	PROC 
.B11.1::                        ; Preds .B11.0
                                ; Execution count [0.00e+000]
L78::
                                                          ;6.12
$LN2511:
        push      rbp                                           ;6.12
$LN2512:
        push      rbx                                           ;6.12
$LN2513:
        push      rsi                                           ;6.12
$LN2514:
        push      rdi                                           ;6.12
$LN2515:
        push      r12                                           ;6.12
$LN2516:
        push      r13                                           ;6.12
$LN2517:
        push      r14                                           ;6.12
$LN2518:
        push      r15                                           ;6.12
$LN2519:
        mov       eax, 20744                                    ;6.12
$LN2520:
        call      __chkstk                                      ;6.12
$LN2521:
        sub       rsp, 20744                                    ;6.12
$LN2522:
        lea       rbp, QWORD PTR [96+rsp]                       ;6.12
$LN2523:
        lea       rcx, QWORD PTR [.2.44_2_kmpc_loc_struct_pack.12] ;6.12
$LN2524:
        movups    XMMWORD PTR [20560+rbp], xmm15                ;6.12[spill]
$LN2525:
        movups    XMMWORD PTR [20576+rbp], xmm14                ;6.12[spill]
$LN2526:
        movups    XMMWORD PTR [20592+rbp], xmm13                ;6.12[spill]
$LN2527:
        call      __kmpc_global_thread_num                      ;6.12
$LN2528:
                                ; LOE eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.600::                      ; Preds .B11.1
                                ; Execution count [0.00e+000]
$LN2529:
        mov       rcx, QWORD PTR [.2.44_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.27] ;6.12
$LN2530:
        mov       ebx, eax                                      ;6.12
$LN2531:
        test      rcx, rcx                                      ;6.12
$LN2532:
        je        .B11.3        ; Prob 50%                      ;6.12
$LN2533:
                                ; LOE rcx ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.2::                        ; Preds .B11.600
                                ; Execution count [0.00e+000]
$LN2534:
        lea       eax, DWORD PTR [rbx*8]                        ;6.12
$LN2535:
        cdqe                                                    ;6.12
$LN2536:
        mov       r12, QWORD PTR [rcx+rax]                      ;6.12
$LN2537:
        test      r12, r12                                      ;6.12
$LN2538:
        jne       .B11.5        ; Prob 50%                      ;6.12
$LN2539:
                                ; LOE r12 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.3::                        ; Preds .B11.600 .B11.2
                                ; Execution count [0.00e+000]
$LN2540:
        mov       rsi, rsp                                      ;6.12
$LN2541:
        lea       rcx, QWORD PTR [.2.44_2_kmpc_loc_struct_pack.20] ;6.12
$LN2542:
        lea       r8, QWORD PTR [COMMONERRORFI]                 ;6.12
$LN2543:
        mov       edx, ebx                                      ;6.12
$LN2544:
        mov       r9, QWORD PTR [.2.44_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_size_0.28] ;6.12
$LN2545:
        lea       rax, QWORD PTR [.2.44_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.27] ;6.12
$LN2546:
        mov       QWORD PTR [32+rsi], rax                       ;6.12
$LN2547:
        call      __kmpc_threadprivate_cached                   ;6.12
$LN2548:
                                ; LOE rax ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.601::                      ; Preds .B11.3
                                ; Execution count [0.00e+000]
$LN2549:
        mov       r12, rax                                      ;6.12
$LN2550:
                                ; LOE r12 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.5::                        ; Preds .B11.601 .B11.2
                                ; Execution count [0.00e+000]
$LN2551:
        mov       rsi, QWORD PTR [.2.44_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_cache_1.29] ;6.12
$LN2552:
        test      rsi, rsi                                      ;6.12
$LN2553:
        je        .B11.7        ; Prob 50%                      ;6.12
$LN2554:
                                ; LOE rsi r12 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.6::                        ; Preds .B11.5
                                ; Execution count [0.00e+000]
$LN2555:
        lea       eax, DWORD PTR [rbx*8]                        ;6.12
$LN2556:
        cdqe                                                    ;6.12
$LN2557:
        mov       rsi, QWORD PTR [rsi+rax]                      ;6.12
$LN2558:
        mov       QWORD PTR [10488+rbp], rsi                    ;6.12[spill]
$LN2559:
        test      rsi, rsi                                      ;6.12
$LN2560:
        jne       .B11.9        ; Prob 50%                      ;6.12
$LN2561:
                                ; LOE r12 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.7::                        ; Preds .B11.5 .B11.6
                                ; Execution count [0.00e+000]
$LN2562:
        mov       rsi, rsp                                      ;6.12
$LN2563:
        lea       rcx, QWORD PTR [.2.44_2_kmpc_loc_struct_pack.20] ;6.12
$LN2564:
        lea       r8, QWORD PTR [MET_PUF]                       ;6.12
$LN2565:
        mov       edx, ebx                                      ;6.12
$LN2566:
        mov       r9, QWORD PTR [.2.44_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_size_1.30] ;6.12
$LN2567:
        lea       rax, QWORD PTR [.2.44_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_cache_1.29] ;6.12
$LN2568:
        mov       QWORD PTR [32+rsi], rax                       ;6.12
$LN2569:
        call      __kmpc_threadprivate_cached                   ;6.12
$LN2570:
                                ; LOE rax r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.602::                      ; Preds .B11.7
                                ; Execution count [0.00e+000]
$LN2571:
        mov       QWORD PTR [10488+rbp], rax                    ;6.12[spill]
$LN2572:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.9::                        ; Preds .B11.602 .B11.6
                                ; Execution count [1.00e+000]
$LN2573:
        mov       rax, rsp                                      ;58.1
$LN2574:
        lea       rcx, QWORD PTR [20272+rbp]                    ;58.1
$LN2575:
        mov       edx, 80                                       ;58.1
$LN2576:
        lea       r8, QWORD PTR [20620+rbp]                     ;58.1
$LN2577:
        mov       r9d, 1                                        ;58.1
$LN2578:
        mov       BYTE PTR [r8], 0                              ;58.9
$LN2579:
        mov       QWORD PTR [32+rax], 0                         ;58.1
$LN2580:
        call      for_cpystr                                    ;58.1
$LN2581:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.10::                       ; Preds .B11.9
                                ; Execution count [1.00e+000]
$LN2582:
        mov       rax, rsp                                      ;59.1
$LN2583:
        lea       rcx, QWORD PTR [20352+rbp]                    ;59.1
$LN2584:
        mov       edx, 80                                       ;59.1
$LN2585:
        lea       r8, QWORD PTR [20624+rbp]                     ;59.1
$LN2586:
        mov       r9d, 1                                        ;59.1
$LN2587:
        mov       BYTE PTR [r8], 0                              ;59.9
$LN2588:
        mov       QWORD PTR [32+rax], 0                         ;59.1
$LN2589:
        call      for_cpystr                                    ;59.1
$LN2590:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.11::                       ; Preds .B11.10
                                ; Execution count [1.00e+000]
$LN2591:
        mov       rax, rsp                                      ;60.1
$LN2592:
        lea       rsi, QWORD PTR [20432+rbp]                    ;60.1
$LN2593:
        mov       rcx, rsi                                      ;60.1
$LN2594:
        mov       edx, 80                                       ;60.1
$LN2595:
        lea       r8, QWORD PTR [__STRLITPACK_161]              ;60.1
$LN2596:
        mov       r9d, 35                                       ;60.1
$LN2597:
        mov       QWORD PTR [32+rax], 0                         ;60.1
$LN2598:
        call      for_cpystr                                    ;60.1
$LN2599:
                                ; LOE rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.12::                       ; Preds .B11.11
                                ; Execution count [1.00e+000]
$LN2600:
        mov       rax, rsp                                      ;61.6
$LN2601:
        mov       edx, 80                                       ;61.6
$LN2602:
        mov       r9, rdx                                       ;61.6
$LN2603:
        lea       rcx, QWORD PTR [20272+rbp]                    ;61.6
$LN2604:
        lea       r8, QWORD PTR [20352+rbp]                     ;61.6
$LN2605:
        mov       QWORD PTR [32+rax], rsi                       ;61.6
$LN2606:
        mov       QWORD PTR [40+rax], 80                        ;61.6
$LN2607:
        call      WRITE_PROGRESS                                ;61.6
$LN2608:
                                ; LOE rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.13::                       ; Preds .B11.12
                                ; Execution count [1.00e+000]
$LN2609:
;       INIT_MET_PARAMS
        call      INIT_MET_PARAMS                               ;63.6
$LN2610:
                                ; LOE rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.14::                       ; Preds .B11.13
                                ; Execution count [1.00e+000]
$LN2611:
        mov       rdi, rsp                                      ;71.1
$LN2612:
        lea       rcx, QWORD PTR [20272+rbp]                    ;71.1
$LN2613:
        mov       edx, 80                                       ;71.1
$LN2614:
        lea       r8, QWORD PTR [20628+rbp]                     ;71.1
$LN2615:
        mov       r9d, 1                                        ;71.1
$LN2616:
        xor       eax, eax                                      ;65.1
$LN2617:
        mov       QWORD PTR [18040+rbp], rax                    ;65.1
$LN2618:
        xor       bl, bl                                        ;67.1
$LN2619:
        mov       QWORD PTR [18064+rbp], rax                    ;65.1
$LN2620:
        mov       QWORD PTR [18112+rbp], rax                    ;65.1
$LN2621:
        mov       QWORD PTR [18136+rbp], rax                    ;65.1
$LN2622:
        mov       QWORD PTR [18952+rbp], rax                    ;65.1
$LN2623:
        mov       QWORD PTR [18976+rbp], rax                    ;65.1
$LN2624:
        mov       BYTE PTR [r8], 0                              ;71.9
$LN2625:
        mov       QWORD PTR [32+rdi], rax                       ;71.1
$LN2626:
        call      for_cpystr                                    ;71.1
$LN2627:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.15::                       ; Preds .B11.14
                                ; Execution count [1.00e+000]
$LN2628:
        mov       rax, rsp                                      ;72.1
$LN2629:
        lea       rcx, QWORD PTR [20352+rbp]                    ;72.1
$LN2630:
        mov       edx, 80                                       ;72.1
$LN2631:
        lea       r8, QWORD PTR [20632+rbp]                     ;72.1
$LN2632:
        mov       r9d, 1                                        ;72.1
$LN2633:
        mov       BYTE PTR [r8], 0                              ;72.9
$LN2634:
        mov       QWORD PTR [32+rax], 0                         ;72.1
$LN2635:
        call      for_cpystr                                    ;72.1
$LN2636:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.16::                       ; Preds .B11.15
                                ; Execution count [1.00e+000]
$LN2637:
        mov       rax, rsp                                      ;73.1
$LN2638:
        mov       rcx, rsi                                      ;73.1
$LN2639:
        mov       edx, 80                                       ;73.1
$LN2640:
        lea       r8, QWORD PTR [__STRLITPACK_160]              ;73.1
$LN2641:
        mov       r9d, 30                                       ;73.1
$LN2642:
        mov       QWORD PTR [32+rax], 0                         ;73.1
$LN2643:
        call      for_cpystr                                    ;73.1
$LN2644:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.17::                       ; Preds .B11.16
                                ; Execution count [1.00e+000]
$LN2645:
        mov       rax, rsp                                      ;74.6
$LN2646:
        mov       edx, 80                                       ;74.6
$LN2647:
        mov       r9, rdx                                       ;74.6
$LN2648:
        lea       rcx, QWORD PTR [20272+rbp]                    ;74.6
$LN2649:
        lea       r8, QWORD PTR [20352+rbp]                     ;74.6
$LN2650:
        mov       QWORD PTR [32+rax], rsi                       ;74.6
$LN2651:
        mov       QWORD PTR [40+rax], 80                        ;74.6
$LN2652:
        call      WRITE_PROGRESS                                ;74.6
$LN2653:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.18::                       ; Preds .B11.17
                                ; Execution count [1.00e+000]
$LN2654:
        mov       r10, rsp                                      ;79.6
$LN2655:
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_MSC]         ;79.6
$LN2656:
        mov       edx, 256                                      ;79.6
$LN2657:
        lea       r8, QWORD PTR [FILES_FI_mp_LUN_MSC]           ;79.6
$LN2658:
        lea       rax, QWORD PTR [__NLITPACK_0.0.1]             ;79.6
$LN2659:
        lea       r9, QWORD PTR [20640+rbp]                     ;79.6
$LN2660:
        mov       BYTE PTR [r9], 32                             ;76.1
$LN2661:
        lea       rdi, QWORD PTR [19836+rbp]                    ;79.6
$LN2662:
        mov       DWORD PTR [rdi], 0                            ;77.1
$LN2663:
        mov       QWORD PTR [32+r10], 1                         ;79.6
$LN2664:
        mov       QWORD PTR [40+r10], rax                       ;79.6
$LN2665:
        mov       QWORD PTR [48+r10], rdi                       ;79.6
$LN2666:
        call      READWEATHER                                   ;79.6
$LN2667:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.19::                       ; Preds .B11.18
                                ; Execution count [1.00e+000]
$LN2668:
        cmp       DWORD PTR [464+r12], 0                        ;80.12
$LN2669:
        jne       .B11.65       ; Prob 78%                      ;80.12
$LN2670:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.20::                       ; Preds .B11.19
                                ; Execution count [2.20e-001]
$LN2671:
        mov       edx, 64                                       ;82.8
$LN2672:
        lea       rdi, QWORD PTR [20176+rbp]                    ;82.8
$LN2673:
        mov       rcx, rdi                                      ;82.8
$LN2674:
        lea       r8, QWORD PTR [PROJECT_FI_mp_NAME]            ;82.8
$LN2675:
        mov       r9, rdx                                       ;82.8
$LN2676:
        call      for_trim                                      ;82.8
$LN2677:
                                ; LOE rsi rdi r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.21::                       ; Preds .B11.20
                                ; Execution count [2.20e-001]
$LN2678:
        mov       edx, 2                                        ;82.1
$LN2679:
        lea       rcx, QWORD PTR [20240+rbp]                    ;82.1
$LN2680:
        mov       r9d, 80                                       ;82.1
$LN2681:
        lea       r8, QWORD PTR [20272+rbp]                     ;82.1
$LN2682:
        mov       QWORD PTR [rcx], rdi                          ;82.18
$LN2683:
        lea       rdi, QWORD PTR [__STRLITPACK_158]             ;82.18
$LN2684:
        movsxd    rax, eax                                      ;82.8
$LN2685:
        mov       QWORD PTR [8+rcx], rax                        ;82.18
$LN2686:
        mov       QWORD PTR [16+rcx], rdi                       ;82.18
$LN2687:
        mov       QWORD PTR [24+rcx], 15                        ;82.18
$LN2688:
        call      for_concat                                    ;82.1
$LN2689:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.22::                       ; Preds .B11.21
                                ; Execution count [2.20e-001]
$LN2690:
        mov       edi, DWORD PTR [FLAGS_FI_mp_CREATE]           ;83.1
$LN2691:
        mov       r10, rsp                                      ;86.3
$LN2692:
        and       edi, 1                                        ;83.5
$LN2693:
        lea       rax, QWORD PTR [__STRLITPACK_157]             ;86.3
$LN2694:
        lea       r8, QWORD PTR [__STRLITPACK_156]              ;86.3
$LN2695:
        lea       rcx, QWORD PTR [20352+rbp]                    ;86.3
$LN2696:
        cmovne    r8, rax                                       ;86.3
$LN2697:
        xor       edi, 1                                        ;86.3
$LN2698:
        mov       edx, 80                                       ;86.3
$LN2699:
        lea       r9, QWORD PTR [28+rdi+rdi]                    ;86.3
$LN2700:
        mov       QWORD PTR [32+r10], 0                         ;86.3
$LN2701:
        call      for_cpystr                                    ;86.3
$LN2702:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.23::                       ; Preds .B11.22
                                ; Execution count [2.20e-001]
$LN2703:
        mov       rax, rsp                                      ;88.1
$LN2704:
        mov       rcx, rsi                                      ;88.1
$LN2705:
        mov       edx, 80                                       ;88.1
$LN2706:
        lea       r8, QWORD PTR [__STRLITPACK_155]              ;88.1
$LN2707:
        mov       r9d, 21                                       ;88.1
$LN2708:
        mov       QWORD PTR [32+rax], 0                         ;88.1
$LN2709:
        call      for_cpystr                                    ;88.1
$LN2710:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.24::                       ; Preds .B11.23
                                ; Execution count [2.20e-001]
$LN2711:
        mov       rax, rsp                                      ;89.6
$LN2712:
        mov       edx, 80                                       ;89.6
$LN2713:
        mov       r9, rdx                                       ;89.6
$LN2714:
        lea       rcx, QWORD PTR [20272+rbp]                    ;89.6
$LN2715:
        lea       r8, QWORD PTR [20352+rbp]                     ;89.6
$LN2716:
        mov       QWORD PTR [32+rax], rsi                       ;89.6
$LN2717:
        mov       QWORD PTR [40+rax], 80                        ;89.6
$LN2718:
        call      WRITE_PROGRESS                                ;89.6
$LN2719:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.25::                       ; Preds .B11.24
                                ; Execution count [2.20e-001]
$LN2720:
        mov       eax, DWORD PTR [MET_FI_mp_LOUT_MET]           ;94.1
$LN2721:
        or        eax, DWORD PTR [MET_FI_mp_LOUT_MC]            ;94.14
$LN2722:
        test      al, 1                                         ;94.14
$LN2723:
        je        .B11.34       ; Prob 60%                      ;94.14
$LN2724:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.26::                       ; Preds .B11.25
                                ; Execution count [8.80e-002]
$LN2725:
        movss     xmm0, DWORD PTR [MET_FI_mp_TOUT_MET]          ;96.3
$LN2726:
        movss     xmm13, DWORD PTR [_2il0floatpacket.14]        ;96.16
$LN2727:
        ucomiss   xmm0, xmm13                                   ;96.16
$LN2728:
        jp        .B11.27       ; Prob 0%                       ;96.16
$LN2729:
        je        .B11.78       ; Prob 16%                      ;96.16
$LN2730:
                                ; LOE r12 bl xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13
.B11.27::                       ; Preds .B11.26
                                ; Execution count [7.39e-002]
$LN2731:
        ucomiss   xmm0, DWORD PTR [_2il0floatpacket.13]         ;96.43
$LN2732:
        jp        .B11.28       ; Prob 0%                       ;96.43
$LN2733:
        je        .B11.78       ; Prob 16%                      ;96.43
$LN2734:
                                ; LOE r12 bl xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13
.B11.28::                       ; Preds .B11.27
                                ; Execution count [6.21e-002]
$LN2735:
        divss     xmm0, DWORD PTR [TIME_FI_mp_DELT]             ;101.20
$LN2736:
        mov       DWORD PTR [MET_FI_mp_LOUT_MC], 0              ;100.5
$LN2737:
        call      f_lanint_val                                  ;101.20
$LN2738:
                                ; LOE r12 bl xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13
.B11.604::                      ; Preds .B11.28
                                ; Execution count [6.21e-002]
$LN2739:
        cvttss2si eax, xmm0                                     ;101.20
$LN2740:
        mov       edx, 1                                        ;101.5
$LN2741:
        test      eax, eax                                      ;101.5
$LN2742:
        cmovg     edx, eax                                      ;101.5
$LN2743:
        mov       DWORD PTR [MET_FI_mp_NOUT_MET], edx           ;101.5
$LN2744:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13
.B11.29::                       ; Preds .B11.78 .B11.604
                                ; Execution count [8.80e-002]
$LN2745:
        mov       eax, DWORD PTR [FLAGS_FI_mp_CREATE]           ;105.3
$LN2746:
        mov       DWORD PTR [MET_FI_mp_LOUT_MET], -1            ;103.3
$LN2747:
        test      al, 1                                         ;105.12
$LN2748:
        jne       .B11.32       ; Prob 39%                      ;105.12
$LN2749:
                                ; LOE r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13
.B11.30::                       ; Preds .B11.29
                                ; Execution count [5.28e-002]
$LN2750:
        movss     xmm1, DWORD PTR [TIME_FI_mp_T]                ;106.5
$LN2751:
        pxor      xmm0, xmm0                                    ;106.11
$LN2752:
        ucomiss   xmm1, xmm0                                    ;106.11
$LN2753:
        jp        .B11.31       ; Prob 0%                       ;106.11
$LN2754:
        je        .B11.32       ; Prob 16%                      ;106.11
$LN2755:
                                ; LOE r12 eax bl xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13
.B11.31::                       ; Preds .B11.30
                                ; Execution count [4.44e-002]
$LN2756:
        movss     DWORD PTR [MET_FI_mp_TIMEOUTMET], xmm1        ;109.7
$LN2757:
        jmp       .B11.35       ; Prob 100%                     ;109.7
$LN2758:
                                ; LOE r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.32::                       ; Preds .B11.29 .B11.30
                                ; Execution count [8.45e-003]
$LN2759:
        movss     DWORD PTR [MET_FI_mp_TIMEOUTMET], xmm13       ;107.7
$LN2760:
        jmp       .B11.35       ; Prob 100%                     ;107.7
$LN2761:
                                ; LOE r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.34::                       ; Preds .B11.25
                                ; Execution count [1.32e-001]
$LN2762:
        mov       eax, DWORD PTR [FLAGS_FI_mp_CREATE]           ;119.1
$LN2763:
                                ; LOE r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.35::                       ; Preds .B11.32 .B11.31 .B11.34
                                ; Execution count [2.20e-001]
$LN2764:
        test      al, 1                                         ;119.10
$LN2765:
        jne       .B11.37       ; Prob 39%                      ;119.10
$LN2766:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.36::                       ; Preds .B11.35
                                ; Execution count [1.32e-001]
$LN2767:
        mov       eax, DWORD PTR [MET_FI_mp_MCTYPEPRJ]          ;119.18
$LN2768:
        mov       DWORD PTR [MET_FI_mp_MCTYPEMET], eax          ;119.18
$LN2769:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.37::                       ; Preds .B11.35 .B11.36
                                ; Execution count [2.20e-001]
$LN2770:
        cmp       DWORD PTR [GRID_FI_mp_LMAP], 3                ;123.10
$LN2771:
        jne       .B11.60       ; Prob 21%                      ;123.10
$LN2772:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.38::                       ; Preds .B11.37
                                ; Execution count [1.72e-001]
$LN2773:
        mov       edx, 80                                       ;125.16
$LN2774:
        lea       rcx, QWORD PTR [20096+rbp]                    ;125.16
$LN2775:
        lea       r8, QWORD PTR [MET_FI_mp_MET_TYPE]            ;125.16
$LN2776:
        mov       r9, rdx                                       ;125.16
$LN2777:
        mov       edi, DWORD PTR [MET_FI_mp_LMC_UA]             ;124.3
$LN2778:
        mov       r15, rsp                                      ;129.7
$LN2779:
        call      for_trim                                      ;125.16
$LN2780:
                                ; LOE r12 r15 eax edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.39::                       ; Preds .B11.38
                                ; Execution count [1.72e-001]
$LN2781:
        movsxd    r14, eax                                      ;125.16
$LN2782:
        mov       rax, r14                                      ;125.16
$LN2783:
        add       rax, 15                                       ;125.16
$LN2784:
        and       rax, -16                                      ;125.16
$LN2785:
        call      __chkstk                                      ;125.16
$LN2786:
        sub       rsp, rax                                      ;125.16
$LN2787:
        lea       rax, QWORD PTR [96+rsp]                       ;125.16
$LN2788:
                                ; LOE rax r12 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.606::                      ; Preds .B11.39
                                ; Execution count [1.72e-001]
$LN2789:
        mov       r13, rax                                      ;125.16
$LN2790:
        lea       rdx, QWORD PTR [20096+rbp]                    ;125.16
$LN2791:
        mov       rcx, r13                                      ;125.16
$LN2792:
        mov       r8, r14                                       ;125.16
$LN2793:
        call      memmove                                       ;125.16
$LN2794:
                                ; LOE r12 r13 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.40::                       ; Preds .B11.606
                                ; Execution count [1.72e-001]
$LN2795:
        mov       rsi, rsp                                      ;126.11
$LN2796:
        mov       rcx, r13                                      ;126.11
$LN2797:
        mov       rdx, r14                                      ;126.11
$LN2798:
        lea       r8, QWORD PTR [__STRLITPACK_154]              ;126.11
$LN2799:
        mov       r9d, 5                                        ;126.11
$LN2800:
        mov       QWORD PTR [32+rsi], 2                         ;126.11
$LN2801:
        call      for_cpstr                                     ;126.11
$LN2802:
                                ; LOE rax r12 r13 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.612::                      ; Preds .B11.40
                                ; Execution count [1.72e-001]
$LN2803:
        mov       r10, rsp                                      ;126.19
$LN2804:
        mov       rcx, r13                                      ;126.19
$LN2805:
        mov       rdx, r14                                      ;126.19
$LN2806:
        lea       r8, QWORD PTR [__STRLITPACK_153]              ;126.19
$LN2807:
        mov       r9d, 3                                        ;126.19
$LN2808:
        mov       rsi, rax                                      ;126.11
$LN2809:
        mov       QWORD PTR [32+r10], 2                         ;126.19
$LN2810:
        call      for_cpstr                                     ;126.19
$LN2811:
                                ; LOE rax rsi r12 r13 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.611::                      ; Preds .B11.612
                                ; Execution count [1.72e-001]
$LN2812:
        mov       r10, rsp                                      ;126.25
$LN2813:
        mov       rcx, r13                                      ;126.25
$LN2814:
        mov       rdx, r14                                      ;126.25
$LN2815:
        lea       r8, QWORD PTR [__STRLITPACK_152]              ;126.25
$LN2816:
        mov       r9d, 7                                        ;126.25
$LN2817:
        mov       QWORD PTR [24+rbp], rax                       ;126.19[spill]
$LN2818:
        mov       QWORD PTR [32+r10], 2                         ;126.25
$LN2819:
        call      for_cpstr                                     ;126.25
$LN2820:
                                ; LOE rax rsi r12 r13 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.610::                      ; Preds .B11.611
                                ; Execution count [1.72e-001]
$LN2821:
        mov       r10, rsp                                      ;126.35
$LN2822:
        mov       rcx, r13                                      ;126.35
$LN2823:
        mov       rdx, r14                                      ;126.35
$LN2824:
        lea       r8, QWORD PTR [__STRLITPACK_151]              ;126.35
$LN2825:
        mov       r9d, 5                                        ;126.35
$LN2826:
        mov       QWORD PTR [16+rbp], rax                       ;126.25[spill]
$LN2827:
        mov       QWORD PTR [32+r10], 2                         ;126.35
$LN2828:
        call      for_cpstr                                     ;126.35
$LN2829:
                                ; LOE rax rsi r12 r13 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.609::                      ; Preds .B11.610
                                ; Execution count [1.72e-001]
$LN2830:
        mov       r10, rsp                                      ;126.43
$LN2831:
        mov       rcx, r13                                      ;126.43
$LN2832:
        mov       rdx, r14                                      ;126.43
$LN2833:
        lea       r8, QWORD PTR [__STRLITPACK_150]              ;126.43
$LN2834:
        mov       r9d, 12                                       ;126.43
$LN2835:
        mov       QWORD PTR [8+rbp], rax                        ;126.35[spill]
$LN2836:
        mov       QWORD PTR [32+r10], 2                         ;126.43
$LN2837:
        call      for_cpstr                                     ;126.43
$LN2838:
                                ; LOE rax rsi r12 r13 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.608::                      ; Preds .B11.609
                                ; Execution count [1.72e-001]
$LN2839:
        mov       r10, rsp                                      ;126.58
$LN2840:
        mov       rcx, r13                                      ;126.58
$LN2841:
        mov       rdx, r14                                      ;126.58
$LN2842:
        lea       r8, QWORD PTR [__STRLITPACK_149]              ;126.58
$LN2843:
        mov       r9d, 3                                        ;126.58
$LN2844:
        mov       QWORD PTR [rbp], rax                          ;126.43[spill]
$LN2845:
        mov       QWORD PTR [32+r10], 2                         ;126.58
$LN2846:
        call      for_cpstr                                     ;126.58
$LN2847:
                                ; LOE rax rsi r12 r13 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.607::                      ; Preds .B11.608
                                ; Execution count [1.72e-001]
$LN2848:
        test      esi, esi                                      ;126.11
$LN2849:
        jne       .B11.46       ; Prob 50%                      ;126.11
$LN2850:
                                ; LOE rax r12 r13 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.41::                       ; Preds .B11.607
                                ; Execution count [8.62e-002]
$LN2851:
        mov       rsi, QWORD PTR [24+rbp]                       ;126.19[spill]
$LN2852:
        test      esi, esi                                      ;126.11
$LN2853:
        jne       .B11.46       ; Prob 50%                      ;126.11
$LN2854:
                                ; LOE rax r12 r13 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.42::                       ; Preds .B11.41
                                ; Execution count [4.31e-002]
$LN2855:
        mov       rsi, QWORD PTR [16+rbp]                       ;126.25[spill]
$LN2856:
        test      esi, esi                                      ;126.11
$LN2857:
        jne       .B11.46       ; Prob 50%                      ;126.11
$LN2858:
                                ; LOE rax r12 r13 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.43::                       ; Preds .B11.42
                                ; Execution count [2.15e-002]
$LN2859:
        mov       rsi, QWORD PTR [8+rbp]                        ;126.35[spill]
$LN2860:
        test      esi, esi                                      ;126.11
$LN2861:
        jne       .B11.46       ; Prob 50%                      ;126.11
$LN2862:
                                ; LOE rax r12 r13 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.44::                       ; Preds .B11.43
                                ; Execution count [1.08e-002]
$LN2863:
        mov       rsi, QWORD PTR [rbp]                          ;126.43[spill]
$LN2864:
        test      esi, esi                                      ;126.11
$LN2865:
        jne       .B11.46       ; Prob 50%                      ;126.11
$LN2866:
                                ; LOE rax r12 r13 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.45::                       ; Preds .B11.44
                                ; Execution count [5.39e-003]
$LN2867:
        test      eax, eax                                      ;126.11
$LN2868:
        je        .B11.47       ; Prob 50%                      ;126.11
$LN2869:
                                ; LOE r12 r13 r14 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.46::                       ; Preds .B11.44 .B11.45 .B11.607 .B11.41 .B11.42
                                ;       .B11.43
                                ; Execution count [1.70e-001]
$LN2870:
        mov       edi, -1                                       ;127.7
$LN2871:
        jmp       .B11.48       ; Prob 100%                     ;127.7
$LN2872:
                                ; LOE r12 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.47::                       ; Preds .B11.45
                                ; Execution count [2.69e-003]
$LN2873:
        mov       rsi, rsp                                      ;128.11
$LN2874:
        mov       rcx, r13                                      ;128.11
$LN2875:
        mov       rdx, r14                                      ;128.11
$LN2876:
        lea       r8, QWORD PTR [__STRLITPACK_148]              ;128.11
$LN2877:
        mov       r9d, 10                                       ;128.11
$LN2878:
        mov       QWORD PTR [32+rsi], 2                         ;128.11
$LN2879:
        call      for_cpstr                                     ;128.11
$LN2880:
                                ; LOE rax r12 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.613::                      ; Preds .B11.47
                                ; Execution count [2.69e-003]
$LN2881:
        mov       edx, -1                                       ;129.7
$LN2882:
        test      eax, eax                                      ;129.7
$LN2883:
        cmovne    edi, edx                                      ;129.7
$LN2884:
                                ; LOE r12 r15 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.48::                       ; Preds .B11.46 .B11.613
                                ; Execution count [1.72e-001]
$LN2885:
        mov       rax, r15                                      ;129.7
$LN2886:
        mov       rsp, rax                                      ;129.7
$LN2887:
                                ; LOE r12 edi bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.614::                      ; Preds .B11.48
                                ; Execution count [1.72e-001]
$LN2888:
        test      edi, 1                                        ;131.12
$LN2889:
        jne       .B11.60       ; Prob 3%                       ;131.12
$LN2890:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.49::                       ; Preds .B11.614
                                ; Execution count [1.67e-001]
$LN2891:
        movss     xmm3, DWORD PTR [GRID_FI_mp_XMIN]             ;132.5
$LN2892:
        movss     xmm0, DWORD PTR [_2il0floatpacket.14]         ;132.14
$LN2893:
        ucomiss   xmm3, xmm0                                    ;132.14
$LN2894:
        jp        .B11.50       ; Prob 0%                       ;132.14
$LN2895:
        je        .B11.60       ; Prob 0%                       ;132.14
$LN2896:
                                ; LOE r12 bl xmm0 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.50::                       ; Preds .B11.49
                                ; Execution count [1.65e-001]
$LN2897:
        movss     xmm1, DWORD PTR [_2il0floatpacket.13]         ;132.38
$LN2898:
        ucomiss   xmm3, xmm1                                    ;132.38
$LN2899:
        jp        .B11.51       ; Prob 0%                       ;132.38
$LN2900:
        je        .B11.60       ; Prob 0%                       ;132.38
$LN2901:
                                ; LOE r12 bl xmm0 xmm1 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.51::                       ; Preds .B11.50
                                ; Execution count [1.63e-001]
$LN2902:
        movss     xmm2, DWORD PTR [GRID_FI_mp_XMAX]             ;132.27
$LN2903:
        ucomiss   xmm2, xmm0                                    ;133.14
$LN2904:
        jp        .B11.52       ; Prob 0%                       ;133.14
$LN2905:
        je        .B11.60       ; Prob 0%                       ;133.14
$LN2906:
                                ; LOE r12 bl xmm0 xmm1 xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.52::                       ; Preds .B11.51
                                ; Execution count [1.62e-001]
$LN2907:
        ucomiss   xmm2, xmm1                                    ;133.38
$LN2908:
        jp        .B11.53       ; Prob 0%                       ;133.38
$LN2909:
        je        .B11.60       ; Prob 0%                       ;133.38
$LN2910:
                                ; LOE r12 bl xmm0 xmm1 xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.53::                       ; Preds .B11.52
                                ; Execution count [1.60e-001]
$LN2911:
        movss     xmm5, DWORD PTR [GRID_FI_mp_YMIN]             ;133.27
$LN2912:
        ucomiss   xmm5, xmm0                                    ;134.14
$LN2913:
        jp        .B11.54       ; Prob 0%                       ;134.14
$LN2914:
        je        .B11.60       ; Prob 0%                       ;134.14
$LN2915:
                                ; LOE r12 bl xmm0 xmm1 xmm2 xmm3 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.54::                       ; Preds .B11.53
                                ; Execution count [1.58e-001]
$LN2916:
        ucomiss   xmm5, xmm1                                    ;134.38
$LN2917:
        jp        .B11.55       ; Prob 0%                       ;134.38
$LN2918:
        je        .B11.60       ; Prob 0%                       ;134.38
$LN2919:
                                ; LOE r12 bl xmm0 xmm1 xmm2 xmm3 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.55::                       ; Preds .B11.54
                                ; Execution count [1.57e-001]
$LN2920:
        movss     xmm4, DWORD PTR [GRID_FI_mp_YMAX]             ;134.27
$LN2921:
        ucomiss   xmm4, xmm0                                    ;135.14
$LN2922:
        jp        .B11.56       ; Prob 0%                       ;135.14
$LN2923:
        je        .B11.60       ; Prob 0%                       ;135.14
$LN2924:
                                ; LOE r12 bl xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.56::                       ; Preds .B11.55
                                ; Execution count [1.55e-001]
$LN2925:
        ucomiss   xmm4, xmm1                                    ;135.38
$LN2926:
        jp        .B11.57       ; Prob 0%                       ;135.38
$LN2927:
        je        .B11.60       ; Prob 0%                       ;135.38
$LN2928:
                                ; LOE r12 bl xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.57::                       ; Preds .B11.56
                                ; Execution count [1.54e-001]
$LN2929:
        movss     xmm0, DWORD PTR [_2il0floatpacket.29]         ;136.17
$LN2930:
        mov       rsi, rsp                                      ;138.13
$LN2931:
        lea       rcx, QWORD PTR [GRID_FI_mp_UTM_ZONE]          ;138.13
$LN2932:
        lea       rdx, QWORD PTR [GRID_FI_mp_XREF]              ;138.13
$LN2933:
        lea       r8, QWORD PTR [GRID_FI_mp_YREF]               ;138.13
$LN2934:
        lea       r9, QWORD PTR [GRID_FI_mp_LAT0]               ;138.13
$LN2935:
        lea       rax, QWORD PTR [GRID_FI_mp_LON0]              ;138.13
$LN2936:
        addss     xmm3, xmm2                                    ;136.23
$LN2937:
        addss     xmm5, xmm4                                    ;137.23
$LN2938:
        mulss     xmm3, xmm0                                    ;136.7
$LN2939:
        mulss     xmm0, xmm5                                    ;137.7
$LN2940:
        movss     DWORD PTR [GRID_FI_mp_XREF], xmm3             ;136.7
$LN2941:
        movss     DWORD PTR [GRID_FI_mp_YREF], xmm0             ;137.7
$LN2942:
        mov       QWORD PTR [32+rsi], rax                       ;138.13
$LN2943:
;       UTM2LL
        call      DATUMS_mp_UTM2LL                              ;138.13
$LN2944:
                                ; LOE r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.58::                       ; Preds .B11.57
                                ; Execution count [1.54e-001]
$LN2945:
        mov       DWORD PTR [17684+rbp], eax                    ;138.7
$LN2946:
        test      eax, eax                                      ;139.15
$LN2947:
        je        .B11.60       ; Prob 78%                      ;139.15
$LN2948:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.59::                       ; Preds .B11.58
                                ; Execution count [3.38e-002]
$LN2949:
        lea       rcx, QWORD PTR [__STRLITPACK_147]             ;140.14
$LN2950:
        mov       edx, 6                                        ;140.14
$LN2951:
        lea       r8, QWORD PTR [17684+rbp]                     ;140.14
$LN2952:
        call      SETUTMERROR                                   ;140.14
$LN2953:
        jmp       .B11.65       ; Prob 100%                     ;140.14
$LN2954:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.60::                       ; Preds .B11.614 .B11.49 .B11.50 .B11.51 .B11.52
                                ;       .B11.53 .B11.54 .B11.55 .B11.56 .B11.58
                                ;       .B11.37
                                ; Execution count [1.86e-001]
$LN2955:
        mov       edx, 256                                      ;150.21
$LN2956:
        lea       rcx, QWORD PTR [19840+rbp]                    ;150.21
$LN2957:
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_LUS]          ;150.21
$LN2958:
        mov       r9, rdx                                       ;150.21
$LN2959:
        mov       DWORD PTR [19576+rbp], 0                      ;149.1
$LN2960:
        call      for_trim                                      ;150.21
$LN2961:
                                ; LOE r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.61::                       ; Preds .B11.60
                                ; Execution count [1.86e-001]
$LN2962:
        mov       rsi, rsp                                      ;150.1
$LN2963:
        lea       rcx, QWORD PTR [19580+rbp]                    ;150.1
$LN2964:
        movsxd    rax, eax                                      ;150.1
$LN2965:
        mov       edx, 256                                      ;150.1
$LN2966:
        mov       r9, rax                                       ;150.1
$LN2967:
        lea       r8, QWORD PTR [19840+rbp]                     ;150.1
$LN2968:
        mov       QWORD PTR [32+rsi], 0                         ;150.1
$LN2969:
        call      for_cpystr                                    ;150.1
$LN2970:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.62::                       ; Preds .B11.61
                                ; Execution count [1.86e-001]
$LN2971:
        lea       rcx, QWORD PTR [19576+rbp]                    ;152.7
$LN2972:
        call      INITLANDUSE                                   ;152.7
$LN2973:
                                ; LOE r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.63::                       ; Preds .B11.62
                                ; Execution count [1.86e-001]
$LN2974:
        mov       DWORD PTR [17684+rbp], eax                    ;152.1
$LN2975:
        cmp       eax, 1                                        ;153.9
$LN2976:
        je        .B11.79       ; Prob 16%                      ;153.9
$LN2977:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.64::                       ; Preds .B11.83 .B11.63
                                ; Execution count [1.56e-001]
$LN2978:
        call      GETLANDUSEERROR                               ;154.8
$LN2979:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.65::                       ; Preds .B11.366 .B11.597 .B11.573 .B11.374 .B11.359
                                ;       .B11.19 .B11.64 .B11.259 .B11.270 .B11.269
                                ;       .B11.277 .B11.278 .B11.291 .B11.296 .B11.317
                                ;       .B11.316 .B11.323 .B11.138 .B11.588 .B11.224
                                ;       .B11.228 .B11.338 .B11.571 .B11.553 .B11.550
                                ;       .B11.548 .B11.546 .B11.555 .B11.558 .B11.561
                                ;       .B11.564 .B11.567 .B11.326 .B11.239 .B11.578
                                ;       .B11.89 .B11.59 .B11.266 .B11.214 .B11.302
                                ;       .B11.217 .B11.216 .B11.247
                                ; Execution count [1.00e+000]
$LN2980:
        mov       rbx, QWORD PTR [18064+rbp]                    ;967.5
$LN2981:
        mov       esi, ebx                                      ;967.5
$LN2982:
        test      esi, 1                                        ;967.5
$LN2983:
        je        .B11.68       ; Prob 60%                      ;967.5
$LN2984:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.66::                       ; Preds .B11.65
                                ; Execution count [3.39e-002]
$LN2985:
        mov       rax, rbx                                      ;967.36
$LN2986:
        and       esi, 1                                        ;967.36
$LN2987:
        and       rax, 2                                        ;967.36
$LN2988:
        add       esi, esi                                      ;967.36
$LN2989:
        shr       rax, 1                                        ;967.36
$LN2990:
        mov       rdi, rbx                                      ;967.36
$LN2991:
        and       rdi, -256                                     ;967.36
$LN2992:
        lea       edx, DWORD PTR [1+rax*4]                      ;967.36
$LN2993:
        or        edx, esi                                      ;967.36
$LN2994:
        mov       rsi, rbx                                      ;967.36
$LN2995:
        and       rsi, -2048                                    ;967.36
$LN2996:
        mov       r8, 0f000000000H                              ;967.36
$LN2997:
        shr       rsi, 11                                       ;967.36
$LN2998:
        and       r8, rbx                                       ;967.36
$LN2999:
        shr       rdi, 8                                        ;967.36
$LN3000:
        and       esi, 1                                        ;967.36
$LN3001:
        shl       esi, 8                                        ;967.36
$LN3002:
        and       edi, 1                                        ;967.36
$LN3003:
        shl       edi, 21                                       ;967.36
$LN3004:
        or        edx, esi                                      ;967.36
$LN3005:
        shr       r8, 36                                        ;967.36
$LN3006:
        or        edx, edi                                      ;967.36
$LN3007:
        and       edx, -31457281                                ;967.36
$LN3008:
        shl       r8d, 21                                       ;967.36
$LN3009:
        or        edx, r8d                                      ;967.36
$LN3010:
        add       edx, 262144                                   ;967.36
$LN3011:
        mov       rcx, QWORD PTR [18040+rbp]                    ;967.36
$LN3012:
        call      for_dealloc_allocatable                       ;967.36
$LN3013:
                                ; LOE rbx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.67::                       ; Preds .B11.66
                                ; Execution count [3.39e-002]
$LN3014:
        mov       rax, 0ffffff000ffff7feH                       ;967.36
$LN3015:
        and       rax, rbx                                      ;967.36
$LN3016:
        mov       QWORD PTR [18040+rbp], 0                      ;967.36
$LN3017:
        mov       QWORD PTR [18064+rbp], rax                    ;967.36
$LN3018:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.68::                       ; Preds .B11.65 .B11.67
                                ; Execution count [1.00e+000]
$LN3019:
        mov       rbx, QWORD PTR [18136+rbp]                    ;968.5
$LN3020:
        mov       esi, ebx                                      ;968.5
$LN3021:
        test      esi, 1                                        ;968.5
$LN3022:
        je        .B11.71       ; Prob 60%                      ;968.5
$LN3023:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.69::                       ; Preds .B11.68
                                ; Execution count [3.39e-002]
$LN3024:
        mov       rax, rbx                                      ;968.36
$LN3025:
        and       esi, 1                                        ;968.36
$LN3026:
        and       rax, 2                                        ;968.36
$LN3027:
        add       esi, esi                                      ;968.36
$LN3028:
        shr       rax, 1                                        ;968.36
$LN3029:
        mov       rdi, rbx                                      ;968.36
$LN3030:
        and       rdi, -256                                     ;968.36
$LN3031:
        lea       edx, DWORD PTR [1+rax*4]                      ;968.36
$LN3032:
        or        edx, esi                                      ;968.36
$LN3033:
        mov       rsi, rbx                                      ;968.36
$LN3034:
        and       rsi, -2048                                    ;968.36
$LN3035:
        mov       r8, 0f000000000H                              ;968.36
$LN3036:
        shr       rsi, 11                                       ;968.36
$LN3037:
        and       r8, rbx                                       ;968.36
$LN3038:
        shr       rdi, 8                                        ;968.36
$LN3039:
        and       esi, 1                                        ;968.36
$LN3040:
        shl       esi, 8                                        ;968.36
$LN3041:
        and       edi, 1                                        ;968.36
$LN3042:
        shl       edi, 21                                       ;968.36
$LN3043:
        or        edx, esi                                      ;968.36
$LN3044:
        shr       r8, 36                                        ;968.36
$LN3045:
        or        edx, edi                                      ;968.36
$LN3046:
        and       edx, -31457281                                ;968.36
$LN3047:
        shl       r8d, 21                                       ;968.36
$LN3048:
        or        edx, r8d                                      ;968.36
$LN3049:
        add       edx, 262144                                   ;968.36
$LN3050:
        mov       rcx, QWORD PTR [18112+rbp]                    ;968.36
$LN3051:
        call      for_dealloc_allocatable                       ;968.36
$LN3052:
                                ; LOE rbx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.70::                       ; Preds .B11.69
                                ; Execution count [3.39e-002]
$LN3053:
        mov       rax, 0ffffff000ffff7feH                       ;968.36
$LN3054:
        and       rax, rbx                                      ;968.36
$LN3055:
        mov       QWORD PTR [18112+rbp], 0                      ;968.36
$LN3056:
        mov       QWORD PTR [18136+rbp], rax                    ;968.36
$LN3057:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.71::                       ; Preds .B11.68 .B11.70
                                ; Execution count [1.00e+000]
$LN3058:
        mov       rbx, QWORD PTR [18976+rbp]                    ;969.5
$LN3059:
        mov       esi, ebx                                      ;969.5
$LN3060:
        test      esi, 1                                        ;969.5
$LN3061:
        je        .B11.74       ; Prob 60%                      ;969.5
$LN3062:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.72::                       ; Preds .B11.71
                                ; Execution count [3.39e-002]
$LN3063:
        mov       rax, rbx                                      ;969.36
$LN3064:
        and       esi, 1                                        ;969.36
$LN3065:
        and       rax, 2                                        ;969.36
$LN3066:
        add       esi, esi                                      ;969.36
$LN3067:
        shr       rax, 1                                        ;969.36
$LN3068:
        mov       rdi, rbx                                      ;969.36
$LN3069:
        and       rdi, -256                                     ;969.36
$LN3070:
        lea       edx, DWORD PTR [1+rax*4]                      ;969.36
$LN3071:
        or        edx, esi                                      ;969.36
$LN3072:
        mov       rsi, rbx                                      ;969.36
$LN3073:
        and       rsi, -2048                                    ;969.36
$LN3074:
        mov       r8, 0f000000000H                              ;969.36
$LN3075:
        shr       rsi, 11                                       ;969.36
$LN3076:
        and       r8, rbx                                       ;969.36
$LN3077:
        shr       rdi, 8                                        ;969.36
$LN3078:
        and       esi, 1                                        ;969.36
$LN3079:
        shl       esi, 8                                        ;969.36
$LN3080:
        and       edi, 1                                        ;969.36
$LN3081:
        shl       edi, 21                                       ;969.36
$LN3082:
        or        edx, esi                                      ;969.36
$LN3083:
        shr       r8, 36                                        ;969.36
$LN3084:
        or        edx, edi                                      ;969.36
$LN3085:
        and       edx, -31457281                                ;969.36
$LN3086:
        shl       r8d, 21                                       ;969.36
$LN3087:
        or        edx, r8d                                      ;969.36
$LN3088:
        add       edx, 262144                                   ;969.36
$LN3089:
        mov       rcx, QWORD PTR [18952+rbp]                    ;969.36
$LN3090:
        call      for_dealloc_allocatable                       ;969.36
$LN3091:
                                ; LOE rbx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.73::                       ; Preds .B11.72
                                ; Execution count [3.39e-002]
$LN3092:
        mov       rax, 0ffffff000ffff7feH                       ;969.36
$LN3093:
        and       rax, rbx                                      ;969.36
$LN3094:
        mov       QWORD PTR [18952+rbp], 0                      ;969.36
$LN3095:
        mov       QWORD PTR [18976+rbp], rax                    ;969.36
$LN3096:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.74::                       ; Preds .B11.71 .B11.73
                                ; Execution count [1.00e+000]
$LN3097:
        mov       rcx, rsp                                      ;971.9
$LN3098:
        lea       rdx, QWORD PTR [20608+rbp]                    ;971.9
$LN3099:
        mov       r8, 01208384ff00H                             ;971.9
$LN3100:
        lea       r9, QWORD PTR [__STRLITPACK_180.0.1]          ;971.9
$LN3101:
        mov       QWORD PTR [-96+rdx], 0                        ;971.9
$LN3102:
        lea       rax, QWORD PTR [20616+rbp]                    ;971.9
$LN3103:
        mov       QWORD PTR [-8+rax], rax                       ;971.9
$LN3104:
        mov       QWORD PTR [32+rcx], rdx                       ;971.9
$LN3105:
        lea       rcx, QWORD PTR [20512+rbp]                    ;971.9
$LN3106:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_TMP]          ;971.9
$LN3107:
        call      for_inquire                                   ;971.9
$LN3108:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.75::                       ; Preds .B11.74
                                ; Execution count [1.00e+000]
$LN3109:
        test      BYTE PTR [20616+rbp], 1                       ;972.5
$LN3110:
        je        .B11.77       ; Prob 60%                      ;972.5
$LN3111:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.76::                       ; Preds .B11.75
                                ; Execution count [4.00e-001]
$LN3112:
        mov       rdx, rsp                                      ;972.11
$LN3113:
        lea       rcx, QWORD PTR [20512+rbp]                    ;972.11
$LN3114:
        mov       r8, 012083a4ff03H                             ;972.11
$LN3115:
        lea       r9, QWORD PTR [__STRLITPACK_181.0.1]          ;972.11
$LN3116:
        xor       eax, eax                                      ;972.11
$LN3117:
        mov       QWORD PTR [rcx], rax                          ;972.11
$LN3118:
        mov       QWORD PTR [32+rdx], rax                       ;972.11
$LN3119:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_TMP]          ;972.11
$LN3120:
        call      for_close                                     ;972.11
$LN3121:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.77::                       ; Preds .B11.76 .B11.75
                                ; Execution count [1.00e+000]
$LN3122:
        movups    xmm13, XMMWORD PTR [20592+rbp]                ;975.1[spill]
$LN3123:
        movups    xmm14, XMMWORD PTR [20576+rbp]                ;975.1[spill]
$LN3124:
        movups    xmm15, XMMWORD PTR [20560+rbp]                ;975.1[spill]
$LN3125:
        lea       rsp, QWORD PTR [20648+rbp]                    ;975.1
$LN3126:
        pop       r15                                           ;975.1
$LN3127:
        pop       r14                                           ;975.1
$LN3128:
        pop       r13                                           ;975.1
$LN3129:
        pop       r12                                           ;975.1
$LN3130:
        pop       rdi                                           ;975.1
$LN3131:
        pop       rsi                                           ;975.1
$LN3132:
        pop       rbx                                           ;975.1
$LN3133:
        pop       rbp                                           ;975.1
$LN3134:
        ret                                                     ;975.1
$LN3135:
                                ; LOE
.B11.78::                       ; Preds .B11.26 .B11.27
                                ; Execution count [2.59e-002]
$LN3136:
        mov       eax, -1                                       ;97.5
$LN3137:
        mov       DWORD PTR [MET_FI_mp_LOUT_MC], eax            ;97.5
$LN3138:
        mov       DWORD PTR [MET_FI_mp_NOUT_MET], eax           ;98.5
$LN3139:
        jmp       .B11.29       ; Prob 100%                     ;98.5
$LN3140:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13
.B11.79::                       ; Preds .B11.63
                                ; Execution count [2.98e-002]: Infreq
$LN3141:
        mov       edx, 80                                       ;158.20
$LN3142:
        lea       rcx, QWORD PTR [17888+rbp]                    ;158.20
$LN3143:
        lea       r8, QWORD PTR [MET_FI_mp_LANDUSE]             ;158.20
$LN3144:
        mov       r9, rdx                                       ;158.20
$LN3145:
        call      for_trim                                      ;158.20
$LN3146:
                                ; LOE r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.80::                       ; Preds .B11.79
                                ; Execution count [2.98e-002]: Infreq
$LN3147:
        mov       rsi, rsp                                      ;158.1
$LN3148:
        lea       rcx, QWORD PTR [17968+rbp]                    ;158.1
$LN3149:
        movsxd    rax, eax                                      ;158.1
$LN3150:
        mov       edx, 64                                       ;158.1
$LN3151:
        mov       r9, rax                                       ;158.1
$LN3152:
        lea       r8, QWORD PTR [17888+rbp]                     ;158.1
$LN3153:
        mov       QWORD PTR [32+rsi], 0                         ;158.1
$LN3154:
        call      for_cpystr                                    ;158.1
$LN3155:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.81::                       ; Preds .B11.80
                                ; Execution count [2.98e-002]: Infreq
$LN3156:
        lea       rcx, QWORD PTR [17968+rbp]                    ;160.9
$LN3157:
        call      LANDUSECATFROMSTRING                          ;160.9
$LN3158:
                                ; LOE r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.82::                       ; Preds .B11.81
                                ; Execution count [2.98e-002]: Infreq
$LN3159:
        mov       DWORD PTR [MET_FI_mp_I_CAT], eax              ;160.1
$LN3160:
        call      EXITLANDUSE                                   ;162.7
$LN3161:
                                ; LOE r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.83::                       ; Preds .B11.82
                                ; Execution count [2.98e-002]: Infreq
$LN3162:
        mov       DWORD PTR [17684+rbp], eax                    ;162.1
$LN3163:
        cmp       eax, 1                                        ;163.9
$LN3164:
        jne       .B11.64       ; Prob 21%                      ;163.9
$LN3165:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.84::                       ; Preds .B11.83
                                ; Execution count [2.33e-002]: Infreq
$LN3166:
        test      BYTE PTR [MET_FI_mp_LBL], 1                   ;170.5
$LN3167:
        jne       .B11.596      ; Prob 15%                      ;170.5
$LN3168:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.85::                       ; Preds .B11.84
                                ; Execution count [1.96e-002]: Infreq
$LN3169:
        test      BYTE PTR [FLAGS_FI_mp_EVAPORATION], 1         ;179.7
$LN3170:
        je        .B11.90       ; Prob 29%                      ;179.7
$LN3171:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.86::                       ; Preds .B11.85
                                ; Execution count [1.38e-002]: Infreq
$LN3172:
        mov       rax, rsp                                      ;181.5
$LN3173:
        mov       rcx, r12                                      ;181.5
$LN3174:
        mov       edx, 80                                       ;181.5
$LN3175:
        lea       r8, QWORD PTR [__STRLITPACK_146]              ;181.5
$LN3176:
        mov       r9d, 8                                        ;181.5
$LN3177:
        mov       DWORD PTR [464+r12], 99                       ;180.5
$LN3178:
        mov       QWORD PTR [32+rax], 0                         ;181.5
$LN3179:
        call      for_cpystr                                    ;181.5
$LN3180:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.87::                       ; Preds .B11.86
                                ; Execution count [1.38e-002]: Infreq
$LN3181:
        mov       rax, rsp                                      ;182.5
$LN3182:
        lea       rcx, QWORD PTR [80+r12]                       ;182.5
$LN3183:
        mov       edx, 128                                      ;182.5
$LN3184:
        lea       r8, QWORD PTR [__STRLITPACK_145]              ;182.5
$LN3185:
        mov       r9d, 53                                       ;182.5
$LN3186:
        mov       QWORD PTR [32+rax], 0                         ;182.5
$LN3187:
        call      for_cpystr                                    ;182.5
$LN3188:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.88::                       ; Preds .B11.87
                                ; Execution count [1.38e-002]: Infreq
$LN3189:
        mov       rax, rsp                                      ;183.5
$LN3190:
        add       r12, 208                                      ;183.5
$LN3191:
        mov       rcx, r12                                      ;183.5
$LN3192:
        mov       edx, 128                                      ;183.5
$LN3193:
        lea       r8, QWORD PTR [__STRLITPACK_144]              ;183.5
$LN3194:
        mov       r9d, 28                                       ;183.5
$LN3195:
        mov       QWORD PTR [32+rax], 0                         ;183.5
$LN3196:
        call      for_cpystr                                    ;183.5
$LN3197:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.89::                       ; Preds .B11.88
                                ; Execution count [1.38e-002]: Infreq
$LN3198:
        mov       rdx, rsp                                      ;184.10
$LN3199:
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_MSC]         ;184.10
$LN3200:
        mov       rcx, r12                                      ;184.10
$LN3201:
        lea       r8, QWORD PTR [__STRLITPACK_143]              ;184.10
$LN3202:
        mov       r9d, 5                                        ;184.10
$LN3203:
        mov       QWORD PTR [32+rdx], rax                       ;184.10
$LN3204:
        mov       QWORD PTR [40+rdx], 256                       ;184.10
$LN3205:
        mov       edx, 128                                      ;184.10
$LN3206:
        call      REPORTFILENAME                                ;184.10
$LN3207:
        jmp       .B11.65       ; Prob 100%                     ;184.10
$LN3208:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.90::                       ; Preds .B11.85 .B11.597
                                ; Execution count [6.65e-003]: Infreq
$LN3209:
        mov       edx, 80                                       ;192.14
$LN3210:
        lea       rcx, QWORD PTR [17696+rbp]                    ;192.14
$LN3211:
        lea       r8, QWORD PTR [MET_FI_mp_BL_TYPE]             ;192.14
$LN3212:
        mov       r9, rdx                                       ;192.14
$LN3213:
        mov       r14, rsp                                      ;206.5
$LN3214:
        call      for_trim                                      ;192.14
$LN3215:
                                ; LOE r12 r14 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.91::                       ; Preds .B11.90
                                ; Execution count [6.65e-003]: Infreq
$LN3216:
        movsxd    r13, eax                                      ;192.14
$LN3217:
        mov       rax, r13                                      ;192.14
$LN3218:
        add       rax, 15                                       ;192.14
$LN3219:
        and       rax, -16                                      ;192.14
$LN3220:
        call      __chkstk                                      ;192.14
$LN3221:
        sub       rsp, rax                                      ;192.14
$LN3222:
        lea       rax, QWORD PTR [96+rsp]                       ;192.14
$LN3223:
                                ; LOE rax r12 r13 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.622::                      ; Preds .B11.91
                                ; Execution count [6.65e-003]: Infreq
$LN3224:
        mov       r15, rax                                      ;192.14
$LN3225:
        lea       rdx, QWORD PTR [17696+rbp]                    ;192.14
$LN3226:
        mov       rcx, r15                                      ;192.14
$LN3227:
        mov       r8, r13                                       ;192.14
$LN3228:
        call      memmove                                       ;192.14
$LN3229:
                                ; LOE r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.92::                       ; Preds .B11.622
                                ; Execution count [6.65e-003]: Infreq
$LN3230:
        mov       rsi, rsp                                      ;193.9
$LN3231:
        mov       rcx, r15                                      ;193.9
$LN3232:
        mov       rdx, r13                                      ;193.9
$LN3233:
        lea       r8, QWORD PTR [__STRLITPACK_142]              ;193.9
$LN3234:
        mov       r9d, 3                                        ;193.9
$LN3235:
        mov       QWORD PTR [32+rsi], 2                         ;193.9
$LN3236:
        call      for_cpstr                                     ;193.9
$LN3237:
                                ; LOE rax r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.623::                      ; Preds .B11.92
                                ; Execution count [6.65e-003]: Infreq
$LN3238:
        test      eax, eax                                      ;193.9
$LN3239:
        je        .B11.94       ; Prob 50%                      ;193.9
$LN3240:
                                ; LOE r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.93::                       ; Preds .B11.623
                                ; Execution count [3.33e-003]: Infreq
$LN3241:
        mov       DWORD PTR [18312+rbp], 1                      ;194.5
$LN3242:
        mov       esi, 2                                        ;194.5
$LN3243:
        jmp       .B11.106      ; Prob 100%                     ;194.5
$LN3244:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.94::                       ; Preds .B11.623
                                ; Execution count [3.33e-003]: Infreq
$LN3245:
        mov       rsi, rsp                                      ;195.9
$LN3246:
        mov       rcx, r15                                      ;195.9
$LN3247:
        mov       rdx, r13                                      ;195.9
$LN3248:
        lea       r8, QWORD PTR [__STRLITPACK_141]              ;195.9
$LN3249:
        mov       r9d, 4                                        ;195.9
$LN3250:
        mov       QWORD PTR [32+rsi], 2                         ;195.9
$LN3251:
        call      for_cpstr                                     ;195.9
$LN3252:
                                ; LOE rax r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.624::                      ; Preds .B11.94
                                ; Execution count [3.33e-003]: Infreq
$LN3253:
        test      eax, eax                                      ;195.9
$LN3254:
        je        .B11.96       ; Prob 22%                      ;195.9
$LN3255:
                                ; LOE r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.95::                       ; Preds .B11.624
                                ; Execution count [2.59e-003]: Infreq
$LN3256:
        mov       DWORD PTR [18312+rbp], 6                      ;196.5
$LN3257:
        mov       esi, 2                                        ;196.5
$LN3258:
        jmp       .B11.106      ; Prob 100%                     ;196.5
$LN3259:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.96::                       ; Preds .B11.624
                                ; Execution count [7.32e-004]: Infreq
$LN3260:
        mov       rdi, rsp                                      ;197.9
$LN3261:
        mov       rcx, r15                                      ;197.9
$LN3262:
        mov       rdx, r13                                      ;197.9
$LN3263:
        lea       r8, QWORD PTR [__STRLITPACK_140]              ;197.9
$LN3264:
        mov       r9d, 3                                        ;197.9
$LN3265:
        mov       esi, 2                                        ;197.9
$LN3266:
        mov       QWORD PTR [32+rdi], rsi                       ;197.9
$LN3267:
        call      for_cpstr                                     ;197.9
$LN3268:
                                ; LOE rax rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.626::                      ; Preds .B11.96
                                ; Execution count [7.32e-004]: Infreq
$LN3269:
        mov       r10, rsp                                      ;197.15
$LN3270:
        mov       rcx, r15                                      ;197.15
$LN3271:
        mov       rdx, r13                                      ;197.15
$LN3272:
        lea       r8, QWORD PTR [__STRLITPACK_139]              ;197.15
$LN3273:
        mov       r9d, 5                                        ;197.15
$LN3274:
        mov       rdi, rax                                      ;197.9
$LN3275:
        mov       QWORD PTR [32+r10], rsi                       ;197.15
$LN3276:
        call      for_cpstr                                     ;197.15
$LN3277:
                                ; LOE rax rsi rdi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.625::                      ; Preds .B11.626
                                ; Execution count [7.32e-004]: Infreq
$LN3278:
        test      edi, edi                                      ;197.9
$LN3279:
        jne       .B11.98       ; Prob 50%                      ;197.9
$LN3280:
                                ; LOE rax rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.97::                       ; Preds .B11.625
                                ; Execution count [3.66e-004]: Infreq
$LN3281:
        test      eax, eax                                      ;197.9
$LN3282:
        je        .B11.99       ; Prob 50%                      ;197.9
$LN3283:
                                ; LOE rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.98::                       ; Preds .B11.625 .B11.97
                                ; Execution count [5.49e-004]: Infreq
$LN3284:
        mov       DWORD PTR [18312+rbp], 2                      ;198.5
$LN3285:
        jmp       .B11.106      ; Prob 100%                     ;198.5
$LN3286:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.99::                       ; Preds .B11.97
                                ; Execution count [1.83e-004]: Infreq
$LN3287:
        mov       rdi, rsp                                      ;199.9
$LN3288:
        mov       rcx, r15                                      ;199.9
$LN3289:
        mov       rdx, r13                                      ;199.9
$LN3290:
        lea       r8, QWORD PTR [__STRLITPACK_138]              ;199.9
$LN3291:
        mov       r9d, 4                                        ;199.9
$LN3292:
        mov       QWORD PTR [32+rdi], 2                         ;199.9
$LN3293:
        call      for_cpstr                                     ;199.9
$LN3294:
                                ; LOE rax rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.627::                      ; Preds .B11.99
                                ; Execution count [1.83e-004]: Infreq
$LN3295:
        test      eax, eax                                      ;199.9
$LN3296:
        je        .B11.101      ; Prob 50%                      ;199.9
$LN3297:
                                ; LOE rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.100::                      ; Preds .B11.627
                                ; Execution count [9.15e-005]: Infreq
$LN3298:
        mov       DWORD PTR [18312+rbp], 4                      ;200.5
$LN3299:
        jmp       .B11.106      ; Prob 100%                     ;200.5
$LN3300:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.101::                      ; Preds .B11.627
                                ; Execution count [9.15e-005]: Infreq
$LN3301:
        mov       rdi, rsp                                      ;201.9
$LN3302:
        mov       rcx, r15                                      ;201.9
$LN3303:
        mov       rdx, r13                                      ;201.9
$LN3304:
        lea       r8, QWORD PTR [__STRLITPACK_137]              ;201.9
$LN3305:
        mov       r9d, 4                                        ;201.9
$LN3306:
        mov       QWORD PTR [32+rdi], 2                         ;201.9
$LN3307:
        call      for_cpstr                                     ;201.9
$LN3308:
                                ; LOE rax rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.628::                      ; Preds .B11.101
                                ; Execution count [9.15e-005]: Infreq
$LN3309:
        test      eax, eax                                      ;201.9
$LN3310:
        je        .B11.103      ; Prob 50%                      ;201.9
$LN3311:
                                ; LOE rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.102::                      ; Preds .B11.628
                                ; Execution count [4.57e-005]: Infreq
$LN3312:
        mov       DWORD PTR [18312+rbp], 5                      ;202.5
$LN3313:
        jmp       .B11.106      ; Prob 100%                     ;202.5
$LN3314:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.103::                      ; Preds .B11.628
                                ; Execution count [4.57e-005]: Infreq
$LN3315:
        mov       rdi, rsp                                      ;203.9
$LN3316:
        mov       rcx, r15                                      ;203.9
$LN3317:
        mov       rdx, r13                                      ;203.9
$LN3318:
        lea       r8, QWORD PTR [__STRLITPACK_136]              ;203.9
$LN3319:
        mov       r9d, 4                                        ;203.9
$LN3320:
        mov       QWORD PTR [32+rdi], 2                         ;203.9
$LN3321:
        call      for_cpstr                                     ;203.9
$LN3322:
                                ; LOE rax rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.629::                      ; Preds .B11.103
                                ; Execution count [4.57e-005]: Infreq
$LN3323:
        test      eax, eax                                      ;203.9
$LN3324:
        je        .B11.105      ; Prob 50%                      ;203.9
$LN3325:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.104::                      ; Preds .B11.629
                                ; Execution count [2.29e-005]: Infreq
$LN3326:
        mov       DWORD PTR [18312+rbp], 0                      ;204.5
$LN3327:
        jmp       .B11.106      ; Prob 100%                     ;204.5
$LN3328:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.105::                      ; Preds .B11.629
                                ; Execution count [2.29e-005]: Infreq
$LN3329:
        mov       DWORD PTR [18312+rbp], 6                      ;206.5
$LN3330:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.106::                      ; Preds .B11.93 .B11.95 .B11.98 .B11.100 .B11.102
                                ;       .B11.104 .B11.105
                                ; Execution count [6.65e-003]: Infreq
$LN3331:
        mov       rax, r14                                      ;206.5
$LN3332:
        mov       rsp, rax                                      ;206.5
$LN3333:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.631::                      ; Preds .B11.106
                                ; Execution count [6.65e-003]: Infreq
$LN3334:
        mov       edx, 80                                       ;211.14
$LN3335:
        lea       rcx, QWORD PTR [17776+rbp]                    ;211.14
$LN3336:
        lea       r8, QWORD PTR [MET_FI_mp_ENSM_TYPE]           ;211.14
$LN3337:
        mov       r9, rdx                                       ;211.14
$LN3338:
        mov       r14, rsp                                      ;221.5
$LN3339:
        call      for_trim                                      ;211.14
$LN3340:
                                ; LOE rsi r12 r14 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.107::                      ; Preds .B11.631
                                ; Execution count [6.65e-003]: Infreq
$LN3341:
        movsxd    r13, eax                                      ;211.14
$LN3342:
        mov       rax, r13                                      ;211.14
$LN3343:
        add       rax, 15                                       ;211.14
$LN3344:
        and       rax, -16                                      ;211.14
$LN3345:
        call      __chkstk                                      ;211.14
$LN3346:
        sub       rsp, rax                                      ;211.14
$LN3347:
        lea       rax, QWORD PTR [96+rsp]                       ;211.14
$LN3348:
                                ; LOE rax rsi r12 r13 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.632::                      ; Preds .B11.107
                                ; Execution count [6.65e-003]: Infreq
$LN3349:
        mov       r15, rax                                      ;211.14
$LN3350:
        lea       rdx, QWORD PTR [17776+rbp]                    ;211.14
$LN3351:
        mov       rcx, r15                                      ;211.14
$LN3352:
        mov       r8, r13                                       ;211.14
$LN3353:
        call      memmove                                       ;211.14
$LN3354:
                                ; LOE rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.108::                      ; Preds .B11.632
                                ; Execution count [6.65e-003]: Infreq
$LN3355:
        mov       rdi, rsp                                      ;212.9
$LN3356:
        mov       rcx, r15                                      ;212.9
$LN3357:
        mov       rdx, r13                                      ;212.9
$LN3358:
        lea       r8, QWORD PTR [__STRLITPACK_135]              ;212.9
$LN3359:
        mov       r9d, 3                                        ;212.9
$LN3360:
        mov       QWORD PTR [32+rdi], rsi                       ;212.9
$LN3361:
        call      for_cpstr                                     ;212.9
$LN3362:
                                ; LOE rax rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.634::                      ; Preds .B11.108
                                ; Execution count [6.65e-003]: Infreq
$LN3363:
        mov       r10, rsp                                      ;212.15
$LN3364:
        mov       rcx, r15                                      ;212.15
$LN3365:
        mov       rdx, r13                                      ;212.15
$LN3366:
        lea       r8, QWORD PTR [__STRLITPACK_134]              ;212.15
$LN3367:
        mov       r9d, 4                                        ;212.15
$LN3368:
        mov       rdi, rax                                      ;212.9
$LN3369:
        mov       QWORD PTR [32+r10], rsi                       ;212.15
$LN3370:
        call      for_cpstr                                     ;212.15
$LN3371:
                                ; LOE rax rsi rdi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.633::                      ; Preds .B11.634
                                ; Execution count [6.65e-003]: Infreq
$LN3372:
        test      edi, edi                                      ;212.9
$LN3373:
        jne       .B11.110      ; Prob 50%                      ;212.9
$LN3374:
                                ; LOE rax rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.109::                      ; Preds .B11.633
                                ; Execution count [3.33e-003]: Infreq
$LN3375:
        test      eax, eax                                      ;212.9
$LN3376:
        je        .B11.111      ; Prob 50%                      ;212.9
$LN3377:
                                ; LOE rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.110::                      ; Preds .B11.633 .B11.109
                                ; Execution count [4.99e-003]: Infreq
$LN3378:
        mov       DWORD PTR [18296+rbp], 0                      ;213.5
$LN3379:
        jmp       .B11.119      ; Prob 100%                     ;213.5
$LN3380:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.111::                      ; Preds .B11.109
                                ; Execution count [1.66e-003]: Infreq
$LN3381:
        mov       rdi, rsp                                      ;214.9
$LN3382:
        mov       rcx, r15                                      ;214.9
$LN3383:
        mov       rdx, r13                                      ;214.9
$LN3384:
        lea       r8, QWORD PTR [__STRLITPACK_133]              ;214.9
$LN3385:
        mov       r9d, 5                                        ;214.9
$LN3386:
        mov       QWORD PTR [32+rdi], 2                         ;214.9
$LN3387:
        call      for_cpstr                                     ;214.9
$LN3388:
                                ; LOE rax rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.635::                      ; Preds .B11.111
                                ; Execution count [1.66e-003]: Infreq
$LN3389:
        test      eax, eax                                      ;214.9
$LN3390:
        je        .B11.113      ; Prob 50%                      ;214.9
$LN3391:
                                ; LOE rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.112::                      ; Preds .B11.635
                                ; Execution count [8.32e-004]: Infreq
$LN3392:
        mov       DWORD PTR [18296+rbp], 1                      ;215.5
$LN3393:
        jmp       .B11.119      ; Prob 100%                     ;215.5
$LN3394:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.113::                      ; Preds .B11.635
                                ; Execution count [8.32e-004]: Infreq
$LN3395:
        mov       rdi, rsp                                      ;216.9
$LN3396:
        mov       rcx, r15                                      ;216.9
$LN3397:
        mov       rdx, r13                                      ;216.9
$LN3398:
        lea       r8, QWORD PTR [__STRLITPACK_132]              ;216.9
$LN3399:
        mov       r9d, 5                                        ;216.9
$LN3400:
        mov       QWORD PTR [32+rdi], 2                         ;216.9
$LN3401:
        call      for_cpstr                                     ;216.9
$LN3402:
                                ; LOE rax rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.636::                      ; Preds .B11.113
                                ; Execution count [8.32e-004]: Infreq
$LN3403:
        test      eax, eax                                      ;216.9
$LN3404:
        je        .B11.115      ; Prob 50%                      ;216.9
$LN3405:
                                ; LOE rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.114::                      ; Preds .B11.636
                                ; Execution count [4.16e-004]: Infreq
$LN3406:
        mov       DWORD PTR [18296+rbp], 2                      ;217.5
$LN3407:
        jmp       .B11.119      ; Prob 100%                     ;217.5
$LN3408:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.115::                      ; Preds .B11.636
                                ; Execution count [4.16e-004]: Infreq
$LN3409:
        mov       rdi, rsp                                      ;218.9
$LN3410:
        mov       rcx, r15                                      ;218.9
$LN3411:
        mov       rdx, r13                                      ;218.9
$LN3412:
        lea       r8, QWORD PTR [__STRLITPACK_131]              ;218.9
$LN3413:
        mov       r9d, 3                                        ;218.9
$LN3414:
        mov       QWORD PTR [32+rdi], 2                         ;218.9
$LN3415:
        call      for_cpstr                                     ;218.9
$LN3416:
                                ; LOE rax rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.637::                      ; Preds .B11.115
                                ; Execution count [4.16e-004]: Infreq
$LN3417:
        test      eax, eax                                      ;218.9
$LN3418:
        je        .B11.117      ; Prob 50%                      ;218.9
$LN3419:
                                ; LOE rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.116::                      ; Preds .B11.637
                                ; Execution count [2.08e-004]: Infreq
$LN3420:
        mov       DWORD PTR [18296+rbp], 3                      ;219.5
$LN3421:
        jmp       .B11.119      ; Prob 100%                     ;219.5
$LN3422:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.117::                      ; Preds .B11.637
                                ; Execution count [2.08e-004]: Infreq
$LN3423:
        mov       rdi, rsp                                      ;220.9
$LN3424:
        mov       rcx, r15                                      ;220.9
$LN3425:
        mov       rdx, r13                                      ;220.9
$LN3426:
        lea       r8, QWORD PTR [__STRLITPACK_130]              ;220.9
$LN3427:
        mov       r9d, 4                                        ;220.9
$LN3428:
        mov       QWORD PTR [32+rdi], 2                         ;220.9
$LN3429:
        call      for_cpstr                                     ;220.9
$LN3430:
                                ; LOE rax rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.638::                      ; Preds .B11.117
                                ; Execution count [2.08e-004]: Infreq
$LN3431:
        test      eax, eax                                      ;220.9
$LN3432:
        je        .B11.119      ; Prob 50%                      ;220.9
$LN3433:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.118::                      ; Preds .B11.638
                                ; Execution count [1.04e-004]: Infreq
$LN3434:
        mov       DWORD PTR [18296+rbp], 4                      ;221.5
$LN3435:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.119::                      ; Preds .B11.638 .B11.110 .B11.112 .B11.114 .B11.116
                                ;       .B11.118
                                ; Execution count [6.65e-003]: Infreq
$LN3436:
        mov       rax, r14                                      ;221.5
$LN3437:
        mov       rsp, rax                                      ;221.5
$LN3438:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.640::                      ; Preds .B11.119
                                ; Execution count [6.65e-003]: Infreq
$LN3439:
        mov       r11, rsp                                      ;232.9
$LN3440:
        lea       rcx, QWORD PTR [MET_FI_mp_MET_TYPE]           ;232.9
$LN3441:
        mov       eax, DWORD PTR [MET_FI_mp_UU_ENSM]            ;224.1
$LN3442:
        mov       edx, 80                                       ;232.9
$LN3443:
        mov       edi, DWORD PTR [MET_FI_mp_SL_ENSM]            ;225.1
$LN3444:
        lea       r8, QWORD PTR [__STRLITPACK_129]              ;232.9
$LN3445:
        mov       r10d, DWORD PTR [BASIC_FI_mp_EPSTROP]         ;226.1
$LN3446:
        mov       r9d, 3                                        ;232.9
$LN3447:
        mov       DWORD PTR [18300+rbp], eax                    ;224.1
$LN3448:
        mov       DWORD PTR [18304+rbp], edi                    ;225.1
$LN3449:
        mov       DWORD PTR [18308+rbp], r10d                   ;226.1
$LN3450:
        mov       QWORD PTR [32+r11], 2                         ;232.9
$LN3451:
        call      for_cpstr                                     ;232.9
$LN3452:
                                ; LOE rax rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.639::                      ; Preds .B11.640
                                ; Execution count [6.65e-003]: Infreq
$LN3453:
        test      eax, eax                                      ;232.9
$LN3454:
        je        .B11.218      ; Prob 50%                      ;232.9
$LN3455:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.120::                      ; Preds .B11.639
                                ; Execution count [3.33e-003]: Infreq
$LN3456:
        mov       eax, DWORD PTR [MET_FI_mp_LUA]                ;236.5
$LN3457:
        xor       edi, edi                                      ;234.5
$LN3458:
        and       eax, 1                                        ;236.9
$LN3459:
        test      BYTE PTR [MET_FI_mp_LSFC], 1                  ;235.9
$LN3460:
        je        .B11.123      ; Prob 60%                      ;235.9
$LN3461:
                                ; LOE rdi r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.121::                      ; Preds .B11.120
                                ; Execution count [1.33e-003]: Infreq
$LN3462:
        mov       edi, 1                                        ;235.15
$LN3463:
        test      eax, eax                                      ;236.9
$LN3464:
        jne       .B11.124      ; Prob 40%                      ;236.9
$LN3465:
                                ; LOE rdi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.122::                      ; Preds .B11.121
                                ; Execution count [7.98e-004]: Infreq
$LN3466:
        mov       DWORD PTR [18032+rbp], 1                      ;238.5
$LN3467:
        jmp       .B11.125      ; Prob 100%                     ;238.5
$LN3468:
                                ; LOE rdi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.123::                      ; Preds .B11.120
                                ; Execution count [2.00e-003]: Infreq
$LN3469:
        test      eax, eax                                      ;236.9
$LN3470:
        je        .B11.126      ; Prob 60%                      ;236.9
$LN3471:
                                ; LOE rdi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.124::                      ; Preds .B11.121 .B11.123
                                ; Execution count [1.33e-003]: Infreq
$LN3472:
        inc       rdi                                           ;236.15
$LN3473:
        mov       DWORD PTR [18032+rbp], edi                    ;238.5
$LN3474:
                                ; LOE rdi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.125::                      ; Preds .B11.122 .B11.124
                                ; Execution count [2.79e-003]: Infreq
$LN3475:
        mov       r8, rdi                                       ;239.5
$LN3476:
        jmp       .B11.128      ; Prob 100%                     ;239.5
$LN3477:
                                ; LOE rdi r8 r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.126::                      ; Preds .B11.123
                                ; Execution count [1.20e-003]: Infreq
$LN3478:
        mov       DWORD PTR [18032+rbp], 0                      ;238.5
$LN3479:
                                ; LOE rdi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.127::                      ; Preds .B11.126
                                ; Execution count [5.32e-004]: Infreq
$LN3480:
        xor       r8d, r8d                                      ;239.5
$LN3481:
                                ; LOE rdi r8 r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.128::                      ; Preds .B11.125 .B11.127
                                ; Execution count [3.33e-003]: Infreq
$LN3482:
        mov       edx, 2                                        ;239.5
$LN3483:
        lea       rcx, QWORD PTR [17688+rbp]                    ;239.5
$LN3484:
        mov       r9d, 256                                      ;239.5
$LN3485:
        call      for_check_mult_overflow64                     ;239.5
$LN3486:
                                ; LOE rdi r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.641::                      ; Preds .B11.128
                                ; Execution count [3.33e-003]: Infreq
$LN3487:
        mov       r8d, eax                                      ;239.5
$LN3488:
                                ; LOE rdi r12 r8d bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.129::                      ; Preds .B11.641
                                ; Execution count [3.33e-003]: Infreq
$LN3489:
        and       r8d, 1                                        ;239.5
$LN3490:
        mov       rax, 0fffffff00fffffffH                       ;239.5
$LN3491:
        shl       r8d, 4                                        ;239.5
$LN3492:
        lea       rdx, QWORD PTR [18040+rbp]                    ;239.5
$LN3493:
        and       rax, QWORD PTR [24+rdx]                       ;239.5
$LN3494:
        add       r8d, 262145                                   ;239.5
$LN3495:
        mov       rcx, QWORD PTR [17688+rbp]                    ;239.5
$LN3496:
        add       rax, 1073741824                               ;239.5
$LN3497:
        mov       QWORD PTR [24+rdx], rax                       ;239.5
$LN3498:
        call      for_allocate                                  ;239.5
$LN3499:
                                ; LOE rax rdi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.642::                      ; Preds .B11.129
                                ; Execution count [3.33e-003]: Infreq
$LN3500:
        mov       r13, rax                                      ;239.5
$LN3501:
                                ; LOE rdi r12 r13 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.130::                      ; Preds .B11.642
                                ; Execution count [3.33e-003]: Infreq
$LN3502:
        test      r13, r13                                      ;239.5
$LN3503:
        jne       .B11.136      ; Prob 50%                      ;239.5
$LN3504:
                                ; LOE rdi r12 r13 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.131::                      ; Preds .B11.130
                                ; Execution count [1.66e-003]: Infreq
$LN3505:
        xor       eax, eax                                      ;239.5
$LN3506:
        test      rdi, rdi                                      ;239.5
$LN3507:
        lea       rcx, QWORD PTR [9264+rbp]                     ;239.5
$LN3508:
        cmovle    rdi, rax                                      ;239.5
$LN3509:
        mov       r10d, 256                                     ;239.5
$LN3510:
        mov       edx, 2                                        ;239.5
$LN3511:
        mov       r8, rdi                                       ;239.5
$LN3512:
        mov       r9, r10                                       ;239.5
$LN3513:
        mov       esi, 1                                        ;239.5
$LN3514:
        mov       QWORD PTR [18064+rbp], 5                      ;239.5
$LN3515:
        mov       QWORD PTR [18048+rbp], r10                    ;239.5
$LN3516:
        mov       QWORD PTR [18072+rbp], rsi                    ;239.5
$LN3517:
        mov       QWORD PTR [18056+rbp], rax                    ;239.5
$LN3518:
        mov       QWORD PTR [18104+rbp], rsi                    ;239.5
$LN3519:
        mov       QWORD PTR [18088+rbp], rdi                    ;239.5
$LN3520:
        mov       QWORD PTR [18096+rbp], r10                    ;239.5
$LN3521:
        call      for_check_mult_overflow64                     ;239.5
$LN3522:
                                ; LOE rsi rdi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.132::                      ; Preds .B11.131
                                ; Execution count [1.66e-003]: Infreq
$LN3523:
        mov       edx, 2                                        ;239.5
$LN3524:
        lea       rcx, QWORD PTR [9272+rbp]                     ;239.5
$LN3525:
        mov       r8, rdi                                       ;239.5
$LN3526:
        mov       r9d, 4                                        ;239.5
$LN3527:
        call      for_check_mult_overflow64                     ;239.5
$LN3528:
                                ; LOE rsi rdi r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.643::                      ; Preds .B11.132
                                ; Execution count [1.66e-003]: Infreq
$LN3529:
        mov       r8d, eax                                      ;239.5
$LN3530:
                                ; LOE rsi rdi r12 r8d bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.133::                      ; Preds .B11.643
                                ; Execution count [1.66e-003]: Infreq
$LN3531:
        and       r8d, 1                                        ;239.5
$LN3532:
        mov       rax, 0fffffff00fffffffH                       ;239.5
$LN3533:
        shl       r8d, 4                                        ;239.5
$LN3534:
        lea       rdx, QWORD PTR [18112+rbp]                    ;239.5
$LN3535:
        and       rax, QWORD PTR [24+rdx]                       ;239.5
$LN3536:
        add       r8d, 262145                                   ;239.5
$LN3537:
        mov       rcx, QWORD PTR [9272+rbp]                     ;239.5
$LN3538:
        add       rax, 1073741824                               ;239.5
$LN3539:
        mov       QWORD PTR [24+rdx], rax                       ;239.5
$LN3540:
        call      for_allocate                                  ;239.5
$LN3541:
                                ; LOE rax rsi rdi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.644::                      ; Preds .B11.133
                                ; Execution count [1.66e-003]: Infreq
$LN3542:
        mov       r13, rax                                      ;239.5
$LN3543:
                                ; LOE rsi rdi r12 r13 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.134::                      ; Preds .B11.644
                                ; Execution count [1.66e-003]: Infreq
$LN3544:
        test      r13, r13                                      ;239.5
$LN3545:
        jne       .B11.136      ; Prob 50%                      ;239.5
$LN3546:
                                ; LOE rsi rdi r12 r13 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.135::                      ; Preds .B11.134
                                ; Execution count [8.32e-004]: Infreq
$LN3547:
        mov       eax, 4                                        ;239.5
$LN3548:
        lea       rcx, QWORD PTR [9256+rbp]                     ;239.5
$LN3549:
        mov       edx, 2                                        ;239.5
$LN3550:
        mov       r8, rdi                                       ;239.5
$LN3551:
        mov       r9, rax                                       ;239.5
$LN3552:
        mov       QWORD PTR [18136+rbp], 5                      ;239.5
$LN3553:
        mov       QWORD PTR [18120+rbp], rax                    ;239.5
$LN3554:
        mov       QWORD PTR [18144+rbp], rsi                    ;239.5
$LN3555:
        mov       QWORD PTR [18128+rbp], 0                      ;239.5
$LN3556:
        mov       QWORD PTR [18176+rbp], rsi                    ;239.5
$LN3557:
        mov       QWORD PTR [18160+rbp], rdi                    ;239.5
$LN3558:
        mov       QWORD PTR [18168+rbp], rax                    ;239.5
$LN3559:
        call      for_check_mult_overflow64                     ;239.5
$LN3560:
                                ; LOE r12 r13 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.136::                      ; Preds .B11.135 .B11.134 .B11.130
                                ; Execution count [3.33e-003]: Infreq
$LN3561:
        test      r13d, r13d                                    ;240.13
$LN3562:
        je        .B11.139      ; Prob 50%                      ;240.13
$LN3563:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.137::                      ; Preds .B11.136
                                ; Execution count [1.66e-003]: Infreq
$LN3564:
        mov       rax, rsp                                      ;242.7
$LN3565:
        mov       rcx, r12                                      ;242.7
$LN3566:
        mov       edx, 80                                       ;242.7
$LN3567:
        lea       r8, QWORD PTR [__STRLITPACK_128]              ;242.7
$LN3568:
        mov       r9d, 8                                        ;242.7
$LN3569:
        mov       DWORD PTR [464+r12], 99                       ;241.7
$LN3570:
        mov       QWORD PTR [32+rax], 0                         ;242.7
$LN3571:
        call      for_cpystr                                    ;242.7
$LN3572:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.138::                      ; Preds .B11.137
                                ; Execution count [1.66e-003]: Infreq
$LN3573:
        mov       rax, rsp                                      ;243.7
$LN3574:
        add       r12, 80                                       ;243.7
$LN3575:
        mov       rcx, r12                                      ;243.7
$LN3576:
        mov       edx, 128                                      ;243.7
$LN3577:
        lea       r8, QWORD PTR [__STRLITPACK_127]              ;243.7
$LN3578:
        mov       r9d, 27                                       ;243.7
$LN3579:
        mov       QWORD PTR [32+rax], 0                         ;243.7
$LN3580:
        call      for_cpystr                                    ;243.7
$LN3581:
        jmp       .B11.65       ; Prob 100%                     ;243.7
$LN3582:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.139::                      ; Preds .B11.136
                                ; Execution count [1.66e-003]: Infreq
$LN3583:
        xor       esi, esi                                      ;247.5
$LN3584:
        test      BYTE PTR [MET_FI_mp_LSFC], 1                  ;249.9
$LN3585:
        je        .B11.143      ; Prob 60%                      ;249.9
$LN3586:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.140::                      ; Preds .B11.139
                                ; Execution count [6.65e-004]: Infreq
$LN3587:
        mov       edx, 256                                      ;251.28
$LN3588:
        lea       rcx, QWORD PTR [15760+rbp]                    ;251.28
$LN3589:
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_SFC]          ;251.28
$LN3590:
        mov       r9, rdx                                       ;251.28
$LN3591:
        mov       esi, 1                                        ;250.7
$LN3592:
        call      for_trim                                      ;251.28
$LN3593:
                                ; LOE rsi r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.645::                      ; Preds .B11.140
                                ; Execution count [6.65e-004]: Infreq
$LN3594:
        mov       r9d, eax                                      ;251.28
$LN3595:
                                ; LOE rsi r12 r9d bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.141::                      ; Preds .B11.645
                                ; Execution count [6.65e-004]: Infreq
$LN3596:
        mov       rax, QWORD PTR [18096+rbp]                    ;251.7
$LN3597:
        mov       r10, rsp                                      ;251.7
$LN3598:
        mov       rdi, QWORD PTR [18104+rbp]                    ;251.7
$LN3599:
        mov       edx, 256                                      ;251.7
$LN3600:
        imul      rdi, rax                                      ;251.7
$LN3601:
        mov       rcx, QWORD PTR [18040+rbp]                    ;251.7
$LN3602:
        lea       r8, QWORD PTR [15760+rbp]                     ;251.7
$LN3603:
        add       rcx, rax                                      ;251.7
$LN3604:
        movsxd    r9, r9d                                       ;251.7
$LN3605:
        sub       rcx, rdi                                      ;251.7
$LN3606:
        mov       QWORD PTR [32+r10], 0                         ;251.7
$LN3607:
        call      for_cpystr                                    ;251.7
$LN3608:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.142::                      ; Preds .B11.141
                                ; Execution count [6.65e-004]: Infreq
$LN3609:
        mov       rdx, QWORD PTR [18168+rbp]                    ;252.7
$LN3610:
        mov       rax, QWORD PTR [18176+rbp]                    ;252.7
$LN3611:
        imul      rax, rdx                                      ;252.7
$LN3612:
        mov       rdi, QWORD PTR [18112+rbp]                    ;252.7
$LN3613:
        sub       rdi, rax                                      ;252.7
$LN3614:
        mov       DWORD PTR [rdx+rdi], 0                        ;252.7
$LN3615:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.143::                      ; Preds .B11.142 .B11.139
                                ; Execution count [1.66e-003]: Infreq
$LN3616:
        test      BYTE PTR [MET_FI_mp_LUA], 1                   ;255.9
$LN3617:
        je        .B11.147      ; Prob 60%                      ;255.9
$LN3618:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.144::                      ; Preds .B11.143
                                ; Execution count [6.65e-004]: Infreq
$LN3619:
        mov       edx, 256                                      ;257.28
$LN3620:
        lea       rcx, QWORD PTR [16016+rbp]                    ;257.28
$LN3621:
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_MET]          ;257.28
$LN3622:
        mov       r9, rdx                                       ;257.28
$LN3623:
        call      for_trim                                      ;257.28
$LN3624:
                                ; LOE rsi r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.646::                      ; Preds .B11.144
                                ; Execution count [6.65e-004]: Infreq
$LN3625:
        mov       r9d, eax                                      ;257.28
$LN3626:
                                ; LOE rsi r12 r9d bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.145::                      ; Preds .B11.646
                                ; Execution count [6.65e-004]: Infreq
$LN3627:
        mov       rax, QWORD PTR [18104+rbp]                    ;257.7
$LN3628:
        mov       rdi, rsp                                      ;257.7
$LN3629:
        neg       rax                                           ;257.7
$LN3630:
        mov       edx, 256                                      ;257.7
$LN3631:
        movsxd    r9, r9d                                       ;257.7
$LN3632:
        lea       r8, QWORD PTR [16016+rbp]                     ;257.7
$LN3633:
        mov       QWORD PTR [32+rdi], 0                         ;257.7
$LN3634:
        lea       rcx, QWORD PTR [1+rax+rsi]                    ;257.7
$LN3635:
        imul      rcx, QWORD PTR [18096+rbp]                    ;257.7
$LN3636:
        add       rcx, QWORD PTR [18040+rbp]                    ;257.7
$LN3637:
        call      for_cpystr                                    ;257.7
$LN3638:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.146::                      ; Preds .B11.145
                                ; Execution count [6.65e-004]: Infreq
$LN3639:
        mov       rax, QWORD PTR [18176+rbp]                    ;258.7
$LN3640:
        neg       rax                                           ;258.7
$LN3641:
        mov       rdx, QWORD PTR [18112+rbp]                    ;258.7
$LN3642:
        lea       rsi, QWORD PTR [1+rax+rsi]                    ;258.7
$LN3643:
        imul      rsi, QWORD PTR [18168+rbp]                    ;258.7
$LN3644:
        mov       DWORD PTR [rdx+rsi], 0                        ;258.7
$LN3645:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.147::                      ; Preds .B11.143 .B11.580 .B11.146 .B11.592 .B11.521
                                ;      
                                ; Execution count [1.76e-003]: Infreq
$LN3646:
        test      bl, 1                                         ;617.5
$LN3647:
        je        .B11.155      ; Prob 60%                      ;617.5
$LN3648:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.148::                      ; Preds .B11.147
                                ; Execution count [7.02e-004]: Infreq
$LN3649:
        movsxd    r8, DWORD PTR [18032+rbp]                     ;618.3
$LN3650:
        cmp       r8, 1                                         ;618.24
$LN3651:
        jle       .B11.155      ; Prob 16%                      ;618.24
$LN3652:
                                ; LOE r8 r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.149::                      ; Preds .B11.148
                                ; Execution count [5.78e-004]: Infreq
$LN3653:
        mov       r9, QWORD PTR [18176+rbp]                     ;620.7
$LN3654:
        mov       edi, 1                                        ;619.5
$LN3655:
        mov       rbx, QWORD PTR [18168+rbp]                    ;620.7
$LN3656:
        mov       esi, 1                                        ;619.5
$LN3657:
        imul      r9, rbx                                       ;620.11
$LN3658:
        mov       rax, QWORD PTR [18112+rbp]                    ;620.7
$LN3659:
        mov       rdx, rbx                                      ;619.5
$LN3660:
        sub       rax, r9                                       ;620.11
$LN3661:
                                ; LOE rax rdx rbx rdi r8 r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.150::                      ; Preds .B11.153 .B11.149
                                ; Execution count [1.95e-003]: Infreq
$LN3662:
        mov       r9d, DWORD PTR [rdx+rax]                      ;620.11
$LN3663:
        cmp       r9d, 1                                        ;620.28
$LN3664:
        je        .B11.153      ; Prob 16%                      ;620.28
$LN3665:
                                ; LOE rax rdx rbx rdi r8 r12 esi r9d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.151::                      ; Preds .B11.150
                                ; Execution count [1.64e-003]: Infreq
$LN3666:
        cmp       r9d, 10                                       ;621.28
$LN3667:
        je        .B11.153      ; Prob 16%                      ;621.28
$LN3668:
                                ; LOE rax rdx rbx rdi r8 r12 esi r9d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.152::                      ; Preds .B11.151
                                ; Execution count [1.38e-003]: Infreq
$LN3669:
        cmp       r9d, 11                                       ;622.28
$LN3670:
        jne       .B11.321      ; Prob 20%                      ;622.28
$LN3671:
                                ; LOE rax rdx rbx rdi r8 r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.153::                      ; Preds .B11.150 .B11.151 .B11.152
                                ; Execution count [1.68e-003]: Infreq
$LN3672:
        inc       rdi                                           ;619.5
$LN3673:
        add       rdx, rbx                                      ;619.5
$LN3674:
        mov       esi, edi                                      ;619.5
$LN3675:
        cmp       rdi, r8                                       ;619.5
$LN3676:
        jle       .B11.150      ; Prob 82%                      ;619.5
$LN3677:
                                ; LOE rax rdx rbx rdi r8 r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.154::                      ; Preds .B11.153
                                ; Execution count [3.02e-004]: Infreq
$LN3678:
        mov       DWORD PTR [17680+rbp], esi                    ;340.5
$LN3679:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.155::                      ; Preds .B11.147 .B11.148 .B11.154
                                ; Execution count [1.48e-003]: Infreq
$LN3680:
        lea       rcx, QWORD PTR [FILES_FI_mp_FILE_TER]         ;634.18
$LN3681:
        mov       edx, 256                                      ;634.18
$LN3682:
        call      for_len_trim                                  ;634.18
$LN3683:
                                ; LOE r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.647::                      ; Preds .B11.155
                                ; Execution count [1.48e-003]: Infreq
$LN3684:
        test      BYTE PTR [MET_FI_mp_LMC_UA], 1                ;634.5
$LN3685:
        je        .B11.157      ; Prob 29%                      ;634.5
$LN3686:
                                ; LOE r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.156::                      ; Preds .B11.647
                                ; Execution count [1.04e-003]: Infreq
$LN3687:
        test      eax, eax                                      ;634.37
$LN3688:
        jne       .B11.246      ; Prob 5%                       ;634.37
$LN3689:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.157::                      ; Preds .B11.647 .B11.156 .B11.247
                                ; Execution count [1.44e-003]: Infreq
$LN3690:
        mov       edx, 256                                      ;641.24
$LN3691:
        lea       rcx, QWORD PTR [16288+rbp]                    ;641.24
$LN3692:
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_PRJ]          ;641.24
$LN3693:
        mov       r9, rdx                                       ;641.24
$LN3694:
        call      for_trim                                      ;641.24
$LN3695:
                                ; LOE r12 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.158::                      ; Preds .B11.157
                                ; Execution count [1.44e-003]: Infreq
$LN3696:
        mov       rbx, rsp                                      ;641.1
$LN3697:
        lea       rcx, QWORD PTR [19320+rbp]                    ;641.1
$LN3698:
        movsxd    rax, eax                                      ;641.1
$LN3699:
        mov       edx, 256                                      ;641.1
$LN3700:
        mov       r9, rax                                       ;641.1
$LN3701:
        lea       r8, QWORD PTR [16288+rbp]                     ;641.1
$LN3702:
        mov       QWORD PTR [32+rbx], 0                         ;641.1
$LN3703:
        call      for_cpystr                                    ;641.1
$LN3704:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.159::                      ; Preds .B11.158
                                ; Execution count [1.44e-003]: Infreq
$LN3705:
        mov       edx, 256                                      ;642.6
$LN3706:
        lea       rcx, QWORD PTR [19320+rbp]                    ;642.6
$LN3707:
        call      REMOVEEXTENSION                               ;642.6
$LN3708:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.160::                      ; Preds .B11.159
                                ; Execution count [1.44e-003]: Infreq
$LN3709:
        mov       eax, DWORD PTR [GRID_FI_mp_LMAP]              ;644.1
$LN3710:
        mov       DWORD PTR [18184+rbp], eax                    ;644.1
$LN3711:
        pxor      xmm15, xmm15                                  ;656.1
$LN3712:
        mov       eax, DWORD PTR [GRID_FI_mp_UTM_ZONE]          ;655.1
$LN3713:
        mov       DWORD PTR [18228+rbp], eax                    ;655.1
$LN3714:
        mov       eax, DWORD PTR [FLAGS_FI_mp_LOCAL]            ;658.1
$LN3715:
        mov       DWORD PTR [18236+rbp], eax                    ;658.1
$LN3716:
        mov       eax, DWORD PTR [MET_FI_mp_TBIN_MET]           ;659.1
$LN3717:
        mov       DWORD PTR [19040+rbp], eax                    ;659.1
$LN3718:
        mov       eax, DWORD PTR [TIME_FI_mp_TZONE]             ;660.1
$LN3719:
        mov       DWORD PTR [18240+rbp], eax                    ;660.1
$LN3720:
        mov       eax, DWORD PTR [TIME_FI_mp_TSTART]            ;665.1
$LN3721:
        mov       DWORD PTR [18252+rbp], eax                    ;665.1
$LN3722:
        mov       eax, DWORD PTR [TIME_FI_mp_DAY_START]         ;667.1
$LN3723:
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;662.1
$LN3724:
        movss     xmm1, DWORD PTR [TIME_FI_mp_TEND_R]           ;663.1
$LN3725:
        mov       DWORD PTR [18256+rbp], eax                    ;667.1
$LN3726:
        addss     xmm1, xmm0                                    ;663.1
$LN3727:
        mov       eax, DWORD PTR [TIME_FI_mp_MONTH_START]       ;668.1
$LN3728:
        mov       DWORD PTR [18260+rbp], eax                    ;668.1
$LN3729:
        mov       eax, DWORD PTR [TIME_FI_mp_YEAR_START]        ;669.1
$LN3730:
        mov       r8d, DWORD PTR [GRID_FI_mp_ZMAX]              ;649.1
$LN3731:
        mov       DWORD PTR [18264+rbp], eax                    ;669.1
$LN3732:
        mov       eax, DWORD PTR [TIME_FI_mp_JUL_START]         ;670.1
$LN3733:
        mov       edx, DWORD PTR [GRID_FI_mp_XMIN]              ;645.1
$LN3734:
        mov       ebx, DWORD PTR [GRID_FI_mp_XMAX]              ;646.1
$LN3735:
        mov       esi, DWORD PTR [GRID_FI_mp_YMIN]              ;647.1
$LN3736:
        mov       edi, DWORD PTR [GRID_FI_mp_YMAX]              ;648.1
$LN3737:
        mov       r9d, DWORD PTR [GRID_FI_mp_HRES]              ;650.1
$LN3738:
        mov       r10d, DWORD PTR [GRID_FI_mp_XREF]             ;651.1
$LN3739:
        mov       r11d, DWORD PTR [GRID_FI_mp_YREF]             ;652.1
$LN3740:
        mov       r13d, DWORD PTR [GRID_FI_mp_LAT0]             ;653.1
$LN3741:
        mov       r15d, DWORD PTR [GRID_FI_mp_LON0]             ;654.1
$LN3742:
        mov       DWORD PTR [18204+rbp], r8d                    ;649.1
$LN3743:
        mov       r8d, DWORD PTR [FLAGS_FI_mp_RUN_MODE]         ;673.1
$LN3744:
        mov       DWORD PTR [18268+rbp], eax                    ;670.1
$LN3745:
        mov       DWORD PTR [18188+rbp], edx                    ;645.1
$LN3746:
        mov       DWORD PTR [18192+rbp], ebx                    ;646.1
$LN3747:
        mov       DWORD PTR [18196+rbp], esi                    ;647.1
$LN3748:
        mov       DWORD PTR [18200+rbp], edi                    ;648.1
$LN3749:
        mov       DWORD PTR [18208+rbp], r9d                    ;650.1
$LN3750:
        mov       DWORD PTR [18212+rbp], r10d                   ;651.1
$LN3751:
        mov       DWORD PTR [18216+rbp], r11d                   ;652.1
$LN3752:
        mov       DWORD PTR [18224+rbp], r13d                   ;653.1
$LN3753:
        mov       DWORD PTR [18220+rbp], r15d                   ;654.1
$LN3754:
        movss     DWORD PTR [18232+rbp], xmm15                  ;656.1
$LN3755:
        movss     DWORD PTR [18244+rbp], xmm0                   ;662.1
$LN3756:
        movss     DWORD PTR [18248+rbp], xmm1                   ;663.1
$LN3757:
        mov       eax, DWORD PTR [TIME_FI_mp_DAY_END]           ;672.1
$LN3758:
        and       r8d, 128                                      ;673.5
$LN3759:
        je        .B11.162      ; Prob 60%                      ;673.5
$LN3760:
                                ; LOE r12 eax r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.161::                      ; Preds .B11.160
                                ; Execution count [5.76e-004]: Infreq
$LN3761:
        mov       DWORD PTR [18276+rbp], -1                     ;673.35
$LN3762:
        jmp       .B11.163      ; Prob 100%                     ;673.35
$LN3763:
                                ; LOE r12 r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.162::                      ; Preds .B11.160
                                ; Execution count [8.63e-004]: Infreq
$LN3764:
        mov       DWORD PTR [18276+rbp], eax                    ;672.1
$LN3765:
                                ; LOE r12 r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.163::                      ; Preds .B11.161 .B11.162
                                ; Execution count [1.44e-003]: Infreq
$LN3766:
        mov       eax, DWORD PTR [TIME_FI_mp_MONTH_END]         ;674.1
$LN3767:
        mov       edx, DWORD PTR [TIME_FI_mp_YEAR_END]          ;675.1
$LN3768:
        mov       ebx, DWORD PTR [MET_FI_mp_LOCAL_MET]          ;677.1
$LN3769:
        mov       esi, DWORD PTR [METPARAM_FD_mp_MAX1D_MET]     ;679.1
$LN3770:
        mov       DWORD PTR [18280+rbp], eax                    ;674.1
$LN3771:
        mov       DWORD PTR [18284+rbp], edx                    ;675.1
$LN3772:
        mov       edi, DWORD PTR [MET_FI_mp_LOUT_MET]           ;681.1
$LN3773:
        mov       edx, DWORD PTR [MET_FI_mp_LOUT_3D]            ;681.1
$LN3774:
        mov       eax, DWORD PTR [MET_FI_mp_LOUT_2D]            ;682.1
$LN3775:
        and       edx, edi                                      ;681.1
$LN3776:
        and       eax, edi                                      ;682.1
$LN3777:
        mov       DWORD PTR [19044+rbp], ebx                    ;677.1
$LN3778:
        mov       DWORD PTR [19024+rbp], esi                    ;679.1
$LN3779:
        test      r8d, r8d                                      ;684.5
$LN3780:
        je        .B11.165      ; Prob 60%                      ;684.5
$LN3781:
                                ; LOE r12 eax edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.164::                      ; Preds .B11.163
                                ; Execution count [5.76e-004]: Infreq
$LN3782:
        xor       esi, esi                                      ;685.3
$LN3783:
        mov       DWORD PTR [19048+rbp], esi                    ;685.3
$LN3784:
        mov       DWORD PTR [19052+rbp], esi                    ;686.3
$LN3785:
        mov       DWORD PTR [MET_FI_mp_LOUT_MET], esi           ;687.3
$LN3786:
        jmp       .B11.166      ; Prob 100%                     ;687.3
$LN3787:
                                ; LOE r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.165::                      ; Preds .B11.163
                                ; Execution count [8.63e-004]: Infreq
$LN3788:
        mov       DWORD PTR [19052+rbp], eax                    ;682.1
$LN3789:
        xor       esi, esi                                      ;681.1
$LN3790:
        mov       DWORD PTR [19048+rbp], edx                    ;681.1
$LN3791:
                                ; LOE r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.166::                      ; Preds .B11.164 .B11.165
                                ; Execution count [1.44e-003]: Infreq
$LN3792:
        mov       edx, 256                                      ;690.24
$LN3793:
        lea       rcx, QWORD PTR [16544+rbp]                    ;690.24
$LN3794:
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_MCW]          ;690.24
$LN3795:
        mov       r9, rdx                                       ;690.24
$LN3796:
        call      for_trim                                      ;690.24
$LN3797:
                                ; LOE r12 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.167::                      ; Preds .B11.166
                                ; Execution count [1.44e-003]: Infreq
$LN3798:
        mov       rdi, rsp                                      ;690.1
$LN3799:
        lea       rbx, QWORD PTR [19064+rbp]                    ;690.1
$LN3800:
        movsxd    rax, eax                                      ;690.1
$LN3801:
        mov       rcx, rbx                                      ;690.1
$LN3802:
        mov       edx, 256                                      ;690.1
$LN3803:
        lea       r8, QWORD PTR [16544+rbp]                     ;690.1
$LN3804:
        mov       r9, rax                                       ;690.1
$LN3805:
        mov       QWORD PTR [32+rdi], 0                         ;690.1
$LN3806:
        call      for_cpystr                                    ;690.1
$LN3807:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.168::                      ; Preds .B11.167
                                ; Execution count [1.44e-003]: Infreq
$LN3808:
        mov       rcx, rbx                                      ;692.5
$LN3809:
        mov       edx, 256                                      ;692.5
$LN3810:
        call      for_len_trim                                  ;692.5
$LN3811:
                                ; LOE rbx r12 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.650::                      ; Preds .B11.168
                                ; Execution count [1.44e-003]: Infreq
$LN3812:
        xor       edi, edi                                      ;693.51
$LN3813:
        lea       rcx, QWORD PTR [17584+rbp]                    ;693.1
$LN3814:
        movsxd    rax, eax                                      ;693.24
$LN3815:
        mov       edx, 2                                        ;693.1
$LN3816:
        add       rax, -3                                       ;693.24
$LN3817:
        mov       r8, rbx                                       ;693.1
$LN3818:
        lea       r10, QWORD PTR [__STRLITPACK_10]              ;693.51
$LN3819:
        cmovle    rax, rdi                                      ;693.51
$LN3820:
        mov       r9d, 256                                      ;693.51
$LN3821:
        mov       QWORD PTR [rcx], rbx                          ;693.51
$LN3822:
        mov       QWORD PTR [8+rcx], rax                        ;693.51
$LN3823:
        mov       QWORD PTR [16+rcx], r10                       ;693.51
$LN3824:
        mov       QWORD PTR [24+rcx], 3                         ;693.51
$LN3825:
        call      for_concat                                    ;693.1
$LN3826:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.169::                      ; Preds .B11.650
                                ; Execution count [1.44e-003]: Infreq
$LN3827:
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;695.1
$LN3828:
        ucomiss   xmm0, xmm15                                   ;695.29
$LN3829:
        jp        .B11.170      ; Prob 0%                       ;695.29
$LN3830:
        je        .B11.171      ; Prob 16%                      ;695.29
$LN3831:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.170::                      ; Preds .B11.169
                                ; Execution count [1.21e-003]: Infreq
$LN3832:
        mov       DWORD PTR [19056+rbp], 0                      ;695.1
$LN3833:
        jmp       .B11.172      ; Prob 100%                     ;695.1
$LN3834:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.171::                      ; Preds .B11.169
                                ; Execution count [2.30e-004]: Infreq
$LN3835:
        mov       DWORD PTR [19056+rbp], -1                     ;695.1
$LN3836:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.172::                      ; Preds .B11.171 .B11.170
                                ; Execution count [1.44e-003]: Infreq
$LN3837:
        mov       eax, DWORD PTR [MET_FI_mp_LFORMAT]            ;696.1
$LN3838:
        mov       edx, DWORD PTR [MET_FI_mp_N_SFC_MAX]          ;698.1
$LN3839:
        mov       DWORD PTR [19060+rbp], eax                    ;696.1
$LN3840:
        mov       eax, DWORD PTR [MET_FI_mp_N_OBS_MAX]          ;698.15
$LN3841:
        cmp       edx, 65535                                    ;698.15
$LN3842:
        je        .B11.318      ; Prob 16%                      ;698.15
$LN3843:
                                ; LOE rbx r12 eax edx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.173::                      ; Preds .B11.172
                                ; Execution count [1.21e-003]: Infreq
$LN3844:
        cmp       eax, 65535                                    ;698.44
$LN3845:
        je        .B11.175      ; Prob 16%                      ;698.44
$LN3846:
                                ; LOE rbx r12 eax edx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.174::                      ; Preds .B11.173
                                ; Execution count [1.02e-003]: Infreq
$LN3847:
        cmp       edx, eax                                      ;699.3
$LN3848:
        cmovl     edx, eax                                      ;699.3
$LN3849:
        mov       eax, edx                                      ;699.3
$LN3850:
        jmp       .B11.176      ; Prob 100%                     ;699.3
$LN3851:
                                ; LOE rbx r12 eax edx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.175::                      ; Preds .B11.173
                                ; Execution count [3.56e-004]: Infreq
$LN3852:
        mov       eax, edx                                      ;701.3
$LN3853:
                                ; LOE rbx r12 eax edx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.176::                      ; Preds .B11.175 .B11.319 .B11.174
                                ; Execution count [1.43e-003]: Infreq
$LN3854:
        test      edx, edx                                      ;707.25
$LN3855:
        jle       .B11.178      ; Prob 23%                      ;707.25
$LN3856:
                                ; LOE rbx r12 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.177::                      ; Preds .B11.176
                                ; Execution count [1.09e-003]: Infreq
$LN3857:
        mov       DWORD PTR [19028+rbp], eax                    ;699.3
$LN3858:
        jmp       .B11.179      ; Prob 100%                     ;699.3
$LN3859:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.178::                      ; Preds .B11.318 .B11.176
                                ; Execution count [3.41e-004]: Infreq
$LN3860:
        mov       DWORD PTR [19028+rbp], 8                      ;707.30
$LN3861:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.179::                      ; Preds .B11.178 .B11.177
                                ; Execution count [1.44e-003]: Infreq
$LN3862:
        movss     xmm2, DWORD PTR [_2il0floatpacket.30]         ;724.34
$LN3863:
        mov       edx, 256                                      ;737.32
$LN3864:
        movss     xmm1, DWORD PTR [MET_FI_mp_HCONST]            ;724.1
$LN3865:
        lea       rcx, QWORD PTR [17056+rbp]                    ;737.32
$LN3866:
        movss     xmm3, DWORD PTR [MET_FI_mp_HDIUR]             ;725.1
$LN3867:
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_TER]          ;737.32
$LN3868:
        divss     xmm1, xmm2                                    ;724.1
$LN3869:
        divss     xmm3, xmm2                                    ;725.1
$LN3870:
        mov       r15, QWORD PTR [10488+rbp]                    ;714.1[spill]
$LN3871:
        mov       r9, rdx                                       ;737.32
$LN3872:
        mov       eax, DWORD PTR [MET_FI_mp_NZBL]               ;709.1
$LN3873:
        mov       DWORD PTR [18316+rbp], eax                    ;709.1
$LN3874:
        mov       eax, DWORD PTR [r15]                          ;714.1
$LN3875:
        mov       DWORD PTR [18360+rbp], eax                    ;714.1
$LN3876:
        mov       eax, DWORD PTR [MET_FI_mp_ALPHA_CNP]          ;716.1
$LN3877:
        mov       DWORD PTR [18372+rbp], eax                    ;716.1
$LN3878:
        mov       eax, DWORD PTR [MET_FI_mp_BOWEN]              ;717.1
$LN3879:
        mov       DWORD PTR [18368+rbp], eax                    ;717.1
$LN3880:
        mov       eax, DWORD PTR [MET_FI_mp_ALBEDO]             ;718.1
$LN3881:
        mov       DWORD PTR [18376+rbp], eax                    ;718.1
$LN3882:
        mov       eax, DWORD PTR [MET_FI_mp_CLOUD_COVER]        ;719.1
$LN3883:
        mov       DWORD PTR [18380+rbp], eax                    ;719.1
$LN3884:
        mov       eax, DWORD PTR [MET_FI_mp_PR_RATE]            ;720.1
$LN3885:
        mov       DWORD PTR [18384+rbp], eax                    ;720.1
$LN3886:
        mov       eax, DWORD PTR [MET_FI_mp_I_WET]              ;721.1
$LN3887:
        mov       DWORD PTR [18388+rbp], eax                    ;721.1
$LN3888:
        mov       eax, DWORD PTR [MET_FI_mp_I_CAT]              ;722.1
$LN3889:
        movss     xmm0, DWORD PTR [MET_FI_mp_H_CNP]             ;715.1
$LN3890:
        mov       DWORD PTR [18392+rbp], eax                    ;722.1
$LN3891:
        maxss     xmm0, xmm15                                   ;715.1
$LN3892:
        mov       eax, DWORD PTR [MET_FI_mp_ZIMIN]              ;726.1
$LN3893:
        mov       DWORD PTR [18336+rbp], eax                    ;726.1
$LN3894:
        mov       eax, DWORD PTR [MET_FI_mp_ZIMAX]              ;727.1
$LN3895:
        test      BYTE PTR [MET_FI_mp_LMC_UA], 1                ;731.5
$LN3896:
        mov       DWORD PTR [18340+rbp], eax                    ;727.1
$LN3897:
        mov       eax, esi                                      ;732.3
$LN3898:
        mov       edi, DWORD PTR [MET_FI_mp_UU_CALM]            ;710.1
$LN3899:
        mov       r10d, DWORD PTR [MET_FI_mp_SL_CALM]           ;711.1
$LN3900:
        mov       r11d, DWORD PTR [BASIC_FI_mp_WWTROP]          ;712.1
$LN3901:
        mov       r13d, DWORD PTR [BASIC_FI_mp_SLTROP]          ;713.1
$LN3902:
        cmovne    eax, DWORD PTR [MET_FI_mp_MCTYPEMET]          ;732.3
$LN3903:
        mov       DWORD PTR [18320+rbp], edi                    ;710.1
$LN3904:
        mov       DWORD PTR [18324+rbp], r10d                   ;711.1
$LN3905:
        mov       DWORD PTR [18344+rbp], r11d                   ;712.1
$LN3906:
        mov       DWORD PTR [18348+rbp], r13d                   ;713.1
$LN3907:
        movss     DWORD PTR [18364+rbp], xmm0                   ;715.1
$LN3908:
        movss     DWORD PTR [18328+rbp], xmm1                   ;724.1
$LN3909:
        movss     DWORD PTR [18332+rbp], xmm3                   ;725.1
$LN3910:
        mov       DWORD PTR [18400+rbp], eax                    ;732.3
$LN3911:
        call      for_trim                                      ;737.32
$LN3912:
                                ; LOE rbx r12 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.180::                      ; Preds .B11.179
                                ; Execution count [1.44e-003]: Infreq
$LN3913:
        mov       rdi, rsp                                      ;737.1
$LN3914:
        lea       rcx, QWORD PTR [18404+rbp]                    ;737.1
$LN3915:
        movsxd    rax, eax                                      ;737.1
$LN3916:
        mov       edx, 256                                      ;737.1
$LN3917:
        mov       r9, rax                                       ;737.1
$LN3918:
        lea       r8, QWORD PTR [17056+rbp]                     ;737.1
$LN3919:
        mov       QWORD PTR [32+rdi], 0                         ;737.1
$LN3920:
        call      for_cpystr                                    ;737.1
$LN3921:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.181::                      ; Preds .B11.180
                                ; Execution count [1.44e-003]: Infreq
$LN3922:
        mov       edx, 256                                      ;738.32
$LN3923:
        lea       rcx, QWORD PTR [16800+rbp]                    ;738.32
$LN3924:
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_LUS]          ;738.32
$LN3925:
        mov       r9, rdx                                       ;738.32
$LN3926:
        call      for_trim                                      ;738.32
$LN3927:
                                ; LOE rbx r12 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.182::                      ; Preds .B11.181
                                ; Execution count [1.44e-003]: Infreq
$LN3928:
        mov       rdi, rsp                                      ;738.1
$LN3929:
        lea       rcx, QWORD PTR [18660+rbp]                    ;738.1
$LN3930:
        movsxd    rax, eax                                      ;738.1
$LN3931:
        mov       edx, 256                                      ;738.1
$LN3932:
        mov       r9, rax                                       ;738.1
$LN3933:
        lea       r8, QWORD PTR [16800+rbp]                     ;738.1
$LN3934:
        mov       QWORD PTR [32+rdi], 0                         ;738.1
$LN3935:
        call      for_cpystr                                    ;738.1
$LN3936:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.183::                      ; Preds .B11.182
                                ; Execution count [1.44e-003]: Infreq
$LN3937:
        mov       eax, DWORD PTR [MET_FI_mp_MAX_ITER_AC]        ;739.1
$LN3938:
        mov       edx, DWORD PTR [MET_FI_mp_MAX_ITER]           ;740.1
$LN3939:
        mov       edi, DWORD PTR [MET_FI_mp_ALPHA_MAX]          ;741.1
$LN3940:
        mov       r9d, DWORD PTR [MET_FI_mp_ALPHA_MIN]          ;742.1
$LN3941:
        mov       r10d, DWORD PTR [MET_FI_mp_AC_EPS]            ;743.1
$LN3942:
        mov       r11d, DWORD PTR [MET_FI_mp_P_EPS]             ;744.1
$LN3943:
        mov       r8d, DWORD PTR [MET_FI_mp_NZMC]               ;745.1
$LN3944:
        mov       DWORD PTR [18916+rbp], eax                    ;739.1
$LN3945:
        mov       DWORD PTR [18920+rbp], edx                    ;740.1
$LN3946:
        mov       DWORD PTR [18924+rbp], edi                    ;741.1
$LN3947:
        mov       DWORD PTR [18928+rbp], r9d                    ;742.1
$LN3948:
        mov       DWORD PTR [18932+rbp], r10d                   ;743.1
$LN3949:
        mov       DWORD PTR [18936+rbp], r11d                   ;744.1
$LN3950:
        mov       DWORD PTR [18944+rbp], r8d                    ;745.1
$LN3951:
        test      r8d, r8d                                      ;747.10
$LN3952:
        jle       .B11.208      ; Prob 78%                      ;747.10
$LN3953:
                                ; LOE rbx r12 esi r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.184::                      ; Preds .B11.183
                                ; Execution count [3.12e-004]: Infreq
$LN3954:
        movsxd    r8, r8d                                       ;748.3
$LN3955:
        xor       eax, eax                                      ;748.3
$LN3956:
        test      r8, r8                                        ;748.3
$LN3957:
        lea       rcx, QWORD PTR [4104+rbp]                     ;748.3
$LN3958:
        cmovle    r8, rax                                       ;748.3
$LN3959:
        mov       edx, 2                                        ;748.3
$LN3960:
        mov       r9d, 4                                        ;748.3
$LN3961:
        call      for_check_mult_overflow64                     ;748.3
$LN3962:
                                ; LOE rbx r12 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.653::                      ; Preds .B11.184
                                ; Execution count [3.12e-004]: Infreq
$LN3963:
        mov       r8d, eax                                      ;748.3
$LN3964:
                                ; LOE rbx r12 esi r8d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.185::                      ; Preds .B11.653
                                ; Execution count [3.12e-004]: Infreq
$LN3965:
        and       r8d, 1                                        ;748.3
$LN3966:
        mov       rax, 0fffffff00fffffffH                       ;748.3
$LN3967:
        shl       r8d, 4                                        ;748.3
$LN3968:
        lea       rdx, QWORD PTR [18952+rbp]                    ;748.3
$LN3969:
        and       rax, QWORD PTR [24+rdx]                       ;748.3
$LN3970:
        add       r8d, 262145                                   ;748.3
$LN3971:
        mov       rcx, QWORD PTR [4104+rbp]                     ;748.3
$LN3972:
        add       rax, 1073741824                               ;748.3
$LN3973:
        mov       QWORD PTR [24+rdx], rax                       ;748.3
$LN3974:
        call      for_allocate                                  ;748.3
$LN3975:
                                ; LOE rax rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.186::                      ; Preds .B11.185
                                ; Execution count [3.12e-004]: Infreq
$LN3976:
        test      rax, rax                                      ;748.3
$LN3977:
        jne       .B11.188      ; Prob 50%                      ;748.3
$LN3978:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.187::                      ; Preds .B11.186
                                ; Execution count [1.56e-004]: Infreq
$LN3979:
        movsxd    r8, DWORD PTR [MET_FI_mp_NZMC]                ;748.3
$LN3980:
        xor       edi, edi                                      ;748.3
$LN3981:
        test      r8, r8                                        ;748.3
$LN3982:
        cmovle    r8, rdi                                       ;748.3
$LN3983:
        mov       r10d, 4                                       ;748.3
$LN3984:
        lea       rcx, QWORD PTR [4016+rbp]                     ;748.3
$LN3985:
        mov       edx, 2                                        ;748.3
$LN3986:
        mov       r9, r10                                       ;748.3
$LN3987:
        mov       eax, 1                                        ;748.3
$LN3988:
        mov       QWORD PTR [18976+rbp], 5                      ;748.3
$LN3989:
        mov       QWORD PTR [18960+rbp], r10                    ;748.3
$LN3990:
        mov       QWORD PTR [18984+rbp], rax                    ;748.3
$LN3991:
        mov       QWORD PTR [18968+rbp], rdi                    ;748.3
$LN3992:
        mov       QWORD PTR [19016+rbp], rax                    ;748.3
$LN3993:
        mov       QWORD PTR [19000+rbp], r8                     ;748.3
$LN3994:
        mov       QWORD PTR [19008+rbp], r10                    ;748.3
$LN3995:
        call      for_check_mult_overflow64                     ;748.3
$LN3996:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.188::                      ; Preds .B11.187 .B11.186
                                ; Execution count [2.80e-004]: Infreq
$LN3997:
        mov       rcx, QWORD PTR [19000+rbp]                    ;749.3
$LN3998:
        mov       rdi, QWORD PTR [19016+rbp]                    ;749.3
$LN3999:
        mov       rdx, QWORD PTR [MET_FI_mp_ZMC+64]             ;749.3
$LN4000:
        test      rcx, rcx                                      ;749.3
$LN4001:
        jle       .B11.208      ; Prob 0%                       ;749.3
$LN4002:
                                ; LOE rdx rcx rbx rdi r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.189::                      ; Preds .B11.188
                                ; Execution count [0.00e+000]: Infreq
$LN4003:
        mov       r15, QWORD PTR [19008+rbp]                    ;749.3
$LN4004:
        mov       r8, QWORD PTR [18952+rbp]                     ;749.3
$LN4005:
        mov       r11, QWORD PTR [MET_FI_mp_ZMC]                ;749.3
$LN4006:
        cmp       r15, 4                                        ;749.3
$LN4007:
        jne       .B11.202      ; Prob 50%                      ;749.3
$LN4008:
                                ; LOE rdx rcx rbx rdi r8 r11 r12 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.190::                      ; Preds .B11.189
                                ; Execution count [1.40e-004]: Infreq
$LN4009:
        cmp       rcx, 4                                        ;749.3
$LN4010:
        jl        .B11.248      ; Prob 10%                      ;749.3
$LN4011:
                                ; LOE rcx rbx r8 r11 r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.191::                      ; Preds .B11.190
                                ; Execution count [7.79e-004]: Infreq
$LN4012:
        mov       rdx, rcx                                      ;749.3
$LN4013:
        xor       eax, eax                                      ;749.3
$LN4014:
        and       rdx, -4                                       ;749.3
$LN4015:
        test      r8, 15                                        ;749.3
$LN4016:
        je        .B11.196      ; Prob 60%                      ;749.3
$LN4017:
                                ; LOE rax rdx rcx rbx r8 r11 r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.193::                      ; Preds .B11.191 .B11.193
                                ; Execution count [7.79e-004]: Infreq
$LN4018:
        movups    xmm0, XMMWORD PTR [r11+rax*4]                 ;749.3
$LN4019:
        movups    XMMWORD PTR [r8+rax*4], xmm0                  ;749.3
$LN4020:
        add       rax, 4                                        ;749.3
$LN4021:
        cmp       rax, rdx                                      ;749.3
$LN4022:
        jb        .B11.193      ; Prob 82%                      ;749.3
$LN4023:
        jmp       .B11.198      ; Prob 100%                     ;749.3
$LN4024:
                                ; LOE rax rdx rcx rbx r8 r11 r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.196::                      ; Preds .B11.191 .B11.196
                                ; Execution count [7.79e-004]: Infreq
$LN4025:
        movups    xmm0, XMMWORD PTR [r11+rax*4]                 ;749.3
$LN4026:
        movups    XMMWORD PTR [r8+rax*4], xmm0                  ;749.3
$LN4027:
        add       rax, 4                                        ;749.3
$LN4028:
        cmp       rax, rdx                                      ;749.3
$LN4029:
        jb        .B11.196      ; Prob 82%                      ;749.3
$LN4030:
                                ; LOE rax rdx rcx rbx r8 r11 r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.198::                      ; Preds .B11.196 .B11.193 .B11.248
                                ; Execution count [1.56e-004]: Infreq
$LN4031:
        cmp       rdx, rcx                                      ;749.3
$LN4032:
        jae       .B11.208      ; Prob 10%                      ;749.3
$LN4033:
                                ; LOE rdx rcx rbx r8 r11 r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.200::                      ; Preds .B11.198 .B11.200
                                ; Execution count [7.79e-004]: Infreq
$LN4034:
        mov       eax, DWORD PTR [r11+rdx*4]                    ;749.3
$LN4035:
        mov       DWORD PTR [r8+rdx*4], eax                     ;749.3
$LN4036:
        inc       rdx                                           ;749.3
$LN4037:
        cmp       rdx, rcx                                      ;749.3
$LN4038:
        jb        .B11.200      ; Prob 82%                      ;749.3
$LN4039:
        jmp       .B11.208      ; Prob 100%                     ;749.3
$LN4040:
                                ; LOE rdx rcx rbx r8 r11 r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.202::                      ; Preds .B11.189
                                ; Execution count [1.56e-004]: Infreq
$LN4041:
        mov       r13, rcx                                      ;749.3
$LN4042:
        xor       r10d, r10d                                    ;749.3
$LN4043:
        mov       eax, 1                                        ;749.3
$LN4044:
        xor       r9d, r9d                                      ;749.3
$LN4045:
        shr       r13, 1                                        ;749.3
$LN4046:
        je        .B11.206      ; Prob 10%                      ;749.3
$LN4047:
                                ; LOE rax rdx rcx rbx rdi r8 r9 r10 r11 r12 r13 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.203::                      ; Preds .B11.202
                                ; Execution count [1.40e-004]: Infreq
$LN4048:
        mov       rax, rdi                                      ;749.3
$LN4049:
        mov       r14, r8                                       ;749.3
$LN4050:
        imul      rax, r15                                      ;749.3
$LN4051:
        sub       r14, rax                                      ;749.3
$LN4052:
        add       r14, r15                                      ;749.3
$LN4053:
        add       rax, r14                                      ;749.3
$LN4054:
                                ; LOE rax rdx rcx rbx rdi r8 r9 r10 r11 r12 r13 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.204::                      ; Preds .B11.204 .B11.203
                                ; Execution count [3.89e-004]: Infreq
$LN4055:
        mov       r14d, DWORD PTR [r11+r10*8]                   ;749.3
$LN4056:
        mov       DWORD PTR [r8+r9*2], r14d                     ;749.3
$LN4057:
        mov       r14d, DWORD PTR [4+r11+r10*8]                 ;749.3
$LN4058:
        inc       r10                                           ;749.3
$LN4059:
        mov       DWORD PTR [rax+r9*2], r14d                    ;749.3
$LN4060:
        add       r9, r15                                       ;749.3
$LN4061:
        cmp       r10, r13                                      ;749.3
$LN4062:
        jb        .B11.204      ; Prob 64%                      ;749.3
$LN4063:
                                ; LOE rax rdx rcx rbx rdi r8 r9 r10 r11 r12 r13 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.205::                      ; Preds .B11.204
                                ; Execution count [1.40e-004]: Infreq
$LN4064:
        lea       rax, QWORD PTR [1+r10+r10]                    ;749.3
$LN4065:
                                ; LOE rax rdx rcx rbx rdi r8 r11 r12 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.206::                      ; Preds .B11.205 .B11.202
                                ; Execution count [1.56e-004]: Infreq
$LN4066:
        lea       r9, QWORD PTR [-1+rax]                        ;749.3
$LN4067:
        cmp       r9, rcx                                       ;749.3
$LN4068:
        jae       .B11.208      ; Prob 10%                      ;749.3
$LN4069:
                                ; LOE rax rdx rbx rdi r8 r11 r12 r15 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.207::                      ; Preds .B11.206
                                ; Execution count [1.40e-004]: Infreq
$LN4070:
        mov       r10, rdi                                      ;749.3
$LN4071:
        mov       r9, rdx                                       ;749.3
$LN4072:
        neg       r10                                           ;749.3
$LN4073:
        lea       rdx, QWORD PTR [-1+rdx+rax]                   ;749.3
$LN4074:
        neg       r9                                            ;749.3
$LN4075:
        lea       rax, QWORD PTR [-1+rdi+rax]                   ;749.3
$LN4076:
        add       r10, rax                                      ;749.3
$LN4077:
        add       r9, rdx                                       ;749.3
$LN4078:
        imul      r10, r15                                      ;749.3
$LN4079:
        mov       edi, DWORD PTR [r11+r9*4]                     ;749.3
$LN4080:
        mov       DWORD PTR [r8+r10], edi                       ;749.3
$LN4081:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.208::                      ; Preds .B11.200 .B11.206 .B11.198 .B11.188 .B11.183
                                ;       .B11.207
                                ; Execution count [1.44e-003]: Infreq
$LN4082:
        mov       edx, DWORD PTR [FLAGS_FI_mp_LDECAY]           ;753.1
$LN4083:
        lea       rcx, QWORD PTR [18032+rbp]                    ;757.7
$LN4084:
        mov       eax, DWORD PTR [FLAGS_FI_mp_CREATE]           ;752.1
$LN4085:
        or        edx, DWORD PTR [FLAGS_FI_mp_MULTICOMP]        ;753.1
$LN4086:
        mov       DWORD PTR [19032+rbp], eax                    ;752.1
$LN4087:
        mov       DWORD PTR [19036+rbp], edx                    ;753.1
$LN4088:
        call      SWIMINITRUN                                   ;757.7
$LN4089:
                                ; LOE rbx r12 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.209::                      ; Preds .B11.208
                                ; Execution count [1.44e-003]: Infreq
$LN4090:
        mov       DWORD PTR [17684+rbp], eax                    ;757.1
$LN4091:
        cmp       eax, 1                                        ;758.9
$LN4092:
        jne       .B11.215      ; Prob 21%                      ;758.9
$LN4093:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.210::                      ; Preds .B11.290 .B11.209
                                ; Execution count [1.13e-003]: Infreq
$LN4094:
        mov       eax, DWORD PTR [18188+rbp]                    ;892.1
$LN4095:
        mov       edx, DWORD PTR [18192+rbp]                    ;893.1
$LN4096:
        mov       ecx, DWORD PTR [18196+rbp]                    ;894.1
$LN4097:
        mov       ebx, DWORD PTR [18200+rbp]                    ;895.1
$LN4098:
        mov       DWORD PTR [GRID_FI_mp_XMIN], eax              ;892.1
$LN4099:
        mov       DWORD PTR [GRID_FI_mp_XMAX], edx              ;893.1
$LN4100:
        mov       DWORD PTR [GRID_FI_mp_YMIN], ecx              ;894.1
$LN4101:
        mov       DWORD PTR [GRID_FI_mp_YMAX], ebx              ;895.1
$LN4102:
;       WRITESWIMLOG
        call      WRITESWIMLOG                                  ;897.6
$LN4103:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.211::                      ; Preds .B11.210
                                ; Execution count [1.13e-003]: Infreq
$LN4104:
        test      DWORD PTR [FLAGS_FI_mp_RUN_MODE], 128         ;901.10
$LN4105:
        jne       .B11.213      ; Prob 40%                      ;901.10
$LN4106:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.212::                      ; Preds .B11.211
                                ; Execution count [6.77e-004]: Infreq
$LN4107:
        mov       eax, DWORD PTR [18400+rbp]                    ;901.40
$LN4108:
        mov       DWORD PTR [MET_FI_mp_MCTYPEPRJ], eax          ;901.40
$LN4109:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.213::                      ; Preds .B11.211 .B11.212
                                ; Execution count [1.13e-003]: Infreq
$LN4110:
        lea       rcx, QWORD PTR [GRID_FI_mp_XREF]              ;905.7
$LN4111:
        lea       rdx, QWORD PTR [GRID_FI_mp_YREF]              ;905.7
$LN4112:
        lea       r8, QWORD PTR [GRID_FI_mp_LAT0]               ;905.7
$LN4113:
        lea       r9, QWORD PTR [GRID_FI_mp_LON0]               ;905.7
$LN4114:
        call      SWIMGETREFLOC                                 ;905.7
$LN4115:
                                ; LOE eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.214::                      ; Preds .B11.213
                                ; Execution count [1.13e-003]: Infreq
$LN4116:
        mov       DWORD PTR [17684+rbp], eax                    ;905.1
$LN4117:
        cmp       eax, 1                                        ;906.9
$LN4118:
        jne       .B11.65       ; Prob 84%                      ;906.9
$LN4119:
        jmp       .B11.249      ; Prob 100%                     ;906.9
$LN4120:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.215::                      ; Preds .B11.209
                                ; Execution count [3.12e-004]: Infreq
$LN4121:
        lea       rcx, QWORD PTR [__STRLITPACK_9]               ;759.8
$LN4122:
        mov       edx, 8                                        ;759.8
$LN4123:
;       SETSWIMERROR
        call      SETSWIMERROR                                  ;759.8
$LN4124:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.216::                      ; Preds .B11.215
                                ; Execution count [3.12e-004]: Infreq
$LN4125:
        test      DWORD PTR [FLAGS_FI_mp_RUN_MODE], 128         ;763.7
$LN4126:
        je        .B11.65       ; Prob 60%                      ;763.7
$LN4127:
                                ; LOE rbx r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.217::                      ; Preds .B11.216
                                ; Execution count [1.25e-004]: Infreq
$LN4128:
        cmp       DWORD PTR [464+r12], 16                       ;763.49
$LN4129:
        je        .B11.282      ; Prob 0%                       ;763.49
$LN4130:
        jmp       .B11.65       ; Prob 100%                     ;763.49
$LN4131:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.218::                      ; Preds .B11.639
                                ; Execution count [3.33e-003]: Infreq
$LN4132:
        mov       rax, rsp                                      ;261.9
$LN4133:
        lea       rcx, QWORD PTR [MET_FI_mp_MET_TYPE]           ;261.9
$LN4134:
        mov       edx, 80                                       ;261.9
$LN4135:
        lea       r8, QWORD PTR [__STRLITPACK_126]              ;261.9
$LN4136:
        mov       r9d, 5                                        ;261.9
$LN4137:
        mov       QWORD PTR [32+rax], 2                         ;261.9
$LN4138:
        call      for_cpstr                                     ;261.9
$LN4139:
                                ; LOE rax rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.657::                      ; Preds .B11.218
                                ; Execution count [3.33e-003]: Infreq
$LN4140:
        test      eax, eax                                      ;261.9
$LN4141:
        jne       .B11.584      ; Prob 5%                       ;261.9
$LN4142:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.219::                      ; Preds .B11.657
                                ; Execution count [3.16e-003]: Infreq
$LN4143:
        mov       rax, rsp                                      ;277.9
$LN4144:
        lea       rcx, QWORD PTR [MET_FI_mp_MET_TYPE]           ;277.9
$LN4145:
        mov       edx, 80                                       ;277.9
$LN4146:
        lea       r8, QWORD PTR [__STRLITPACK_123]              ;277.9
$LN4147:
        mov       r9d, 5                                        ;277.9
$LN4148:
        mov       QWORD PTR [32+rax], rsi                       ;277.9
$LN4149:
        call      for_cpstr                                     ;277.9
$LN4150:
                                ; LOE rax rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.659::                      ; Preds .B11.219
                                ; Execution count [3.16e-003]: Infreq
$LN4151:
        mov       rdi, rax                                      ;277.9
$LN4152:
        mov       rax, rsp                                      ;277.17
$LN4153:
        lea       rcx, QWORD PTR [MET_FI_mp_MET_TYPE]           ;277.17
$LN4154:
        mov       edx, 80                                       ;277.17
$LN4155:
        lea       r8, QWORD PTR [__STRLITPACK_122]              ;277.17
$LN4156:
        mov       r9d, 12                                       ;277.17
$LN4157:
        mov       QWORD PTR [32+rax], rsi                       ;277.17
$LN4158:
        call      for_cpstr                                     ;277.17
$LN4159:
                                ; LOE rax rsi rdi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.658::                      ; Preds .B11.659
                                ; Execution count [3.16e-003]: Infreq
$LN4160:
        test      edi, edi                                      ;277.9
$LN4161:
        jne       .B11.221      ; Prob 50%                      ;277.9
$LN4162:
                                ; LOE rax rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.220::                      ; Preds .B11.658
                                ; Execution count [1.58e-003]: Infreq
$LN4163:
        test      eax, eax                                      ;277.9
$LN4164:
        je        .B11.572      ; Prob 5%                       ;277.9
$LN4165:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.221::                      ; Preds .B11.658 .B11.220
                                ; Execution count [3.08e-003]: Infreq
$LN4166:
        mov       r15, rsp                                      ;279.5
$LN4167:
        lea       rcx, QWORD PTR [20512+rbp]                    ;279.5
$LN4168:
        mov       r8, 012083a4ff03H                             ;279.5
$LN4169:
        lea       r9, QWORD PTR [__STRLITPACK_164.0.1]          ;279.5
$LN4170:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_TMP]          ;279.5
$LN4171:
        lea       rax, QWORD PTR [FILES_FI_mp_FILE_MET]         ;279.5
$LN4172:
        lea       rdi, QWORD PTR [__STRLITPACK_121]             ;279.5
$LN4173:
        lea       r10, QWORD PTR [__STRLITPACK_120]             ;279.5
$LN4174:
        lea       r11, QWORD PTR [__STRLITPACK_119]             ;279.5
$LN4175:
        lea       r13, QWORD PTR [17616+rbp]                    ;279.5
$LN4176:
        mov       QWORD PTR [rcx], 0                            ;279.5
$LN4177:
        mov       QWORD PTR [r13], 256                          ;279.5
$LN4178:
        mov       QWORD PTR [8+r13], rax                        ;279.5
$LN4179:
        mov       QWORD PTR [16+r13], 3                         ;279.5
$LN4180:
        mov       QWORD PTR [24+r13], rdi                       ;279.5
$LN4181:
        mov       QWORD PTR [32+r13], 9                         ;279.5
$LN4182:
        mov       QWORD PTR [40+r13], r10                       ;279.5
$LN4183:
        mov       QWORD PTR [48+r13], 4                         ;279.5
$LN4184:
        mov       QWORD PTR [56+r13], r11                       ;279.5
$LN4185:
        mov       QWORD PTR [32+r15], r13                       ;279.5
$LN4186:
        call      for_open                                      ;279.5
$LN4187:
                                ; LOE rsi r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.222::                      ; Preds .B11.221
                                ; Execution count [3.08e-003]: Infreq
$LN4188:
        test      eax, eax                                      ;280.13
$LN4189:
        je        .B11.225      ; Prob 50%                      ;280.13
$LN4190:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.223::                      ; Preds .B11.222
                                ; Execution count [1.54e-003]: Infreq
$LN4191:
        mov       rax, rsp                                      ;282.7
$LN4192:
        mov       rcx, r12                                      ;282.7
$LN4193:
        mov       edx, 80                                       ;282.7
$LN4194:
        lea       r8, QWORD PTR [__STRLITPACK_118]              ;282.7
$LN4195:
        mov       r9d, 8                                        ;282.7
$LN4196:
        mov       DWORD PTR [464+r12], 4                        ;281.7
$LN4197:
        mov       QWORD PTR [32+rax], 0                         ;282.7
$LN4198:
        call      for_cpystr                                    ;282.7
$LN4199:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.224::                      ; Preds .B11.223
                                ; Execution count [1.54e-003]: Infreq
$LN4200:
        mov       rax, rsp                                      ;283.7
$LN4201:
        add       r12, 80                                       ;283.7
$LN4202:
        mov       rcx, r12                                      ;283.7
$LN4203:
        mov       edx, 128                                      ;283.7
$LN4204:
        lea       r8, QWORD PTR [__STRLITPACK_117]              ;283.7
$LN4205:
        mov       r9d, 41                                       ;283.7
$LN4206:
        mov       QWORD PTR [32+rax], 0                         ;283.7
$LN4207:
        call      for_cpystr                                    ;283.7
$LN4208:
        jmp       .B11.65       ; Prob 100%                     ;283.7
$LN4209:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.225::                      ; Preds .B11.222
                                ; Execution count [1.54e-003]: Infreq
$LN4210:
        mov       r11, rsp                                      ;287.5
$LN4211:
        lea       rcx, QWORD PTR [20512+rbp]                    ;287.5
$LN4212:
        mov       r8, 012083a4ff03H                             ;287.5
$LN4213:
        lea       r9, QWORD PTR [__STRLITPACK_165.0.1]          ;287.5
$LN4214:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_TMP]          ;287.5
$LN4215:
        lea       rax, QWORD PTR [17312+rbp]                    ;287.5
$LN4216:
        lea       r10, QWORD PTR [INIT_MET$format_pack.0.1]     ;287.5
$LN4217:
        lea       rdi, QWORD PTR [17856+rbp]                    ;287.5
$LN4218:
        mov       QWORD PTR [rcx], 0                            ;287.5
$LN4219:
        mov       QWORD PTR [rdi], 256                          ;287.5
$LN4220:
        mov       QWORD PTR [8+rdi], rax                        ;287.5
$LN4221:
        mov       QWORD PTR [32+r11], rdi                       ;287.5
$LN4222:
        mov       QWORD PTR [40+r11], r10                       ;287.5
$LN4223:
        call      for_read_seq_fmt                              ;287.5
$LN4224:
                                ; LOE rsi r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.226::                      ; Preds .B11.225
                                ; Execution count [1.54e-003]: Infreq
$LN4225:
        test      eax, eax                                      ;288.13
$LN4226:
        je        .B11.229      ; Prob 22%                      ;288.13
$LN4227:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.227::                      ; Preds .B11.226
                                ; Execution count [1.20e-003]: Infreq
$LN4228:
        mov       rax, rsp                                      ;290.7
$LN4229:
        mov       rcx, r12                                      ;290.7
$LN4230:
        mov       edx, 80                                       ;290.7
$LN4231:
        lea       r8, QWORD PTR [__STRLITPACK_114]              ;290.7
$LN4232:
        mov       r9d, 8                                        ;290.7
$LN4233:
        mov       DWORD PTR [464+r12], 5                        ;289.7
$LN4234:
        mov       QWORD PTR [32+rax], 0                         ;290.7
$LN4235:
        call      for_cpystr                                    ;290.7
$LN4236:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.228::                      ; Preds .B11.227
                                ; Execution count [1.20e-003]: Infreq
$LN4237:
        mov       rax, rsp                                      ;291.7
$LN4238:
        add       r12, 80                                       ;291.7
$LN4239:
        mov       rcx, r12                                      ;291.7
$LN4240:
        mov       edx, 128                                      ;291.7
$LN4241:
        lea       r8, QWORD PTR [__STRLITPACK_113]              ;291.7
$LN4242:
        mov       r9d, 41                                       ;291.7
$LN4243:
        mov       QWORD PTR [32+rax], 0                         ;291.7
$LN4244:
        call      for_cpystr                                    ;291.7
$LN4245:
        jmp       .B11.65       ; Prob 100%                     ;291.7
$LN4246:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.229::                      ; Preds .B11.226
                                ; Execution count [3.39e-004]: Infreq
$LN4247:
        mov       edx, 256                                      ;295.10
$LN4248:
        lea       rcx, QWORD PTR [17312+rbp]                    ;295.10
$LN4249:
        call      CUPPER                                        ;295.10
$LN4250:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.230::                      ; Preds .B11.229
                                ; Execution count [3.39e-004]: Infreq
$LN4251:
        mov       edx, 256                                      ;296.23
$LN4252:
        lea       rcx, QWORD PTR [15200+rbp]                    ;296.23
$LN4253:
        mov       r9, rdx                                       ;296.23
$LN4254:
        lea       r8, QWORD PTR [17312+rbp]                     ;296.23
$LN4255:
        mov       r14, rsp                                      ;302.12
$LN4256:
        call      for_adjustl                                   ;296.23
$LN4257:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.231::                      ; Preds .B11.230
                                ; Execution count [3.39e-004]: Infreq
$LN4258:
        mov       edx, 256                                      ;296.18
$LN4259:
        lea       rcx, QWORD PTR [15456+rbp]                    ;296.18
$LN4260:
        mov       r9, rdx                                       ;296.18
$LN4261:
        lea       r8, QWORD PTR [15200+rbp]                     ;296.18
$LN4262:
        call      for_trim                                      ;296.18
$LN4263:
                                ; LOE rsi r12 r14 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.232::                      ; Preds .B11.231
                                ; Execution count [3.39e-004]: Infreq
$LN4264:
        movsxd    r13, eax                                      ;296.18
$LN4265:
        mov       rax, r13                                      ;296.18
$LN4266:
        add       rax, 15                                       ;296.18
$LN4267:
        and       rax, -16                                      ;296.18
$LN4268:
        call      __chkstk                                      ;296.18
$LN4269:
        sub       rsp, rax                                      ;296.18
$LN4270:
        lea       rax, QWORD PTR [96+rsp]                       ;296.18
$LN4271:
                                ; LOE rax rsi r12 r13 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.663::                      ; Preds .B11.232
                                ; Execution count [3.39e-004]: Infreq
$LN4272:
        mov       r15, rax                                      ;296.18
$LN4273:
        lea       rdx, QWORD PTR [15456+rbp]                    ;296.18
$LN4274:
        mov       rcx, r15                                      ;296.18
$LN4275:
        mov       r8, r13                                       ;296.18
$LN4276:
        call      memmove                                       ;296.18
$LN4277:
                                ; LOE rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.233::                      ; Preds .B11.663
                                ; Execution count [3.39e-004]: Infreq
$LN4278:
        mov       rdi, rsp                                      ;297.13
$LN4279:
        mov       rcx, r15                                      ;297.13
$LN4280:
        mov       rdx, r13                                      ;297.13
$LN4281:
        lea       r8, QWORD PTR [__STRLITPACK_112]              ;297.13
$LN4282:
        mov       r9d, 5                                        ;297.13
$LN4283:
        mov       QWORD PTR [32+rdi], rsi                       ;297.13
$LN4284:
        call      for_cpstr                                     ;297.13
$LN4285:
                                ; LOE rax rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.668::                      ; Preds .B11.233
                                ; Execution count [3.39e-004]: Infreq
$LN4286:
        mov       r10, rsp                                      ;297.21
$LN4287:
        mov       rcx, r15                                      ;297.21
$LN4288:
        mov       rdx, r13                                      ;297.21
$LN4289:
        lea       r8, QWORD PTR [__STRLITPACK_111]              ;297.21
$LN4290:
        mov       r9d, 12                                       ;297.21
$LN4291:
        mov       rdi, rax                                      ;297.13
$LN4292:
        mov       QWORD PTR [32+r10], rsi                       ;297.21
$LN4293:
        call      for_cpstr                                     ;297.21
$LN4294:
                                ; LOE rax rsi rdi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.667::                      ; Preds .B11.668
                                ; Execution count [3.39e-004]: Infreq
$LN4295:
        mov       r10, rsp                                      ;297.36
$LN4296:
        mov       rcx, r15                                      ;297.36
$LN4297:
        mov       rdx, r13                                      ;297.36
$LN4298:
        lea       r8, QWORD PTR [__STRLITPACK_110]              ;297.36
$LN4299:
        mov       r9d, 12                                       ;297.36
$LN4300:
        mov       QWORD PTR [16+rbp], rax                       ;297.21[spill]
$LN4301:
        mov       QWORD PTR [32+r10], rsi                       ;297.36
$LN4302:
        call      for_cpstr                                     ;297.36
$LN4303:
                                ; LOE rax rsi rdi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.666::                      ; Preds .B11.667
                                ; Execution count [3.39e-004]: Infreq
$LN4304:
        mov       r10, rsp                                      ;297.51
$LN4305:
        mov       rcx, r15                                      ;297.51
$LN4306:
        mov       rdx, r13                                      ;297.51
$LN4307:
        lea       r8, QWORD PTR [__STRLITPACK_109]              ;297.51
$LN4308:
        mov       r9d, 8                                        ;297.51
$LN4309:
        mov       QWORD PTR [8+rbp], rax                        ;297.36[spill]
$LN4310:
        mov       QWORD PTR [32+r10], rsi                       ;297.51
$LN4311:
        call      for_cpstr                                     ;297.51
$LN4312:
                                ; LOE rax rsi rdi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.665::                      ; Preds .B11.666
                                ; Execution count [3.39e-004]: Infreq
$LN4313:
        mov       r10, rsp                                      ;297.62
$LN4314:
        mov       rcx, r15                                      ;297.62
$LN4315:
        mov       rdx, r13                                      ;297.62
$LN4316:
        lea       r8, QWORD PTR [__STRLITPACK_108]              ;297.62
$LN4317:
        mov       r9d, 4                                        ;297.62
$LN4318:
        mov       QWORD PTR [rbp], rax                          ;297.51[spill]
$LN4319:
        mov       QWORD PTR [32+r10], rsi                       ;297.62
$LN4320:
        call      for_cpstr                                     ;297.62
$LN4321:
                                ; LOE rax rsi rdi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.664::                      ; Preds .B11.665
                                ; Execution count [3.39e-004]: Infreq
$LN4322:
        test      edi, edi                                      ;297.13
$LN4323:
        jne       .B11.240      ; Prob 50%                      ;297.13
$LN4324:
                                ; LOE rax rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.234::                      ; Preds .B11.664
                                ; Execution count [1.69e-004]: Infreq
$LN4325:
        mov       rdx, QWORD PTR [16+rbp]                       ;297.21[spill]
$LN4326:
        test      edx, edx                                      ;297.13
$LN4327:
        jne       .B11.240      ; Prob 50%                      ;297.13
$LN4328:
                                ; LOE rax rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.235::                      ; Preds .B11.234
                                ; Execution count [8.47e-005]: Infreq
$LN4329:
        mov       rdx, QWORD PTR [8+rbp]                        ;297.36[spill]
$LN4330:
        test      edx, edx                                      ;297.13
$LN4331:
        jne       .B11.240      ; Prob 50%                      ;297.13
$LN4332:
                                ; LOE rax rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.236::                      ; Preds .B11.235
                                ; Execution count [4.24e-005]: Infreq
$LN4333:
        mov       rdx, QWORD PTR [rbp]                          ;297.51[spill]
$LN4334:
        test      edx, edx                                      ;297.13
$LN4335:
        jne       .B11.240      ; Prob 50%                      ;297.13
$LN4336:
                                ; LOE rax rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.237::                      ; Preds .B11.236
                                ; Execution count [2.12e-005]: Infreq
$LN4337:
        test      eax, eax                                      ;297.13
$LN4338:
        jne       .B11.240      ; Prob 50%                      ;297.13
$LN4339:
                                ; LOE rsi r12 r14 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.238::                      ; Preds .B11.237
                                ; Execution count [1.06e-005]: Infreq
$LN4340:
        mov       rax, rsp                                      ;300.7
$LN4341:
        mov       rcx, r12                                      ;300.7
$LN4342:
        mov       edx, 80                                       ;300.7
$LN4343:
        lea       r8, QWORD PTR [__STRLITPACK_107]              ;300.7
$LN4344:
        mov       r9d, 8                                        ;300.7
$LN4345:
        mov       DWORD PTR [464+r12], 3                        ;299.7
$LN4346:
        mov       QWORD PTR [32+rax], 0                         ;300.7
$LN4347:
        call      for_cpystr                                    ;300.7
$LN4348:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.239::                      ; Preds .B11.238
                                ; Execution count [1.06e-005]: Infreq
$LN4349:
        mov       rax, rsp                                      ;301.7
$LN4350:
        add       r12, 80                                       ;301.7
$LN4351:
        mov       rcx, r12                                      ;301.7
$LN4352:
        mov       edx, 128                                      ;301.7
$LN4353:
        lea       r8, QWORD PTR [__STRLITPACK_106]              ;301.7
$LN4354:
        mov       r9d, 46                                       ;301.7
$LN4355:
        mov       QWORD PTR [32+rax], 0                         ;301.7
$LN4356:
        call      for_cpystr                                    ;301.7
$LN4357:
        jmp       .B11.65       ; Prob 100%                     ;301.7
$LN4358:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.240::                      ; Preds .B11.664 .B11.234 .B11.235 .B11.236 .B11.237
                                ;      
                                ; Execution count [3.28e-004]: Infreq
$LN4359:
        mov       rax, r14                                      ;302.12
$LN4360:
        mov       rsp, rax                                      ;302.12
$LN4361:
                                ; LOE rsi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.669::                      ; Preds .B11.240
                                ; Execution count [3.28e-004]: Infreq
$LN4362:
        xor       r15d, r15d                                    ;307.5
$LN4363:
        lea       rdi, QWORD PTR [17872+rbp]                    ;310.7
$LN4364:
        lea       r13, QWORD PTR [INIT_MET$format_pack.0.1+12]  ;310.7
$LN4365:
        lea       r14, QWORD PTR [17312+rbp]                    ;310.7
$LN4366:
                                ; LOE rsi rdi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.241::                      ; Preds .B11.671 .B11.244 .B11.669
                                ; Execution count [1.64e-003]: Infreq
$LN4367:
        mov       rax, rsp                                      ;310.7
$LN4368:
        lea       rcx, QWORD PTR [20512+rbp]                    ;310.7
$LN4369:
        mov       r8, 012083a4ff03H                             ;310.7
$LN4370:
        lea       r9, QWORD PTR [__STRLITPACK_166.0.1]          ;310.7
$LN4371:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_TMP]          ;310.7
$LN4372:
        mov       QWORD PTR [rcx], 0                            ;310.7
$LN4373:
        mov       QWORD PTR [17872+rbp], 256                    ;310.7
$LN4374:
        mov       QWORD PTR [17880+rbp], r14                    ;310.7
$LN4375:
        mov       QWORD PTR [32+rax], rdi                       ;310.7
$LN4376:
        mov       QWORD PTR [40+rax], r13                       ;310.7
$LN4377:
        call      for_read_seq_fmt                              ;310.7
$LN4378:
                                ; LOE rsi rdi r12 r13 r14 r15 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.242::                      ; Preds .B11.241
                                ; Execution count [1.64e-003]: Infreq
$LN4379:
        test      eax, eax                                      ;311.15
$LN4380:
        jne       .B11.324      ; Prob 20%                      ;311.15
$LN4381:
                                ; LOE rsi rdi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.243::                      ; Preds .B11.242
                                ; Execution count [1.31e-003]: Infreq
$LN4382:
        mov       rcx, r14                                      ;312.13
$LN4383:
        mov       edx, 256                                      ;312.13
$LN4384:
        call      for_len_trim                                  ;312.13
$LN4385:
                                ; LOE rsi rdi r12 r13 r14 r15 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.671::                      ; Preds .B11.243
                                ; Execution count [1.31e-003]: Infreq
$LN4386:
        cmp       eax, 1                                        ;312.30
$LN4387:
        jle       .B11.241      ; Prob 82%                      ;312.30
$LN4388:
                                ; LOE rsi rdi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.244::                      ; Preds .B11.671
                                ; Execution count [2.36e-004]: Infreq
$LN4389:
        cmp       BYTE PTR [17312+rbp], 35                      ;313.9
$LN4390:
        lea       rax, QWORD PTR [1+r15]                        ;313.9
$LN4391:
        cmovne    r15, rax                                      ;313.9
$LN4392:
        jmp       .B11.241      ; Prob 100%                     ;313.9
$LN4393:
                                ; LOE rsi rdi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.246::                      ; Preds .B11.156
                                ; Execution count [5.20e-005]: Infreq
$LN4394:
        lea       rcx, QWORD PTR [GRID_FI_mp_HRES]              ;635.8
$LN4395:
;       CHECKHRESDEFAULT
        call      CHECKHRESDEFAULT                              ;635.8
$LN4396:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.247::                      ; Preds .B11.246
                                ; Execution count [5.20e-005]: Infreq
$LN4397:
        cmp       DWORD PTR [464+r12], 0                        ;636.14
$LN4398:
        jne       .B11.65       ; Prob 78%                      ;636.14
$LN4399:
        jmp       .B11.157      ; Prob 100%                     ;636.14
$LN4400:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.248::                      ; Preds .B11.190
                                ; Execution count [1.40e-005]: Infreq
$LN4401:
        xor       edx, edx                                      ;749.3
$LN4402:
        jmp       .B11.198      ; Prob 100%                     ;749.3
$LN4403:
                                ; LOE rdx rcx rbx r8 r11 r12 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.249::                      ; Preds .B11.214
                                ; Execution count [1.80e-004]: Infreq
$LN4404:
        test      BYTE PTR [FLAGS_FI_mp_CREATE], 1              ;910.10
$LN4405:
        jne       .B11.251      ; Prob 39%                      ;910.10
$LN4406:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.250::                      ; Preds .B11.249
                                ; Execution count [1.08e-004]: Infreq
$LN4407:
        movss     xmm0, DWORD PTR [GRID_FI_mp_LAT0]             ;910.5
$LN4408:
        ucomiss   xmm0, DWORD PTR [_2il0floatpacket.14]         ;910.28
$LN4409:
        jp        .B11.251      ; Prob 0%                       ;910.28
$LN4410:
        je        .B11.279      ; Prob 16%                      ;910.28
$LN4411:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.251::                      ; Preds .B11.279 .B11.250 .B11.249 .B11.281
                                ; Execution count [1.80e-004]: Infreq
$LN4412:
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;920.1
$LN4413:
        comiss    xmm0, xmm15                                   ;920.7
$LN4414:
        jbe       .B11.258      ; Prob 50%                      ;920.7
$LN4415:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.252::                      ; Preds .B11.251
                                ; Execution count [9.02e-005]: Infreq
$LN4416:
        mov       ebx, DWORD PTR [MET_FI_mp_NUMMET]             ;920.7
$LN4417:
        test      ebx, ebx                                      ;920.25
$LN4418:
        jle       .B11.258      ; Prob 16%                      ;920.25
$LN4419:
                                ; LOE ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.253::                      ; Preds .B11.252
                                ; Execution count [7.42e-005]: Infreq
$LN4420:
        mov       DWORD PTR [17680+rbp], 1                      ;921.3
$LN4421:
        mov       eax, 1                                        ;921.3
$LN4422:
                                ; LOE eax ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.254::                      ; Preds .B11.256 .B11.253
                                ; Execution count [2.16e-004]: Infreq
$LN4423:
        mov       rsi, QWORD PTR [MET_FI_mp_METGRID+64]         ;922.11
$LN4424:
        lea       rcx, QWORD PTR [17680+rbp]                    ;922.11
$LN4425:
        movsxd    rax, eax                                      ;922.11
$LN4426:
        neg       rsi                                           ;922.11
$LN4427:
        add       rsi, rax                                      ;922.11
$LN4428:
        imul      rdx, rsi, 440                                 ;922.11
$LN4429:
        add       rdx, QWORD PTR [MET_FI_mp_METGRID]            ;922.11
$LN4430:
        call      SWIMPUTMIXINGHT                               ;922.11
$LN4431:
                                ; LOE eax ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.255::                      ; Preds .B11.254
                                ; Execution count [2.16e-004]: Infreq
$LN4432:
        mov       DWORD PTR [17684+rbp], eax                    ;922.5
$LN4433:
        cmp       eax, 1                                        ;923.13
$LN4434:
        jne       .B11.278      ; Prob 20%                      ;923.13
$LN4435:
                                ; LOE ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.256::                      ; Preds .B11.255
                                ; Execution count [1.73e-004]: Infreq
$LN4436:
        mov       eax, DWORD PTR [17680+rbp]                    ;927.3
$LN4437:
        inc       eax                                           ;927.3
$LN4438:
        mov       DWORD PTR [17680+rbp], eax                    ;927.3
$LN4439:
        cmp       eax, ebx                                      ;927.3
$LN4440:
        jle       .B11.254      ; Prob 82%                      ;927.3
$LN4441:
                                ; LOE eax ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.258::                      ; Preds .B11.256 .B11.252 .B11.251
                                ; Execution count [1.37e-004]: Infreq
$LN4442:
        test      BYTE PTR [FLAGS_FI_mp_CREATE], 1              ;932.10
$LN4443:
        je        .B11.260      ; Prob 7%                       ;932.10
$LN4444:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.259::                      ; Preds .B11.268 .B11.258
                                ; Execution count [1.29e-004]: Infreq
$LN4445:
;       WRITESWIMLOG
        call      WRITESWIMLOG                                  ;963.6
$LN4446:
        jmp       .B11.65       ; Prob 100%                     ;963.6
$LN4447:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.260::                      ; Preds .B11.258
                                ; Execution count [1.00e-005]: Infreq
$LN4448:
        lea       rcx, QWORD PTR [TIME_FI_mp_T]                 ;934.9
$LN4449:
        lea       rdx, QWORD PTR [MET_FI_mp_SWIMSTATUS]         ;934.9
$LN4450:
        call      SWIMUPDATEMET                                 ;934.9
$LN4451:
                                ; LOE eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.261::                      ; Preds .B11.260
                                ; Execution count [1.00e-005]: Infreq
$LN4452:
        lea       rcx, QWORD PTR [__NLITPACK_2.0.1]             ;935.8
$LN4453:
        mov       DWORD PTR [17684+rbp], eax                    ;934.3
$LN4454:
        call      ENABLESCIPUFFHALT                             ;935.8
$LN4455:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.262::                      ; Preds .B11.261
                                ; Execution count [1.00e-005]: Infreq
$LN4456:
        cmp       DWORD PTR [17684+rbp], 1                      ;936.11
$LN4457:
        jne       .B11.270      ; Prob 21%                      ;936.11
$LN4458:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.263::                      ; Preds .B11.262
                                ; Execution count [7.87e-006]: Infreq
$LN4459:
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;941.3
$LN4460:
        ucomiss   xmm0, xmm15                                   ;941.9
$LN4461:
        jne       .B11.267      ; Prob 21%                      ;941.9
$LN4462:
        jp        .B11.267      ; Prob 0%                       ;941.9
$LN4463:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.264::                      ; Preds .B11.263
                                ; Execution count [6.17e-006]: Infreq
$LN4464:
        test      BYTE PTR [MET_FI_mp_SWIMSTATUS], 4            ;941.21
$LN4465:
        je        .B11.267      ; Prob 60%                      ;941.21
$LN4466:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.265::                      ; Preds .B11.264
                                ; Execution count [5.72e-006]: Infreq
$LN4467:
;       SETMETGRID
        call      SETMETGRID                                    ;942.11
$LN4468:
                                ; LOE eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.266::                      ; Preds .B11.265
                                ; Execution count [5.72e-006]: Infreq
$LN4469:
        mov       DWORD PTR [17684+rbp], eax                    ;942.5
$LN4470:
        cmp       eax, 1                                        ;943.13
$LN4471:
        jne       .B11.65       ; Prob 99%                      ;943.13
$LN4472:
        jmp       .B11.271      ; Prob 100%                     ;943.13
$LN4473:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.267::                      ; Preds .B11.275 .B11.271 .B11.264 .B11.263
                                ; Execution count [2.18e-006]: Infreq
$LN4474:
        call      SWIMINITOUTPUT                                ;955.9
$LN4475:
                                ; LOE eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.268::                      ; Preds .B11.267
                                ; Execution count [2.18e-006]: Infreq
$LN4476:
        mov       DWORD PTR [17684+rbp], eax                    ;955.3
$LN4477:
        cmp       eax, 1                                        ;956.11
$LN4478:
        je        .B11.259      ; Prob 78%                      ;956.11
$LN4479:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.269::                      ; Preds .B11.268
                                ; Execution count [4.72e-007]: Infreq
$LN4480:
        lea       rcx, QWORD PTR [__STRLITPACK_1]               ;957.10
$LN4481:
        mov       edx, 14                                       ;957.10
$LN4482:
;       SETSWIMERROR
        call      SETSWIMERROR                                  ;957.10
$LN4483:
        jmp       .B11.65       ; Prob 100%                     ;957.10
$LN4484:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.270::                      ; Preds .B11.262
                                ; Execution count [2.18e-006]: Infreq
$LN4485:
        lea       rcx, QWORD PTR [__STRLITPACK_3]               ;937.10
$LN4486:
        mov       edx, 13                                       ;937.10
$LN4487:
;       SETSWIMERROR
        call      SETSWIMERROR                                  ;937.10
$LN4488:
        jmp       .B11.65       ; Prob 100%                     ;937.10
$LN4489:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.271::                      ; Preds .B11.266
                                ; Execution count [5.67e-008]: Infreq
$LN4490:
        mov       ebx, DWORD PTR [MET_FI_mp_NUMMET]             ;944.5
$LN4491:
        mov       eax, 1                                        ;944.5
$LN4492:
        mov       DWORD PTR [17680+rbp], 1                      ;944.5
$LN4493:
        test      ebx, ebx                                      ;944.5
$LN4494:
        jle       .B11.267      ; Prob 0%                       ;944.5
$LN4495:
                                ; LOE eax ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.273::                      ; Preds .B11.271 .B11.275
                                ; Execution count [1.65e-007]: Infreq
$LN4496:
        mov       rsi, QWORD PTR [MET_FI_mp_METGRID+64]         ;945.13
$LN4497:
        lea       rcx, QWORD PTR [17680+rbp]                    ;945.13
$LN4498:
        movsxd    rax, eax                                      ;945.13
$LN4499:
        neg       rsi                                           ;945.13
$LN4500:
        add       rsi, rax                                      ;945.13
$LN4501:
        imul      rdx, rsi, 440                                 ;945.13
$LN4502:
        add       rdx, QWORD PTR [MET_FI_mp_METGRID]            ;945.13
$LN4503:
        call      SWIMGETMIXINGHT                               ;945.13
$LN4504:
                                ; LOE eax ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.274::                      ; Preds .B11.273
                                ; Execution count [1.65e-007]: Infreq
$LN4505:
        mov       DWORD PTR [17684+rbp], eax                    ;945.7
$LN4506:
        cmp       eax, 1                                        ;946.15
$LN4507:
        jne       .B11.277      ; Prob 20%                      ;946.15
$LN4508:
                                ; LOE ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.275::                      ; Preds .B11.274
                                ; Execution count [1.32e-007]: Infreq
$LN4509:
        mov       eax, DWORD PTR [17680+rbp]                    ;950.5
$LN4510:
        inc       eax                                           ;950.5
$LN4511:
        mov       DWORD PTR [17680+rbp], eax                    ;950.5
$LN4512:
        cmp       eax, ebx                                      ;950.5
$LN4513:
        jle       .B11.273      ; Prob 82%                      ;950.5
$LN4514:
        jmp       .B11.267      ; Prob 100%                     ;950.5
$LN4515:
                                ; LOE eax ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.277::                      ; Preds .B11.274
                                ; Execution count [3.30e-008]: Infreq
$LN4516:
        lea       rcx, QWORD PTR [__STRLITPACK_2]               ;947.14
$LN4517:
        mov       edx, 15                                       ;947.14
$LN4518:
;       SETSWIMERROR
        call      SETSWIMERROR                                  ;947.14
$LN4519:
        jmp       .B11.65       ; Prob 100%                     ;947.14
$LN4520:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.278::                      ; Preds .B11.255
                                ; Execution count [4.32e-005]: Infreq
$LN4521:
        lea       rcx, QWORD PTR [__STRLITPACK_4]               ;924.12
$LN4522:
        mov       edx, 15                                       ;924.12
$LN4523:
;       SETSWIMERROR
        call      SETSWIMERROR                                  ;924.12
$LN4524:
        jmp       .B11.65       ; Prob 100%                     ;924.12
$LN4525:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.279::                      ; Preds .B11.250
                                ; Execution count [1.73e-005]: Infreq
$LN4526:
        cmp       DWORD PTR [GRID_FI_mp_LMAP], 3                ;910.52
$LN4527:
        jne       .B11.251      ; Prob 84%                      ;910.52
$LN4528:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.280::                      ; Preds .B11.279
                                ; Execution count [2.77e-006]: Infreq
$LN4529:
        movss     xmm0, DWORD PTR [GRID_FI_mp_XMIN]             ;911.3
$LN4530:
        movss     xmm1, DWORD PTR [GRID_FI_mp_YMIN]             ;912.3
$LN4531:
        mov       r12d, DWORD PTR [MET_FI_mp_PRJCOORD+44]       ;913.3
$LN4532:
        movss     xmm2, DWORD PTR [_2il0floatpacket.29]         ;911.13
$LN4533:
        mov       DWORD PTR [14380+rbp], r12d                   ;913.3
$LN4534:
        mov       r12, rsp                                      ;915.9
$LN4535:
        mov       edx, DWORD PTR [MET_FI_mp_PRJCOORD+8]         ;913.3
$LN4536:
        mov       ecx, DWORD PTR [MET_FI_mp_PRJCOORD+12]        ;913.3
$LN4537:
        mov       r8d, DWORD PTR [MET_FI_mp_PRJCOORD+28]        ;913.3
$LN4538:
        mov       r9d, DWORD PTR [MET_FI_mp_PRJCOORD+32]        ;913.3
$LN4539:
        mov       eax, DWORD PTR [MET_FI_mp_PRJCOORD+4]         ;913.3
$LN4540:
        mov       ebx, DWORD PTR [MET_FI_mp_PRJCOORD+16]        ;913.3
$LN4541:
        mov       esi, DWORD PTR [MET_FI_mp_PRJCOORD+20]        ;913.3
$LN4542:
        mov       edi, DWORD PTR [MET_FI_mp_PRJCOORD+24]        ;913.3
$LN4543:
        mov       DWORD PTR [14344+rbp], edx                    ;913.3
$LN4544:
        mov       DWORD PTR [14348+rbp], ecx                    ;913.3
$LN4545:
        mov       DWORD PTR [14364+rbp], r8d                    ;913.3
$LN4546:
        mov       DWORD PTR [14368+rbp], r9d                    ;913.3
$LN4547:
        mov       edx, DWORD PTR [MET_FI_mp_PRJCOORD+64]        ;913.3
$LN4548:
        mov       ecx, DWORD PTR [MET_FI_mp_PRJCOORD+68]        ;913.3
$LN4549:
        mov       r8d, DWORD PTR [MET_FI_mp_PRJCOORD+84]        ;913.3
$LN4550:
        mov       r9d, DWORD PTR [MET_FI_mp_PRJCOORD+88]        ;913.3
$LN4551:
        mov       r10d, DWORD PTR [MET_FI_mp_PRJCOORD+36]       ;913.3
$LN4552:
        mov       r11d, DWORD PTR [MET_FI_mp_PRJCOORD+40]       ;913.3
$LN4553:
        mov       DWORD PTR [14340+rbp], eax                    ;913.3
$LN4554:
        mov       DWORD PTR [14352+rbp], ebx                    ;913.3
$LN4555:
        mov       DWORD PTR [14356+rbp], esi                    ;913.3
$LN4556:
        mov       DWORD PTR [14360+rbp], edi                    ;913.3
$LN4557:
        mov       r13d, DWORD PTR [MET_FI_mp_PRJCOORD+48]       ;913.3
$LN4558:
        mov       r14d, DWORD PTR [MET_FI_mp_PRJCOORD+52]       ;913.3
$LN4559:
        mov       r15d, DWORD PTR [MET_FI_mp_PRJCOORD+56]       ;913.3
$LN4560:
        mov       eax, DWORD PTR [MET_FI_mp_PRJCOORD+60]        ;913.3
$LN4561:
        mov       ebx, DWORD PTR [MET_FI_mp_PRJCOORD+72]        ;913.3
$LN4562:
        mov       esi, DWORD PTR [MET_FI_mp_PRJCOORD+76]        ;913.3
$LN4563:
        mov       edi, DWORD PTR [MET_FI_mp_PRJCOORD+80]        ;913.3
$LN4564:
        mov       DWORD PTR [14400+rbp], edx                    ;913.3
$LN4565:
        lea       rdx, QWORD PTR [GRID_FI_mp_YREF]              ;915.9
$LN4566:
        mov       DWORD PTR [14404+rbp], ecx                    ;913.3
$LN4567:
        lea       rcx, QWORD PTR [GRID_FI_mp_XREF]              ;915.9
$LN4568:
        mov       DWORD PTR [14420+rbp], r8d                    ;913.3
$LN4569:
        lea       r8, QWORD PTR [MET_FI_mp_PRJCOORD]            ;915.9
$LN4570:
        mov       DWORD PTR [14424+rbp], r9d                    ;913.3
$LN4571:
        lea       r9, QWORD PTR [GRID_FI_mp_LON0]               ;915.9
$LN4572:
        mov       DWORD PTR [14372+rbp], r10d                   ;913.3
$LN4573:
        lea       r10, QWORD PTR [GRID_FI_mp_LAT0]              ;915.9
$LN4574:
        mov       DWORD PTR [14376+rbp], r11d                   ;913.3
$LN4575:
        lea       r11, QWORD PTR [14336+rbp]                    ;915.9
$LN4576:
        mov       DWORD PTR [48+r11], r13d                      ;913.3
$LN4577:
        mov       DWORD PTR [52+r11], r14d                      ;913.3
$LN4578:
        mov       DWORD PTR [56+r11], r15d                      ;913.3
$LN4579:
        mov       DWORD PTR [60+r11], eax                       ;913.3
$LN4580:
        mov       DWORD PTR [72+r11], ebx                       ;913.3
$LN4581:
        mov       DWORD PTR [76+r11], esi                       ;913.3
$LN4582:
        mov       DWORD PTR [80+r11], edi                       ;913.3
$LN4583:
        mov       DWORD PTR [r11], 1                            ;914.3
$LN4584:
        mov       QWORD PTR [32+r12], r10                       ;915.9
$LN4585:
        mov       QWORD PTR [40+r12], r11                       ;915.9
$LN4586:
        addss     xmm0, DWORD PTR [GRID_FI_mp_XMAX]             ;911.19
$LN4587:
        addss     xmm1, DWORD PTR [GRID_FI_mp_YMAX]             ;912.19
$LN4588:
        mulss     xmm0, xmm2                                    ;911.3
$LN4589:
        mulss     xmm2, xmm1                                    ;912.3
$LN4590:
        movss     DWORD PTR [GRID_FI_mp_XREF], xmm0             ;911.3
$LN4591:
        movss     DWORD PTR [GRID_FI_mp_YREF], xmm2             ;912.3
$LN4592:
        call      SWIMCNVCOORD                                  ;915.9
$LN4593:
                                ; LOE eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.281::                      ; Preds .B11.280
                                ; Execution count [2.77e-006]: Infreq
$LN4594:
        mov       DWORD PTR [17684+rbp], eax                    ;915.3
$LN4595:
        jmp       .B11.251      ; Prob 100%                     ;915.3
$LN4596:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.282::                      ; Preds .B11.217
                                ; Execution count [1.24e-006]: Infreq
$LN4597:
        call      INIT_ERROR                                    ;765.10
$LN4598:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.283::                      ; Preds .B11.282
                                ; Execution count [1.24e-006]: Infreq
$LN4599:
        call      SWIMEXITRUN                                   ;766.11
$LN4600:
                                ; LOE rbx eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.284::                      ; Preds .B11.283
                                ; Execution count [1.24e-006]: Infreq
$LN4601:
        mov       edx, 256                                      ;770.19
$LN4602:
        lea       rdi, QWORD PTR [11216+rbp]                    ;770.19
$LN4603:
        mov       rcx, rdi                                      ;770.19
$LN4604:
        mov       r8, rbx                                       ;770.19
$LN4605:
        mov       r9, rdx                                       ;770.19
$LN4606:
        mov       DWORD PTR [17684+rbp], eax                    ;766.5
$LN4607:
        call      for_trim                                      ;770.19
$LN4608:
                                ; LOE rbx rdi eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.285::                      ; Preds .B11.284
                                ; Execution count [1.24e-006]: Infreq
$LN4609:
        mov       r11, rsp                                      ;770.14
$LN4610:
        lea       rcx, QWORD PTR [20512+rbp]                    ;770.14
$LN4611:
        mov       edx, -1                                       ;770.14
$LN4612:
        mov       r8, 01208384ff00H                             ;770.14
$LN4613:
        lea       r9, QWORD PTR [__STRLITPACK_179.0.1]          ;770.14
$LN4614:
        lea       r10, QWORD PTR [9232+rbp]                     ;770.14
$LN4615:
        movsxd    rax, eax                                      ;770.19
$LN4616:
        mov       QWORD PTR [8+r10], rdi                        ;770.14
$LN4617:
        lea       rdi, QWORD PTR [300+rbp]                      ;770.14
$LN4618:
        mov       QWORD PTR [rcx], 0                            ;770.14
$LN4619:
        mov       QWORD PTR [r10], rax                          ;770.14
$LN4620:
        mov       QWORD PTR [16+r10], rdi                       ;770.14
$LN4621:
        mov       QWORD PTR [32+r11], r10                       ;770.14
$LN4622:
        call      for_inquire                                   ;770.14
$LN4623:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.286::                      ; Preds .B11.285
                                ; Execution count [1.24e-006]: Infreq
$LN4624:
        test      BYTE PTR [300+rbp], 1                         ;774.14
$LN4625:
        je        .B11.292      ; Prob 60%                      ;774.14
$LN4626:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.287::                      ; Preds .B11.286 .B11.315
                                ; Execution count [5.03e-007]: Infreq
$LN4627:
        mov       edx, 256                                      ;867.26
$LN4628:
        lea       rcx, QWORD PTR [10400+rbp]                    ;867.26
$LN4629:
        mov       r8, rbx                                       ;867.26
$LN4630:
        mov       r9, rdx                                       ;867.26
$LN4631:
        mov       DWORD PTR [18032+rbp], 1                      ;866.5
$LN4632:
        call      for_trim                                      ;867.26
$LN4633:
                                ; LOE eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.680::                      ; Preds .B11.287
                                ; Execution count [5.03e-007]: Infreq
$LN4634:
        mov       r9d, eax                                      ;867.26
$LN4635:
                                ; LOE esi r9d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.288::                      ; Preds .B11.680
                                ; Execution count [5.03e-007]: Infreq
$LN4636:
        mov       rax, QWORD PTR [18096+rbp]                    ;867.5
$LN4637:
        mov       rdi, rsp                                      ;867.5
$LN4638:
        mov       rbx, QWORD PTR [18104+rbp]                    ;867.5
$LN4639:
        mov       edx, 256                                      ;867.5
$LN4640:
        imul      rbx, rax                                      ;867.5
$LN4641:
        mov       rcx, QWORD PTR [18040+rbp]                    ;867.5
$LN4642:
        lea       r8, QWORD PTR [10400+rbp]                     ;867.5
$LN4643:
        add       rcx, rax                                      ;867.5
$LN4644:
        movsxd    r9, r9d                                       ;867.5
$LN4645:
        sub       rcx, rbx                                      ;867.5
$LN4646:
        mov       QWORD PTR [32+rdi], 0                         ;867.5
$LN4647:
        call      for_cpystr                                    ;867.5
$LN4648:
                                ; LOE esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.289::                      ; Preds .B11.288
                                ; Execution count [5.03e-007]: Infreq
$LN4649:
        mov       rdx, QWORD PTR [18168+rbp]                    ;868.5
$LN4650:
        mov       ebx, 2                                        ;868.5
$LN4651:
        mov       rax, QWORD PTR [18176+rbp]                    ;868.5
$LN4652:
        imul      rax, rdx                                      ;868.5
$LN4653:
        mov       rcx, QWORD PTR [18112+rbp]                    ;868.5
$LN4654:
        sub       rcx, rax                                      ;868.5
$LN4655:
        mov       DWORD PTR [18312+rbp], ebx                    ;870.5
$LN4656:
        mov       DWORD PTR [19048+rbp], esi                    ;871.5
$LN4657:
        mov       DWORD PTR [19052+rbp], esi                    ;872.5
$LN4658:
        mov       DWORD PTR [rdx+rcx], ebx                      ;868.5
$LN4659:
        lea       rcx, QWORD PTR [18032+rbp]                    ;876.11
$LN4660:
        mov       DWORD PTR [18400+rbp], esi                    ;874.5
$LN4661:
        call      SWIMINITRUN                                   ;876.11
$LN4662:
                                ; LOE eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.290::                      ; Preds .B11.289
                                ; Execution count [5.03e-007]: Infreq
$LN4663:
        mov       DWORD PTR [17684+rbp], eax                    ;876.5
$LN4664:
        cmp       eax, 1                                        ;877.13
$LN4665:
        je        .B11.210      ; Prob 78%                      ;877.13
$LN4666:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.291::                      ; Preds .B11.290
                                ; Execution count [1.09e-007]: Infreq
$LN4667:
        lea       rcx, QWORD PTR [__STRLITPACK_5]               ;878.12
$LN4668:
        mov       edx, 8                                        ;878.12
$LN4669:
;       SETSWIMERROR
        call      SETSWIMERROR                                  ;878.12
$LN4670:
        jmp       .B11.65       ; Prob 100%                     ;878.12
$LN4671:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.292::                      ; Preds .B11.286
                                ; Execution count [7.42e-007]: Infreq
$LN4672:
        movss     xmm0, DWORD PTR [TIME_FI_mp_TSTART]           ;778.12
$LN4673:
        mov       rdi, rsp                                      ;778.12
$LN4674:
        lea       rdx, QWORD PTR [TIME_FI_mp_YEAR_START]        ;778.12
$LN4675:
        lea       rcx, QWORD PTR [296+rbp]                      ;778.12
$LN4676:
        lea       r8, QWORD PTR [TIME_FI_mp_MONTH_START]        ;778.12
$LN4677:
        lea       r9, QWORD PTR [TIME_FI_mp_DAY_START]          ;778.12
$LN4678:
        subss     xmm0, DWORD PTR [TIME_FI_mp_TEND_HR]          ;778.34
$LN4679:
        movss     DWORD PTR [rcx], xmm0                         ;778.34
$LN4680:
        lea       rax, QWORD PTR [18252+rbp]                    ;778.12
$LN4681:
        mov       QWORD PTR [32+rdi], rax                       ;778.12
$LN4682:
        lea       r14, QWORD PTR [18264+rbp]                    ;778.12
$LN4683:
        mov       QWORD PTR [40+rdi], r14                       ;778.12
$LN4684:
        lea       r12, QWORD PTR [18260+rbp]                    ;778.12
$LN4685:
        mov       QWORD PTR [48+rdi], r12                       ;778.12
$LN4686:
        lea       r13, QWORD PTR [18256+rbp]                    ;778.12
$LN4687:
        mov       QWORD PTR [56+rdi], r13                       ;778.12
$LN4688:
        call      YEAR_MONTH_DAY                                ;778.12
$LN4689:
                                ; LOE rbx r12 r13 r14 esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.293::                      ; Preds .B11.292
                                ; Execution count [7.42e-007]: Infreq
$LN4690:
        mov       rcx, r12                                      ;784.31
$LN4691:
        mov       rdx, r13                                      ;784.31
$LN4692:
        mov       r8, r14                                       ;784.31
$LN4693:
        call      JULIAN_DAY                                    ;784.31
$LN4694:
                                ; LOE rbx eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.294::                      ; Preds .B11.293
                                ; Execution count [7.42e-007]: Infreq
$LN4695:
        mov       DWORD PTR [18268+rbp], eax                    ;784.7
$LN4696:
        lea       rcx, QWORD PTR [18032+rbp]                    ;794.13
$LN4697:
        mov       eax, DWORD PTR [TIME_FI_mp_DAY_START]         ;788.7
$LN4698:
        mov       edx, -1                                       ;790.7
$LN4699:
        mov       DWORD PTR [18276+rbp], eax                    ;788.7
$LN4700:
        mov       DWORD PTR [19060+rbp], esi                    ;789.7
$LN4701:
        mov       DWORD PTR [19048+rbp], edx                    ;790.7
$LN4702:
        mov       DWORD PTR [19052+rbp], edx                    ;791.7
$LN4703:
        mov       DWORD PTR [19032+rbp], esi                    ;792.7
$LN4704:
        call      SWIMINITRUN                                   ;794.13
$LN4705:
                                ; LOE rbx eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.295::                      ; Preds .B11.294
                                ; Execution count [7.42e-007]: Infreq
$LN4706:
        mov       DWORD PTR [17684+rbp], eax                    ;794.7
$LN4707:
        cmp       eax, 1                                        ;795.15
$LN4708:
        je        .B11.297      ; Prob 40%                      ;795.15
$LN4709:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.296::                      ; Preds .B11.295
                                ; Execution count [4.43e-007]: Infreq
$LN4710:
        lea       rcx, QWORD PTR [__STRLITPACK_8]               ;796.14
$LN4711:
        mov       edx, 8                                        ;796.14
$LN4712:
;       SETSWIMERROR
        call      SETSWIMERROR                                  ;796.14
$LN4713:
        jmp       .B11.65       ; Prob 100%                     ;796.14
$LN4714:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.297::                      ; Preds .B11.295
                                ; Execution count [2.99e-007]: Infreq
$LN4715:
        movss     xmm13, DWORD PTR [MET_FI_mp_TOUT_MET]         ;805.7
$LN4716:
        movss     xmm14, DWORD PTR [_2il0floatpacket.14]        ;805.20
$LN4717:
        movss     DWORD PTR [TIME_FI_mp_T], xmm15               ;800.7
$LN4718:
        mov       DWORD PTR [MET_FI_mp_TIMEOUTMET], -8388609    ;801.7
$LN4719:
        ucomiss   xmm13, xmm14                                  ;805.20
$LN4720:
        jp        .B11.298      ; Prob 0%                       ;805.20
$LN4721:
        je        .B11.300      ; Prob 16%                      ;805.20
$LN4722:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.298::                      ; Preds .B11.297
                                ; Execution count [2.51e-007]: Infreq
$LN4723:
        ucomiss   xmm13, DWORD PTR [_2il0floatpacket.13]        ;805.47
$LN4724:
        jp        .B11.299      ; Prob 0%                       ;805.47
$LN4725:
        je        .B11.300      ; Prob 16%                      ;805.47
$LN4726:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.299::                      ; Preds .B11.298
                                ; Execution count [2.11e-007]: Infreq
$LN4727:
        minss     xmm13, DWORD PTR [_2il0floatpacket.32]        ;808.9
$LN4728:
        jmp       .B11.301      ; Prob 100%                     ;808.9
$LN4729:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.300::                      ; Preds .B11.298 .B11.297
                                ; Execution count [8.81e-008]: Infreq
$LN4730:
        movss     xmm13, DWORD PTR [_2il0floatpacket.32]        ;806.9
$LN4731:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.301::                      ; Preds .B11.300 .B11.299
                                ; Execution count [2.99e-007]: Infreq
$LN4732:
        maxss     xmm13, DWORD PTR [TIME_FI_mp_DELT]            ;810.7
$LN4733:
        call      SWIMINITOUTPUT                                ;814.13
$LN4734:
                                ; LOE rbx eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.302::                      ; Preds .B11.301
                                ; Execution count [2.99e-007]: Infreq
$LN4735:
        mov       DWORD PTR [17684+rbp], eax                    ;814.7
$LN4736:
        cmp       eax, 1                                        ;815.15
$LN4737:
        jne       .B11.65       ; Prob 91%                      ;815.15
$LN4738:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.304::                      ; Preds .B11.302 .B11.313
                                ; Execution count [6.07e-008]: Infreq
$LN4739:
        lea       rcx, QWORD PTR [TIME_FI_mp_T]                 ;822.15
$LN4740:
        lea       rdx, QWORD PTR [MET_FI_mp_SWIMSTATUS]         ;822.15
$LN4741:
        call      SWIMUPDATEMET                                 ;822.15
$LN4742:
                                ; LOE rbx eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.305::                      ; Preds .B11.304
                                ; Execution count [6.07e-008]: Infreq
$LN4743:
        lea       rcx, QWORD PTR [__NLITPACK_2.0.1]             ;823.14
$LN4744:
        mov       DWORD PTR [17684+rbp], eax                    ;822.9
$LN4745:
        call      ENABLESCIPUFFHALT                             ;823.14
$LN4746:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.306::                      ; Preds .B11.305
                                ; Execution count [6.07e-008]: Infreq
$LN4747:
        cmp       DWORD PTR [17684+rbp], 1                      ;824.17
$LN4748:
        jne       .B11.317      ; Prob 20%                      ;824.17
$LN4749:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.307::                      ; Preds .B11.306
                                ; Execution count [4.85e-008]: Infreq
$LN4750:
        test      BYTE PTR [MET_FI_mp_SWIMSTATUS], 1            ;829.13
$LN4751:
        je        .B11.312      ; Prob 60%                      ;829.13
$LN4752:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.308::                      ; Preds .B11.312 .B11.307
                                ; Execution count [2.37e-008]: Infreq
$LN4753:
        call      SWIMOUTPUT                                    ;830.17
$LN4754:
                                ; LOE rbx eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.309::                      ; Preds .B11.308
                                ; Execution count [2.37e-008]: Infreq
$LN4755:
        mov       DWORD PTR [17684+rbp], eax                    ;830.11
$LN4756:
        cmp       eax, 1                                        ;831.19
$LN4757:
        jne       .B11.316      ; Prob 20%                      ;831.19
$LN4758:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.310::                      ; Preds .B11.309
                                ; Execution count [1.90e-008]: Infreq
$LN4759:
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;835.11
$LN4760:
        addss     xmm0, xmm13                                   ;835.11
$LN4761:
        movss     DWORD PTR [MET_FI_mp_TIMEOUTMET], xmm0        ;835.11
$LN4762:
;       WRITESWIMLOG
        call      WRITESWIMLOG                                  ;836.16
$LN4763:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.311::                      ; Preds .B11.310
                                ; Execution count [1.90e-008]: Infreq
$LN4764:
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;841.9
$LN4765:
        jmp       .B11.313      ; Prob 100%                     ;841.9
$LN4766:
                                ; LOE rbx esi xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.312::                      ; Preds .B11.307
                                ; Execution count [2.91e-008]: Infreq
$LN4767:
        movss     xmm0, DWORD PTR [TIME_FI_mp_T]                ;829.13
$LN4768:
        comiss    xmm0, DWORD PTR [MET_FI_mp_TIMEOUTMET]        ;829.49
$LN4769:
        jae       .B11.308      ; Prob 14%                      ;829.49
$LN4770:
                                ; LOE rbx esi xmm0 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.313::                      ; Preds .B11.312 .B11.311
                                ; Execution count [4.38e-008]: Infreq
$LN4771:
        addss     xmm0, DWORD PTR [TIME_FI_mp_DELT]             ;841.9
$LN4772:
        movss     DWORD PTR [TIME_FI_mp_T], xmm0                ;841.9
$LN4773:
        comiss    xmm0, DWORD PTR [TIME_FI_mp_TEND_R]           ;842.15
$LN4774:
        jbe       .B11.304      ; Prob 82%                      ;842.15
$LN4775:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
.B11.314::                      ; Preds .B11.313
                                ; Execution count [7.88e-009]: Infreq
$LN4776:
        call      SWIMEXITRUN                                   ;848.13
$LN4777:
                                ; LOE rbx eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm14 xmm15
.B11.315::                      ; Preds .B11.314
                                ; Execution count [7.88e-009]: Infreq
$LN4778:
        mov       DWORD PTR [17684+rbp], eax                    ;848.7
$LN4779:
        mov       eax, DWORD PTR [18244+rbp]                    ;850.7
$LN4780:
        mov       edx, DWORD PTR [TIME_FI_mp_TSTART]            ;853.7
$LN4781:
        mov       edi, DWORD PTR [TIME_FI_mp_DAY_START]         ;854.7
$LN4782:
        mov       r9d, DWORD PTR [TIME_FI_mp_MONTH_START]       ;855.7
$LN4783:
        mov       r10d, DWORD PTR [TIME_FI_mp_YEAR_START]       ;856.7
$LN4784:
        mov       r11d, DWORD PTR [TIME_FI_mp_JUL_START]        ;857.7
$LN4785:
        mov       r12d, DWORD PTR [FLAGS_FI_mp_CREATE]          ;860.7
$LN4786:
        mov       DWORD PTR [TIME_FI_mp_T], eax                 ;850.7
$LN4787:
        movss     DWORD PTR [MET_FI_mp_TIMEOUTMET], xmm14       ;851.7
$LN4788:
        mov       DWORD PTR [18252+rbp], edx                    ;853.7
$LN4789:
        mov       DWORD PTR [18256+rbp], edi                    ;854.7
$LN4790:
        mov       DWORD PTR [18260+rbp], r9d                    ;855.7
$LN4791:
        mov       DWORD PTR [18264+rbp], r10d                   ;856.7
$LN4792:
        mov       DWORD PTR [18268+rbp], r11d                   ;857.7
$LN4793:
        mov       DWORD PTR [18276+rbp], -1                     ;859.7
$LN4794:
        mov       DWORD PTR [19032+rbp], r12d                   ;860.7
$LN4795:
        jmp       .B11.287      ; Prob 100%                     ;860.7
$LN4796:
                                ; LOE rbx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.316::                      ; Preds .B11.309
                                ; Execution count [4.74e-009]: Infreq
$LN4797:
        lea       rcx, QWORD PTR [__STRLITPACK_6]               ;832.18
$LN4798:
        mov       edx, 8                                        ;832.18
$LN4799:
;       SETSWIMERROR
        call      SETSWIMERROR                                  ;832.18
$LN4800:
        jmp       .B11.65       ; Prob 100%                     ;832.18
$LN4801:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.317::                      ; Preds .B11.306
                                ; Execution count [1.21e-008]: Infreq
$LN4802:
        lea       rcx, QWORD PTR [__STRLITPACK_7]               ;825.16
$LN4803:
        mov       edx, 13                                       ;825.16
$LN4804:
;       SETSWIMERROR
        call      SETSWIMERROR                                  ;825.16
$LN4805:
        jmp       .B11.65       ; Prob 100%                     ;825.16
$LN4806:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.318::                      ; Preds .B11.172
                                ; Execution count [6.78e-005]: Infreq
$LN4807:
        cmp       eax, 65535                                    ;702.20
$LN4808:
        je        .B11.178      ; Prob 16%                      ;702.20
$LN4809:
                                ; LOE rbx r12 eax esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.319::                      ; Preds .B11.318
                                ; Execution count [5.69e-005]: Infreq
$LN4810:
        mov       edx, eax                                      ;703.3
$LN4811:
        jmp       .B11.176      ; Prob 100%                     ;703.3
$LN4812:
                                ; LOE rbx r12 eax edx esi xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm15
.B11.321::                      ; Preds .B11.152
                                ; Execution count [2.76e-004]: Infreq
$LN4813:
        mov       rax, rsp                                      ;624.7
$LN4814:
        mov       rcx, r12                                      ;624.7
$LN4815:
        mov       edx, 80                                       ;624.7
$LN4816:
        lea       r8, QWORD PTR [__STRLITPACK_13]               ;624.7
$LN4817:
        mov       r9d, 8                                        ;624.7
$LN4818:
        mov       DWORD PTR [17680+rbp], esi                    ;340.5
$LN4819:
        mov       DWORD PTR [464+r12], 3                        ;623.7
$LN4820:
        mov       QWORD PTR [32+rax], 0                         ;624.7
$LN4821:
        call      for_cpystr                                    ;624.7
$LN4822:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.322::                      ; Preds .B11.321
                                ; Execution count [2.76e-004]: Infreq
$LN4823:
        mov       rax, rsp                                      ;625.7
$LN4824:
        lea       rcx, QWORD PTR [80+r12]                       ;625.7
$LN4825:
        mov       edx, 128                                      ;625.7
$LN4826:
        lea       r8, QWORD PTR [__STRLITPACK_12]               ;625.7
$LN4827:
        mov       r9d, 49                                       ;625.7
$LN4828:
        mov       QWORD PTR [32+rax], 0                         ;625.7
$LN4829:
        call      for_cpystr                                    ;625.7
$LN4830:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.323::                      ; Preds .B11.322
                                ; Execution count [2.76e-004]: Infreq
$LN4831:
        mov       rax, rsp                                      ;626.7
$LN4832:
        add       r12, 208                                      ;626.7
$LN4833:
        mov       rcx, r12                                      ;626.7
$LN4834:
        mov       edx, 128                                      ;626.7
$LN4835:
        lea       r8, QWORD PTR [__STRLITPACK_11]               ;626.7
$LN4836:
        mov       r9d, 50                                       ;626.7
$LN4837:
        mov       QWORD PTR [32+rax], 0                         ;626.7
$LN4838:
        call      for_cpystr                                    ;626.7
$LN4839:
        jmp       .B11.65       ; Prob 100%                     ;626.7
$LN4840:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.324::                      ; Preds .B11.242
                                ; Execution count [3.28e-004]: Infreq
$LN4841:
        jl        .B11.327      ; Prob 16%                      ;314.20
$LN4842:
                                ; LOE rsi r12 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.325::                      ; Preds .B11.324
                                ; Execution count [2.76e-004]: Infreq
$LN4843:
        mov       rax, rsp                                      ;319.9
$LN4844:
        mov       rcx, r12                                      ;319.9
$LN4845:
        mov       edx, 80                                       ;319.9
$LN4846:
        lea       r8, QWORD PTR [__STRLITPACK_102]              ;319.9
$LN4847:
        mov       r9d, 8                                        ;319.9
$LN4848:
        mov       DWORD PTR [464+r12], 5                        ;318.9
$LN4849:
        mov       QWORD PTR [32+rax], 0                         ;319.9
$LN4850:
        call      for_cpystr                                    ;319.9
$LN4851:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.326::                      ; Preds .B11.325
                                ; Execution count [2.76e-004]: Infreq
$LN4852:
        mov       rax, rsp                                      ;320.9
$LN4853:
        add       r12, 80                                       ;320.9
$LN4854:
        mov       rcx, r12                                      ;320.9
$LN4855:
        mov       edx, 128                                      ;320.9
$LN4856:
        lea       r8, QWORD PTR [__STRLITPACK_101]              ;320.9
$LN4857:
        mov       r9d, 41                                       ;320.9
$LN4858:
        mov       QWORD PTR [32+rax], 0                         ;320.9
$LN4859:
        call      for_cpystr                                    ;320.9
$LN4860:
        jmp       .B11.65       ; Prob 100%                     ;320.9
$LN4861:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.327::                      ; Preds .B11.324
                                ; Execution count [5.25e-005]: Infreq
$LN4862:
        mov       r8, 012083a4ff03H                             ;315.9
$LN4863:
        lea       rcx, QWORD PTR [20512+rbp]                    ;315.9
$LN4864:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_TMP]          ;315.9
$LN4865:
        mov       QWORD PTR [rcx], 0                            ;315.9
$LN4866:
        call      for_rewind                                    ;315.9
$LN4867:
                                ; LOE rsi r12 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.328::                      ; Preds .B11.327
                                ; Execution count [5.25e-005]: Infreq
$LN4868:
        xor       r14d, r14d                                    ;328.5
$LN4869:
        test      r15, r15                                      ;328.5
$LN4870:
        lea       rcx, QWORD PTR [17568+rbp]                    ;328.5
$LN4871:
        cmovg     r14, r15                                      ;328.5
$LN4872:
        mov       edx, 2                                        ;328.5
$LN4873:
        mov       r9d, 256                                      ;328.5
$LN4874:
        mov       r8, r14                                       ;328.5
$LN4875:
        mov       DWORD PTR [18032+rbp], r15d                   ;327.5
$LN4876:
        call      for_check_mult_overflow64                     ;328.5
$LN4877:
                                ; LOE rsi r12 r14 r15 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.688::                      ; Preds .B11.328
                                ; Execution count [5.25e-005]: Infreq
$LN4878:
        mov       r8d, eax                                      ;328.5
$LN4879:
                                ; LOE rsi r12 r14 r15 r8d bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.329::                      ; Preds .B11.688
                                ; Execution count [5.25e-005]: Infreq
$LN4880:
        and       r8d, 1                                        ;328.5
$LN4881:
        mov       rax, 0fffffff00fffffffH                       ;328.5
$LN4882:
        shl       r8d, 4                                        ;328.5
$LN4883:
        lea       rdx, QWORD PTR [18040+rbp]                    ;328.5
$LN4884:
        and       rax, QWORD PTR [24+rdx]                       ;328.5
$LN4885:
        add       r8d, 262145                                   ;328.5
$LN4886:
        mov       rcx, QWORD PTR [17568+rbp]                    ;328.5
$LN4887:
        add       rax, 1073741824                               ;328.5
$LN4888:
        mov       QWORD PTR [24+rdx], rax                       ;328.5
$LN4889:
        call      for_allocate                                  ;328.5
$LN4890:
                                ; LOE rax rsi r12 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.689::                      ; Preds .B11.329
                                ; Execution count [5.25e-005]: Infreq
$LN4891:
        mov       rdi, rax                                      ;328.5
$LN4892:
                                ; LOE rsi rdi r12 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.330::                      ; Preds .B11.689
                                ; Execution count [5.25e-005]: Infreq
$LN4893:
        test      rdi, rdi                                      ;328.5
$LN4894:
        jne       .B11.336      ; Prob 50%                      ;328.5
$LN4895:
                                ; LOE rsi rdi r12 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.331::                      ; Preds .B11.330
                                ; Execution count [2.63e-005]: Infreq
$LN4896:
        mov       eax, 256                                      ;328.5
$LN4897:
        lea       rcx, QWORD PTR [15752+rbp]                    ;328.5
$LN4898:
        mov       edx, 2                                        ;328.5
$LN4899:
        mov       r8, r14                                       ;328.5
$LN4900:
        mov       r9, rax                                       ;328.5
$LN4901:
        mov       r13d, 1                                       ;328.5
$LN4902:
        mov       QWORD PTR [18064+rbp], 5                      ;328.5
$LN4903:
        mov       QWORD PTR [18048+rbp], rax                    ;328.5
$LN4904:
        mov       QWORD PTR [18072+rbp], r13                    ;328.5
$LN4905:
        mov       QWORD PTR [18056+rbp], 0                      ;328.5
$LN4906:
        mov       QWORD PTR [18104+rbp], r13                    ;328.5
$LN4907:
        mov       QWORD PTR [18088+rbp], r14                    ;328.5
$LN4908:
        mov       QWORD PTR [18096+rbp], rax                    ;328.5
$LN4909:
        call      for_check_mult_overflow64                     ;328.5
$LN4910:
                                ; LOE rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.332::                      ; Preds .B11.331
                                ; Execution count [2.63e-005]: Infreq
$LN4911:
        mov       edx, 2                                        ;328.5
$LN4912:
        lea       rcx, QWORD PTR [16272+rbp]                    ;328.5
$LN4913:
        mov       r8, r14                                       ;328.5
$LN4914:
        mov       r9d, 4                                        ;328.5
$LN4915:
        call      for_check_mult_overflow64                     ;328.5
$LN4916:
                                ; LOE rsi r12 r13 r14 r15 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.690::                      ; Preds .B11.332
                                ; Execution count [2.63e-005]: Infreq
$LN4917:
        mov       r8d, eax                                      ;328.5
$LN4918:
                                ; LOE rsi r12 r13 r14 r15 r8d bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.333::                      ; Preds .B11.690
                                ; Execution count [2.63e-005]: Infreq
$LN4919:
        and       r8d, 1                                        ;328.5
$LN4920:
        mov       rax, 0fffffff00fffffffH                       ;328.5
$LN4921:
        shl       r8d, 4                                        ;328.5
$LN4922:
        lea       rdx, QWORD PTR [18112+rbp]                    ;328.5
$LN4923:
        and       rax, QWORD PTR [24+rdx]                       ;328.5
$LN4924:
        add       r8d, 262145                                   ;328.5
$LN4925:
        mov       rcx, QWORD PTR [16272+rbp]                    ;328.5
$LN4926:
        add       rax, 1073741824                               ;328.5
$LN4927:
        mov       QWORD PTR [24+rdx], rax                       ;328.5
$LN4928:
        call      for_allocate                                  ;328.5
$LN4929:
                                ; LOE rax rsi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.691::                      ; Preds .B11.333
                                ; Execution count [2.63e-005]: Infreq
$LN4930:
        mov       rdi, rax                                      ;328.5
$LN4931:
                                ; LOE rsi rdi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.334::                      ; Preds .B11.691
                                ; Execution count [2.63e-005]: Infreq
$LN4932:
        test      rdi, rdi                                      ;328.5
$LN4933:
        jne       .B11.336      ; Prob 50%                      ;328.5
$LN4934:
                                ; LOE rsi rdi r12 r13 r14 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.335::                      ; Preds .B11.334
                                ; Execution count [1.31e-005]: Infreq
$LN4935:
        mov       eax, 4                                        ;328.5
$LN4936:
        lea       rcx, QWORD PTR [15712+rbp]                    ;328.5
$LN4937:
        mov       edx, 2                                        ;328.5
$LN4938:
        mov       r8, r14                                       ;328.5
$LN4939:
        mov       r9, rax                                       ;328.5
$LN4940:
        mov       QWORD PTR [18136+rbp], 5                      ;328.5
$LN4941:
        mov       QWORD PTR [18120+rbp], rax                    ;328.5
$LN4942:
        mov       QWORD PTR [18144+rbp], r13                    ;328.5
$LN4943:
        mov       QWORD PTR [18128+rbp], 0                      ;328.5
$LN4944:
        mov       QWORD PTR [18176+rbp], r13                    ;328.5
$LN4945:
        mov       QWORD PTR [18160+rbp], r14                    ;328.5
$LN4946:
        mov       QWORD PTR [18168+rbp], rax                    ;328.5
$LN4947:
        call      for_check_mult_overflow64                     ;328.5
$LN4948:
                                ; LOE rsi rdi r12 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.336::                      ; Preds .B11.335 .B11.334 .B11.330
                                ; Execution count [5.25e-005]: Infreq
$LN4949:
        test      edi, edi                                      ;329.13
$LN4950:
        je        .B11.339      ; Prob 50%                      ;329.13
$LN4951:
                                ; LOE rsi r12 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.337::                      ; Preds .B11.336
                                ; Execution count [2.63e-005]: Infreq
$LN4952:
        mov       rax, rsp                                      ;331.7
$LN4953:
        mov       rcx, r12                                      ;331.7
$LN4954:
        mov       edx, 80                                       ;331.7
$LN4955:
        lea       r8, QWORD PTR [__STRLITPACK_100]              ;331.7
$LN4956:
        mov       r9d, 8                                        ;331.7
$LN4957:
        mov       DWORD PTR [464+r12], 99                       ;330.7
$LN4958:
        mov       QWORD PTR [32+rax], 0                         ;331.7
$LN4959:
        call      for_cpystr                                    ;331.7
$LN4960:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.338::                      ; Preds .B11.337
                                ; Execution count [2.63e-005]: Infreq
$LN4961:
        mov       rax, rsp                                      ;332.7
$LN4962:
        add       r12, 80                                       ;332.7
$LN4963:
        mov       rcx, r12                                      ;332.7
$LN4964:
        mov       edx, 128                                      ;332.7
$LN4965:
        lea       r8, QWORD PTR [__STRLITPACK_99]               ;332.7
$LN4966:
        mov       r9d, 27                                       ;332.7
$LN4967:
        mov       QWORD PTR [32+rax], 0                         ;332.7
$LN4968:
        call      for_cpystr                                    ;332.7
$LN4969:
        jmp       .B11.65       ; Prob 100%                     ;332.7
$LN4970:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.339::                      ; Preds .B11.336
                                ; Execution count [2.63e-005]: Infreq
$LN4971:
        mov       rdi, rsp                                      ;336.5
$LN4972:
        lea       rcx, QWORD PTR [20512+rbp]                    ;336.5
$LN4973:
        mov       r8, 012083a4ff03H                             ;336.5
$LN4974:
        lea       r9, QWORD PTR [__STRLITPACK_167.0.1]          ;336.5
$LN4975:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_TMP]          ;336.5
$LN4976:
        xor       eax, eax                                      ;336.5
$LN4977:
        mov       QWORD PTR [rcx], rax                          ;336.5
$LN4978:
        mov       QWORD PTR [32+rdi], rax                       ;336.5
$LN4979:
        call      for_read_seq_lis                              ;336.5
$LN4980:
                                ; LOE rsi r12 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.340::                      ; Preds .B11.339
                                ; Execution count [2.63e-005]: Infreq
$LN4981:
        mov       DWORD PTR [17680+rbp], 1                      ;340.5
$LN4982:
        test      r15, r15                                      ;340.5
$LN4983:
        jle       .B11.521      ; Prob 2%                       ;340.5
$LN4984:
                                ; LOE rsi r12 r15 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.341::                      ; Preds .B11.340
                                ; Execution count [2.57e-005]: Infreq
$LN4985:
        mov       QWORD PTR [10432+rbp], r15                    ;344.12[spill]
$LN4986:
        mov       BYTE PTR [10424+rbp], bl                      ;344.12[spill]
$LN4987:
        lea       r14, QWORD PTR [14428+rbp]                    ;344.12
$LN4988:
        lea       rdi, QWORD PTR [__NLITPACK_1.0.1]             ;344.12
$LN4989:
        lea       r13, QWORD PTR [16280+rbp]                    ;344.12
$LN4990:
        lea       rsi, QWORD PTR [20616+rbp]                    ;344.12
$LN4991:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.342::                      ; Preds .B11.519 .B11.341
                                ; Execution count [5.41e-005]: Infreq
$LN4992:
        mov       r15b, 1                                       ;342.7
$LN4993:
        lea       rbx, QWORD PTR [11776+rbp]                    ;342.7
$LN4994:
                                ; LOE rbx rsi rdi r12 r13 r14 r15b xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.343::                      ; Preds .B11.344 .B11.342
                                ; Execution count [5.41e-004]: Infreq
$LN4995:
        mov       rax, rsp                                      ;342.7
$LN4996:
        mov       rcx, rbx                                      ;342.7
$LN4997:
        mov       edx, 256                                      ;342.7
$LN4998:
        lea       r8, QWORD PTR [__STRLITPACK_98]               ;342.7
$LN4999:
        mov       r9d, 1                                        ;342.7
$LN5000:
        mov       QWORD PTR [32+rax], 0                         ;342.7
$LN5001:
        call      for_cpystr                                    ;342.7
$LN5002:
                                ; LOE rbx rsi rdi r12 r13 r14 r15b xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.344::                      ; Preds .B11.343
                                ; Execution count [5.41e-004]: Infreq
$LN5003:
        inc       r15b                                          ;342.7
$LN5004:
        add       rbx, 256                                      ;342.7
$LN5005:
        cmp       r15b, 10                                      ;342.7
$LN5006:
        jle       .B11.343      ; Prob 90%                      ;342.7
$LN5007:
                                ; LOE rbx rsi rdi r12 r13 r14 r15b xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.345::                      ; Preds .B11.344
                                ; Execution count [5.41e-005]: Infreq
$LN5008:
        mov       rbx, rsp                                      ;344.12
$LN5009:
        lea       rcx, QWORD PTR [FILES_FI_mp_LUN_TMP]          ;344.12
$LN5010:
        mov       r8d, 256                                      ;344.12
$LN5011:
        lea       rdx, QWORD PTR [17312+rbp]                    ;344.12
$LN5012:
        lea       r9, QWORD PTR [16284+rbp]                     ;344.12
$LN5013:
        lea       rax, QWORD PTR [11776+rbp]                    ;344.12
$LN5014:
        mov       QWORD PTR [32+rbx], r14                       ;344.12
$LN5015:
        mov       QWORD PTR [40+rbx], 4                         ;344.12
$LN5016:
        mov       QWORD PTR [48+rbx], r13                       ;344.12
$LN5017:
        mov       QWORD PTR [56+rbx], rax                       ;344.12
$LN5018:
        mov       QWORD PTR [64+rbx], 256                       ;344.12
$LN5019:
        mov       QWORD PTR [72+rbx], rdi                       ;344.12
$LN5020:
        mov       QWORD PTR [80+rbx], rsi                       ;344.12
$LN5021:
        call      GET_NEXT_DATA                                 ;344.12
$LN5022:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.346::                      ; Preds .B11.345
                                ; Execution count [5.41e-005]: Infreq
$LN5023:
        test      BYTE PTR [20616+rbp], 1                       ;345.11
$LN5024:
        jne       .B11.569      ; Prob 20%                      ;345.11
$LN5025:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.347::                      ; Preds .B11.346
                                ; Execution count [4.33e-005]: Infreq
$LN5026:
        mov       edx, 256                                      ;353.12
$LN5027:
        lea       rcx, QWORD PTR [11776+rbp]                    ;353.12
$LN5028:
        call      CUPPER                                        ;353.12
$LN5029:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.348::                      ; Preds .B11.347
                                ; Execution count [4.33e-005]: Infreq
$LN5030:
        mov       edx, 256                                      ;355.20
$LN5031:
        lea       rcx, QWORD PTR [14944+rbp]                    ;355.20
$LN5032:
        mov       r9, rdx                                       ;355.20
$LN5033:
        lea       r8, QWORD PTR [11776+rbp]                     ;355.20
$LN5034:
        mov       QWORD PTR [10440+rbp], rsp                    ;588.11[spill]
$LN5035:
        call      for_trim                                      ;355.20
$LN5036:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.349::                      ; Preds .B11.348
                                ; Execution count [4.33e-005]: Infreq
$LN5037:
        movsxd    rbx, eax                                      ;355.20
$LN5038:
        mov       rax, rbx                                      ;355.20
$LN5039:
        add       rax, 15                                       ;355.20
$LN5040:
        and       rax, -16                                      ;355.20
$LN5041:
        call      __chkstk                                      ;355.20
$LN5042:
        sub       rsp, rax                                      ;355.20
$LN5043:
        lea       rax, QWORD PTR [96+rsp]                       ;355.20
$LN5044:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.693::                      ; Preds .B11.349
                                ; Execution count [4.33e-005]: Infreq
$LN5045:
        mov       rcx, rax                                      ;355.20
$LN5046:
        lea       rdx, QWORD PTR [14944+rbp]                    ;355.20
$LN5047:
        mov       r8, rbx                                       ;355.20
$LN5048:
        mov       QWORD PTR [10480+rbp], rax                    ;355.20[spill]
$LN5049:
        call      memmove                                       ;355.20
$LN5050:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.350::                      ; Preds .B11.693
                                ; Execution count [4.33e-005]: Infreq
$LN5051:
        mov       r10, rsp                                      ;356.15
$LN5052:
        mov       rdx, rbx                                      ;356.15
$LN5053:
        lea       r8, QWORD PTR [__STRLITPACK_94]               ;356.15
$LN5054:
        mov       r9d, 7                                        ;356.15
$LN5055:
        mov       QWORD PTR [32+r10], 2                         ;356.15
$LN5056:
        mov       rcx, QWORD PTR [10480+rbp]                    ;356.15[spill]
$LN5057:
        call      for_cpstr                                     ;356.15
$LN5058:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.698::                      ; Preds .B11.350
                                ; Execution count [4.33e-005]: Infreq
$LN5059:
        mov       r10, rsp                                      ;356.25
$LN5060:
        mov       rdx, rbx                                      ;356.25
$LN5061:
        mov       QWORD PTR [10472+rbp], rax                    ;356.15[spill]
$LN5062:
        lea       r8, QWORD PTR [__STRLITPACK_93]               ;356.25
$LN5063:
        mov       r9d, 5                                        ;356.25
$LN5064:
        mov       QWORD PTR [32+r10], 2                         ;356.25
$LN5065:
        mov       rcx, QWORD PTR [10480+rbp]                    ;356.25[spill]
$LN5066:
        call      for_cpstr                                     ;356.25
$LN5067:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.697::                      ; Preds .B11.698
                                ; Execution count [4.33e-005]: Infreq
$LN5068:
        mov       r10, rsp                                      ;356.33
$LN5069:
        mov       rdx, rbx                                      ;356.33
$LN5070:
        mov       QWORD PTR [10464+rbp], rax                    ;356.25[spill]
$LN5071:
        lea       r8, QWORD PTR [__STRLITPACK_92]               ;356.33
$LN5072:
        mov       r9d, 3                                        ;356.33
$LN5073:
        mov       QWORD PTR [32+r10], 2                         ;356.33
$LN5074:
        mov       rcx, QWORD PTR [10480+rbp]                    ;356.33[spill]
$LN5075:
        call      for_cpstr                                     ;356.33
$LN5076:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.696::                      ; Preds .B11.697
                                ; Execution count [4.33e-005]: Infreq
$LN5077:
        mov       r10, rsp                                      ;356.39
$LN5078:
        mov       rdx, rbx                                      ;356.39
$LN5079:
        mov       QWORD PTR [10456+rbp], rax                    ;356.33[spill]
$LN5080:
        lea       r8, QWORD PTR [__STRLITPACK_91]               ;356.39
$LN5081:
        mov       r9d, 4                                        ;356.39
$LN5082:
        mov       QWORD PTR [32+r10], 2                         ;356.39
$LN5083:
        mov       rcx, QWORD PTR [10480+rbp]                    ;356.39[spill]
$LN5084:
        call      for_cpstr                                     ;356.39
$LN5085:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.695::                      ; Preds .B11.696
                                ; Execution count [4.33e-005]: Infreq
$LN5086:
        mov       r10, rsp                                      ;356.46
$LN5087:
        mov       rdx, rbx                                      ;356.46
$LN5088:
        mov       QWORD PTR [10448+rbp], rax                    ;356.39[spill]
$LN5089:
        lea       r8, QWORD PTR [__STRLITPACK_90]               ;356.46
$LN5090:
        mov       r9d, 6                                        ;356.46
$LN5091:
        mov       QWORD PTR [32+r10], 2                         ;356.46
$LN5092:
        mov       rcx, QWORD PTR [10480+rbp]                    ;356.46[spill]
$LN5093:
        call      for_cpstr                                     ;356.46
$LN5094:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.694::                      ; Preds .B11.695
                                ; Execution count [4.33e-005]: Infreq
$LN5095:
        mov       r9, QWORD PTR [10472+rbp]                     ;356.15[spill]
$LN5096:
        test      r9d, r9d                                      ;356.15
$LN5097:
        jne       .B11.355      ; Prob 50%                      ;356.15
$LN5098:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.351::                      ; Preds .B11.694
                                ; Execution count [2.17e-005]: Infreq
$LN5099:
        mov       r9, QWORD PTR [10464+rbp]                     ;356.25[spill]
$LN5100:
        test      r9d, r9d                                      ;356.15
$LN5101:
        jne       .B11.355      ; Prob 50%                      ;356.15
$LN5102:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.352::                      ; Preds .B11.351
                                ; Execution count [1.08e-005]: Infreq
$LN5103:
        mov       r9, QWORD PTR [10456+rbp]                     ;356.33[spill]
$LN5104:
        test      r9d, r9d                                      ;356.15
$LN5105:
        jne       .B11.355      ; Prob 50%                      ;356.15
$LN5106:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.353::                      ; Preds .B11.352
                                ; Execution count [5.41e-006]: Infreq
$LN5107:
        mov       r9, QWORD PTR [10448+rbp]                     ;356.39[spill]
$LN5108:
        test      r9d, r9d                                      ;356.15
$LN5109:
        jne       .B11.355      ; Prob 50%                      ;356.15
$LN5110:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.354::                      ; Preds .B11.353
                                ; Execution count [2.71e-006]: Infreq
$LN5111:
        test      eax, eax                                      ;356.15
$LN5112:
        je        .B11.361      ; Prob 50%                      ;356.15
$LN5113:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.355::                      ; Preds .B11.694 .B11.351 .B11.352 .B11.353 .B11.354
                                ;      
                                ; Execution count [4.20e-005]: Infreq
$LN5114:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;357.11
$LN5115:
        mov       r15, rsp                                      ;358.37
$LN5116:
        sub       rbx, QWORD PTR [18176+rbp]                    ;357.11
$LN5117:
        mov       edx, 256                                      ;358.37
$LN5118:
        imul      rbx, QWORD PTR [18168+rbp]                    ;357.11
$LN5119:
        mov       rax, QWORD PTR [18112+rbp]                    ;357.11
$LN5120:
        lea       rcx, QWORD PTR [14432+rbp]                    ;358.37
$LN5121:
        mov       r9, rdx                                       ;358.37
$LN5122:
        lea       r8, QWORD PTR [12032+rbp]                     ;358.37
$LN5123:
        lea       r11, QWORD PTR [__STRLITPACK_89]              ;358.37
$LN5124:
        lea       r10, QWORD PTR [17312+rbp]                    ;358.37
$LN5125:
        mov       DWORD PTR [rax+rbx], 2                        ;357.11
$LN5126:
        mov       QWORD PTR [32+r15], r10                       ;358.37
$LN5127:
        mov       QWORD PTR [40+r15], 256                       ;358.37
$LN5128:
        mov       QWORD PTR [48+r15], r11                       ;358.37
$LN5129:
        mov       QWORD PTR [56+r15], 0                         ;358.37
$LN5130:
;       BUILDFILENAME
        call      BUILDFILENAME                                 ;358.37
$LN5131:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.356::                      ; Preds .B11.355
                                ; Execution count [4.20e-005]: Infreq
$LN5132:
        mov       edx, 256                                      ;358.32
$LN5133:
        lea       rcx, QWORD PTR [14688+rbp]                    ;358.32
$LN5134:
        mov       r9, rdx                                       ;358.32
$LN5135:
        lea       r8, QWORD PTR [14432+rbp]                     ;358.32
$LN5136:
        call      for_trim                                      ;358.32
$LN5137:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.699::                      ; Preds .B11.356
                                ; Execution count [4.20e-005]: Infreq
$LN5138:
        mov       r9d, eax                                      ;358.32
$LN5139:
                                ; LOE rsi rdi r12 r13 r14 r9d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.357::                      ; Preds .B11.699
                                ; Execution count [4.20e-005]: Infreq
$LN5140:
        movsxd    rcx, DWORD PTR [17680+rbp]                    ;358.11
$LN5141:
        mov       rax, rsp                                      ;358.11
$LN5142:
        sub       rcx, QWORD PTR [18104+rbp]                    ;358.11
$LN5143:
        mov       edx, 256                                      ;358.11
$LN5144:
        imul      rcx, QWORD PTR [18096+rbp]                    ;358.11
$LN5145:
        add       rcx, QWORD PTR [18040+rbp]                    ;358.11
$LN5146:
        lea       r8, QWORD PTR [14688+rbp]                     ;358.11
$LN5147:
        movsxd    r9, r9d                                       ;358.11
$LN5148:
        mov       QWORD PTR [32+rax], 0                         ;358.11
$LN5149:
        call      for_cpystr                                    ;358.11
$LN5150:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.358::                      ; Preds .B11.357
                                ; Execution count [4.20e-005]: Infreq
$LN5151:
        lea       rcx, QWORD PTR [GRID_FI_mp_HRES]              ;360.16
$LN5152:
;       CHECKHRESDEFAULT
        call      CHECKHRESDEFAULT                              ;360.16
$LN5153:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.359::                      ; Preds .B11.358
                                ; Execution count [4.20e-005]: Infreq
$LN5154:
        cmp       DWORD PTR [464+r12], 0                        ;361.22
$LN5155:
        jne       .B11.65       ; Prob 20%                      ;361.22
$LN5156:
        jmp       .B11.765      ; Prob 100%                     ;361.22
$LN5157:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.361::                      ; Preds .B11.354
                                ; Execution count [1.35e-006]: Infreq
$LN5158:
        mov       r10, rsp                                      ;363.15
$LN5159:
        mov       rdx, rbx                                      ;363.15
$LN5160:
        lea       r8, QWORD PTR [__STRLITPACK_88]               ;363.15
$LN5161:
        mov       r9d, 3                                        ;363.15
$LN5162:
        mov       QWORD PTR [32+r10], 2                         ;363.15
$LN5163:
        mov       rcx, QWORD PTR [10480+rbp]                    ;363.15[spill]
$LN5164:
        call      for_cpstr                                     ;363.15
$LN5165:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.700::                      ; Preds .B11.361
                                ; Execution count [1.35e-006]: Infreq
$LN5166:
        test      eax, eax                                      ;363.15
$LN5167:
        je        .B11.368      ; Prob 22%                      ;363.15
$LN5168:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.362::                      ; Preds .B11.700
                                ; Execution count [1.06e-006]: Infreq
$LN5169:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;364.11
$LN5170:
        mov       r15, rsp                                      ;365.37
$LN5171:
        sub       rbx, QWORD PTR [18176+rbp]                    ;364.11
$LN5172:
        mov       edx, 256                                      ;365.37
$LN5173:
        imul      rbx, QWORD PTR [18168+rbp]                    ;364.11
$LN5174:
        mov       rax, QWORD PTR [18112+rbp]                    ;364.11
$LN5175:
        lea       rcx, QWORD PTR [10704+rbp]                    ;365.37
$LN5176:
        mov       r9, rdx                                       ;365.37
$LN5177:
        lea       r8, QWORD PTR [12032+rbp]                     ;365.37
$LN5178:
        lea       r11, QWORD PTR [__STRLITPACK_87]              ;365.37
$LN5179:
        lea       r10, QWORD PTR [17312+rbp]                    ;365.37
$LN5180:
        mov       DWORD PTR [rax+rbx], 14                       ;364.11
$LN5181:
        mov       QWORD PTR [32+r15], r10                       ;365.37
$LN5182:
        mov       QWORD PTR [40+r15], 256                       ;365.37
$LN5183:
        mov       QWORD PTR [48+r15], r11                       ;365.37
$LN5184:
        mov       QWORD PTR [56+r15], 0                         ;365.37
$LN5185:
;       BUILDFILENAME
        call      BUILDFILENAME                                 ;365.37
$LN5186:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.363::                      ; Preds .B11.362
                                ; Execution count [1.06e-006]: Infreq
$LN5187:
        mov       edx, 256                                      ;365.32
$LN5188:
        lea       rcx, QWORD PTR [10960+rbp]                    ;365.32
$LN5189:
        mov       r9, rdx                                       ;365.32
$LN5190:
        lea       r8, QWORD PTR [10704+rbp]                     ;365.32
$LN5191:
        call      for_trim                                      ;365.32
$LN5192:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.701::                      ; Preds .B11.363
                                ; Execution count [1.06e-006]: Infreq
$LN5193:
        mov       r9d, eax                                      ;365.32
$LN5194:
                                ; LOE rsi rdi r12 r13 r14 r9d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.364::                      ; Preds .B11.701
                                ; Execution count [1.06e-006]: Infreq
$LN5195:
        movsxd    rcx, DWORD PTR [17680+rbp]                    ;365.11
$LN5196:
        mov       rax, rsp                                      ;365.11
$LN5197:
        sub       rcx, QWORD PTR [18104+rbp]                    ;365.11
$LN5198:
        mov       edx, 256                                      ;365.11
$LN5199:
        imul      rcx, QWORD PTR [18096+rbp]                    ;365.11
$LN5200:
        add       rcx, QWORD PTR [18040+rbp]                    ;365.11
$LN5201:
        lea       r8, QWORD PTR [10960+rbp]                     ;365.11
$LN5202:
        movsxd    r9, r9d                                       ;365.11
$LN5203:
        mov       QWORD PTR [32+rax], 0                         ;365.11
$LN5204:
        call      for_cpystr                                    ;365.11
$LN5205:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.365::                      ; Preds .B11.364
                                ; Execution count [1.06e-006]: Infreq
$LN5206:
        lea       rcx, QWORD PTR [GRID_FI_mp_HRES]              ;367.16
$LN5207:
;       CHECKHRESDEFAULT
        call      CHECKHRESDEFAULT                              ;367.16
$LN5208:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.366::                      ; Preds .B11.365
                                ; Execution count [1.06e-006]: Infreq
$LN5209:
        cmp       DWORD PTR [464+r12], 0                        ;368.22
$LN5210:
        jne       .B11.65       ; Prob 20%                      ;368.22
$LN5211:
        jmp       .B11.765      ; Prob 100%                     ;368.22
$LN5212:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.368::                      ; Preds .B11.700
                                ; Execution count [2.98e-007]: Infreq
$LN5213:
        mov       r10, rsp                                      ;370.15
$LN5214:
        mov       rdx, rbx                                      ;370.15
$LN5215:
        lea       r8, QWORD PTR [__STRLITPACK_86]               ;370.15
$LN5216:
        mov       r9d, 10                                       ;370.15
$LN5217:
        mov       QWORD PTR [32+r10], 2                         ;370.15
$LN5218:
        mov       rcx, QWORD PTR [10480+rbp]                    ;370.15[spill]
$LN5219:
        call      for_cpstr                                     ;370.15
$LN5220:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.703::                      ; Preds .B11.368
                                ; Execution count [2.98e-007]: Infreq
$LN5221:
        mov       r10, rsp                                      ;370.28
$LN5222:
        mov       rdx, rbx                                      ;370.28
$LN5223:
        mov       QWORD PTR [10416+rbp], rax                    ;370.15[spill]
$LN5224:
        lea       r8, QWORD PTR [__STRLITPACK_85]               ;370.28
$LN5225:
        mov       r9d, 9                                        ;370.28
$LN5226:
        mov       QWORD PTR [32+r10], 2                         ;370.28
$LN5227:
        mov       rcx, QWORD PTR [10480+rbp]                    ;370.28[spill]
$LN5228:
        call      for_cpstr                                     ;370.28
$LN5229:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.702::                      ; Preds .B11.703
                                ; Execution count [2.98e-007]: Infreq
$LN5230:
        mov       r9, QWORD PTR [10416+rbp]                     ;370.15[spill]
$LN5231:
        test      r9d, r9d                                      ;370.15
$LN5232:
        jne       .B11.370      ; Prob 50%                      ;370.15
$LN5233:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.369::                      ; Preds .B11.702
                                ; Execution count [1.49e-007]: Infreq
$LN5234:
        test      eax, eax                                      ;370.15
$LN5235:
        je        .B11.376      ; Prob 22%                      ;370.15
$LN5236:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.370::                      ; Preds .B11.369 .B11.702
                                ; Execution count [2.65e-007]: Infreq
$LN5237:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;371.11
$LN5238:
        mov       r15, rsp                                      ;372.37
$LN5239:
        sub       rbx, QWORD PTR [18176+rbp]                    ;371.11
$LN5240:
        mov       edx, 256                                      ;372.37
$LN5241:
        imul      rbx, QWORD PTR [18168+rbp]                    ;371.11
$LN5242:
        mov       rax, QWORD PTR [18112+rbp]                    ;371.11
$LN5243:
        lea       rcx, QWORD PTR [9840+rbp]                     ;372.37
$LN5244:
        mov       r9, rdx                                       ;372.37
$LN5245:
        lea       r8, QWORD PTR [12032+rbp]                     ;372.37
$LN5246:
        lea       r11, QWORD PTR [__STRLITPACK_84]              ;372.37
$LN5247:
        lea       r10, QWORD PTR [17312+rbp]                    ;372.37
$LN5248:
        mov       DWORD PTR [rax+rbx], 22                       ;371.11
$LN5249:
        mov       QWORD PTR [32+r15], r10                       ;372.37
$LN5250:
        mov       QWORD PTR [40+r15], 256                       ;372.37
$LN5251:
        mov       QWORD PTR [48+r15], r11                       ;372.37
$LN5252:
        mov       QWORD PTR [56+r15], 0                         ;372.37
$LN5253:
;       BUILDFILENAME
        call      BUILDFILENAME                                 ;372.37
$LN5254:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.371::                      ; Preds .B11.370
                                ; Execution count [2.65e-007]: Infreq
$LN5255:
        mov       edx, 256                                      ;372.32
$LN5256:
        lea       rcx, QWORD PTR [10096+rbp]                    ;372.32
$LN5257:
        mov       r9, rdx                                       ;372.32
$LN5258:
        lea       r8, QWORD PTR [9840+rbp]                      ;372.32
$LN5259:
        call      for_trim                                      ;372.32
$LN5260:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.704::                      ; Preds .B11.371
                                ; Execution count [2.65e-007]: Infreq
$LN5261:
        mov       r9d, eax                                      ;372.32
$LN5262:
                                ; LOE rsi rdi r12 r13 r14 r9d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.372::                      ; Preds .B11.704
                                ; Execution count [2.65e-007]: Infreq
$LN5263:
        movsxd    rcx, DWORD PTR [17680+rbp]                    ;372.11
$LN5264:
        mov       rax, rsp                                      ;372.11
$LN5265:
        sub       rcx, QWORD PTR [18104+rbp]                    ;372.11
$LN5266:
        mov       edx, 256                                      ;372.11
$LN5267:
        imul      rcx, QWORD PTR [18096+rbp]                    ;372.11
$LN5268:
        add       rcx, QWORD PTR [18040+rbp]                    ;372.11
$LN5269:
        lea       r8, QWORD PTR [10096+rbp]                     ;372.11
$LN5270:
        movsxd    r9, r9d                                       ;372.11
$LN5271:
        mov       QWORD PTR [32+rax], 0                         ;372.11
$LN5272:
        call      for_cpystr                                    ;372.11
$LN5273:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.373::                      ; Preds .B11.372
                                ; Execution count [2.65e-007]: Infreq
$LN5274:
        lea       rcx, QWORD PTR [GRID_FI_mp_HRES]              ;374.16
$LN5275:
;       CHECKHRESDEFAULT
        call      CHECKHRESDEFAULT                              ;374.16
$LN5276:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.374::                      ; Preds .B11.373
                                ; Execution count [2.65e-007]: Infreq
$LN5277:
        cmp       DWORD PTR [464+r12], 0                        ;375.22
$LN5278:
        jne       .B11.65       ; Prob 20%                      ;375.22
$LN5279:
        jmp       .B11.765      ; Prob 100%                     ;375.22
$LN5280:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.376::                      ; Preds .B11.369
                                ; Execution count [3.28e-008]: Infreq
$LN5281:
        mov       r10, rsp                                      ;377.15
$LN5282:
        mov       rdx, rbx                                      ;377.15
$LN5283:
        lea       r8, QWORD PTR [__STRLITPACK_83]               ;377.15
$LN5284:
        mov       r9d, 3                                        ;377.15
$LN5285:
        mov       QWORD PTR [32+r10], 2                         ;377.15
$LN5286:
        mov       rcx, QWORD PTR [10480+rbp]                    ;377.15[spill]
$LN5287:
        call      for_cpstr                                     ;377.15
$LN5288:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.707::                      ; Preds .B11.376
                                ; Execution count [3.28e-008]: Infreq
$LN5289:
        mov       r10, rsp                                      ;377.21
$LN5290:
        mov       rdx, rbx                                      ;377.21
$LN5291:
        mov       QWORD PTR [10408+rbp], rax                    ;377.15[spill]
$LN5292:
        lea       r8, QWORD PTR [__STRLITPACK_82]               ;377.21
$LN5293:
        mov       r9d, 3                                        ;377.21
$LN5294:
        mov       QWORD PTR [32+r10], 2                         ;377.21
$LN5295:
        mov       rcx, QWORD PTR [10480+rbp]                    ;377.21[spill]
$LN5296:
        call      for_cpstr                                     ;377.21
$LN5297:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.706::                      ; Preds .B11.707
                                ; Execution count [3.28e-008]: Infreq
$LN5298:
        mov       r10, rsp                                      ;377.27
$LN5299:
        mov       rdx, rbx                                      ;377.27
$LN5300:
        mov       QWORD PTR [10400+rbp], rax                    ;377.21[spill]
$LN5301:
        lea       r8, QWORD PTR [__STRLITPACK_81]               ;377.27
$LN5302:
        mov       r9d, 3                                        ;377.27
$LN5303:
        mov       QWORD PTR [32+r10], 2                         ;377.27
$LN5304:
        mov       rcx, QWORD PTR [10480+rbp]                    ;377.27[spill]
$LN5305:
        call      for_cpstr                                     ;377.27
$LN5306:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.705::                      ; Preds .B11.706
                                ; Execution count [3.28e-008]: Infreq
$LN5307:
        mov       r9, QWORD PTR [10408+rbp]                     ;377.15[spill]
$LN5308:
        test      r9d, r9d                                      ;377.15
$LN5309:
        jne       .B11.379      ; Prob 50%                      ;377.15
$LN5310:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.377::                      ; Preds .B11.705
                                ; Execution count [1.64e-008]: Infreq
$LN5311:
        mov       r9, QWORD PTR [10400+rbp]                     ;377.21[spill]
$LN5312:
        test      r9d, r9d                                      ;377.15
$LN5313:
        jne       .B11.379      ; Prob 50%                      ;377.15
$LN5314:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.378::                      ; Preds .B11.377
                                ; Execution count [8.19e-009]: Infreq
$LN5315:
        test      eax, eax                                      ;377.15
$LN5316:
        je        .B11.383      ; Prob 50%                      ;377.15
$LN5317:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.379::                      ; Preds .B11.705 .B11.377 .B11.378
                                ; Execution count [2.87e-008]: Infreq
$LN5318:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;378.11
$LN5319:
        mov       r15, rsp                                      ;379.37
$LN5320:
        sub       rbx, QWORD PTR [18176+rbp]                    ;378.11
$LN5321:
        mov       edx, 256                                      ;379.37
$LN5322:
        imul      rbx, QWORD PTR [18168+rbp]                    ;378.11
$LN5323:
        mov       rax, QWORD PTR [18112+rbp]                    ;378.11
$LN5324:
        lea       rcx, QWORD PTR [9328+rbp]                     ;379.37
$LN5325:
        mov       r9, rdx                                       ;379.37
$LN5326:
        lea       r8, QWORD PTR [12032+rbp]                     ;379.37
$LN5327:
        lea       r11, QWORD PTR [__STRLITPACK_80]              ;379.37
$LN5328:
        lea       r10, QWORD PTR [17312+rbp]                    ;379.37
$LN5329:
        mov       DWORD PTR [rax+rbx], 0                        ;378.11
$LN5330:
        mov       QWORD PTR [32+r15], r10                       ;379.37
$LN5331:
        mov       QWORD PTR [40+r15], 256                       ;379.37
$LN5332:
        mov       QWORD PTR [48+r15], r11                       ;379.37
$LN5333:
        mov       QWORD PTR [56+r15], 0                         ;379.37
$LN5334:
;       BUILDFILENAME
        call      BUILDFILENAME                                 ;379.37
$LN5335:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.380::                      ; Preds .B11.379
                                ; Execution count [2.87e-008]: Infreq
$LN5336:
        mov       edx, 256                                      ;379.32
$LN5337:
        lea       rcx, QWORD PTR [9584+rbp]                     ;379.32
$LN5338:
        mov       r9, rdx                                       ;379.32
$LN5339:
        lea       r8, QWORD PTR [9328+rbp]                      ;379.32
$LN5340:
        call      for_trim                                      ;379.32
$LN5341:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.708::                      ; Preds .B11.380
                                ; Execution count [2.87e-008]: Infreq
$LN5342:
        mov       r9d, eax                                      ;379.32
$LN5343:
                                ; LOE rsi rdi r12 r13 r14 r9d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.381::                      ; Preds .B11.708
                                ; Execution count [2.87e-008]: Infreq
$LN5344:
        movsxd    rcx, DWORD PTR [17680+rbp]                    ;379.11
$LN5345:
        mov       rax, rsp                                      ;379.11
$LN5346:
        sub       rcx, QWORD PTR [18104+rbp]                    ;379.11
$LN5347:
        mov       edx, 256                                      ;379.11
$LN5348:
        imul      rcx, QWORD PTR [18096+rbp]                    ;379.11
$LN5349:
        add       rcx, QWORD PTR [18040+rbp]                    ;379.11
$LN5350:
        lea       r8, QWORD PTR [9584+rbp]                      ;379.11
$LN5351:
        movsxd    r9, r9d                                       ;379.11
$LN5352:
        mov       QWORD PTR [32+rax], 0                         ;379.11
$LN5353:
        call      for_cpystr                                    ;379.11
$LN5354:
        jmp       .B11.765      ; Prob 100%                     ;379.11
$LN5355:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.383::                      ; Preds .B11.378
                                ; Execution count [4.09e-009]: Infreq
$LN5356:
        mov       r10, rsp                                      ;381.15
$LN5357:
        mov       rdx, rbx                                      ;381.15
$LN5358:
        lea       r8, QWORD PTR [__STRLITPACK_79]               ;381.15
$LN5359:
        mov       r9d, 6                                        ;381.15
$LN5360:
        mov       QWORD PTR [32+r10], 2                         ;381.15
$LN5361:
        mov       rcx, QWORD PTR [10480+rbp]                    ;381.15[spill]
$LN5362:
        call      for_cpstr                                     ;381.15
$LN5363:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.709::                      ; Preds .B11.383
                                ; Execution count [4.09e-009]: Infreq
$LN5364:
        test      eax, eax                                      ;381.15
$LN5365:
        je        .B11.401      ; Prob 50%                      ;381.15
$LN5366:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.384::                      ; Preds .B11.709
                                ; Execution count [2.05e-009]: Infreq
$LN5367:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;382.11
$LN5368:
        mov       edx, 256                                      ;383.41
$LN5369:
        sub       rbx, QWORD PTR [18176+rbp]                    ;382.11
$LN5370:
        lea       rcx, QWORD PTR [8624+rbp]                     ;383.41
$LN5371:
        imul      rbx, QWORD PTR [18168+rbp]                    ;382.11
$LN5372:
        mov       rax, QWORD PTR [18112+rbp]                    ;382.11
$LN5373:
        lea       r8, QWORD PTR [12032+rbp]                     ;383.41
$LN5374:
        mov       r9, rdx                                       ;383.41
$LN5375:
        lea       r10, QWORD PTR [__STRLITPACK_0]               ;383.34
$LN5376:
        lea       r15, QWORD PTR [__STRLITPACK_78]              ;383.41
$LN5377:
        lea       r11, QWORD PTR [17312+rbp]                    ;383.41
$LN5378:
        mov       DWORD PTR [rax+rbx], 12                       ;382.11
$LN5379:
        mov       rax, rsp                                      ;383.41
$LN5380:
        mov       QWORD PTR [9280+rbp], r10                     ;383.34
$LN5381:
        mov       QWORD PTR [9288+rbp], 1                       ;383.34
$LN5382:
        mov       QWORD PTR [32+rax], r11                       ;383.41
$LN5383:
        mov       QWORD PTR [40+rax], 256                       ;383.41
$LN5384:
        mov       QWORD PTR [48+rax], r15                       ;383.41
$LN5385:
        mov       QWORD PTR [56+rax], 0                         ;383.41
$LN5386:
;       BUILDFILENAME
        call      BUILDFILENAME                                 ;383.41
$LN5387:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.385::                      ; Preds .B11.384
                                ; Execution count [2.05e-009]: Infreq
$LN5388:
        mov       edx, 256                                      ;383.36
$LN5389:
        lea       rbx, QWORD PTR [8880+rbp]                     ;383.36
$LN5390:
        mov       rcx, rbx                                      ;383.36
$LN5391:
        lea       r8, QWORD PTR [8624+rbp]                      ;383.36
$LN5392:
        mov       r9, rdx                                       ;383.36
$LN5393:
        call      for_trim                                      ;383.36
$LN5394:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.386::                      ; Preds .B11.385
                                ; Execution count [2.05e-009]: Infreq
$LN5395:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;383.11
$LN5396:
        lea       rcx, QWORD PTR [9280+rbp]                     ;383.11
$LN5397:
        sub       r8, QWORD PTR [18104+rbp]                     ;383.11
$LN5398:
        mov       edx, 3                                        ;383.11
$LN5399:
        imul      r8, QWORD PTR [18096+rbp]                     ;383.11
$LN5400:
        add       r8, QWORD PTR [18040+rbp]                     ;383.11
$LN5401:
        mov       r9d, 256                                      ;383.11
$LN5402:
        mov       QWORD PTR [16+rcx], rbx                       ;383.34
$LN5403:
        lea       rbx, QWORD PTR [__STRLITPACK_0]               ;383.76
$LN5404:
        movsxd    rax, eax                                      ;383.36
$LN5405:
        mov       QWORD PTR [24+rcx], rax                       ;383.34
$LN5406:
        mov       QWORD PTR [32+rcx], rbx                       ;383.76
$LN5407:
        mov       QWORD PTR [40+rcx], 1                         ;383.76
$LN5408:
        call      for_concat                                    ;383.11
$LN5409:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.387::                      ; Preds .B11.386
                                ; Execution count [2.05e-009]: Infreq
$LN5410:
        movsxd    rax, DWORD PTR [16280+rbp]                    ;387.13
$LN5411:
        cmp       BYTE PTR [12032+rbp], 34                      ;385.29
$LN5412:
        jne       .B11.392      ; Prob 50%                      ;385.29
$LN5413:
                                ; LOE rax rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.388::                      ; Preds .B11.387
                                ; Execution count [1.02e-009]: Infreq
$LN5414:
        xor       ebx, ebx                                      ;386.13
$LN5415:
        mov       r15d, 2                                       ;387.13
$LN5416:
        lea       rcx, QWORD PTR [12032+rbp]                    ;387.13
$LN5417:
        cmp       rax, 2                                        ;387.13
$LN5418:
        jl        .B11.393      ; Prob 10%                      ;387.13
$LN5419:
                                ; LOE rax rcx rsi rdi r12 r13 r14 r15 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.389::                      ; Preds .B11.388
                                ; Execution count [9.21e-010]: Infreq
$LN5420:
        mov       rsi, rax                                      ;
$LN5421:
        mov       r14, r12                                      ;
$LN5422:
        mov       r12, rcx                                      ;
$LN5423:
        lea       r13, QWORD PTR [__STRLITPACK_0]               ;
$LN5424:
                                ; LOE rsi rdi r12 r13 r14 r15 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.390::                      ; Preds .B11.711 .B11.389
                                ; Execution count [2.36e-007]: Infreq
$LN5425:
        mov       r10, rsp                                      ;388.19
$LN5426:
        mov       rcx, r12                                      ;388.19
$LN5427:
        mov       edx, 256                                      ;388.19
$LN5428:
        mov       r8, r13                                       ;388.19
$LN5429:
        mov       r9d, 1                                        ;388.19
$LN5430:
        mov       DWORD PTR [32+r10], 0                         ;388.19
$LN5431:
        call      for_f90_index                                 ;388.19
$LN5432:
                                ; LOE rsi rdi r12 r13 r14 r15 eax ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.711::                      ; Preds .B11.390
                                ; Execution count [2.36e-007]: Infreq
$LN5433:
        mov       r9d, r15d                                     ;388.43
$LN5434:
        inc       r15                                           ;389.13
$LN5435:
        inc       r9d                                           ;388.43
$LN5436:
        test      eax, eax                                      ;388.43
$LN5437:
        cmovg     ebx, r9d                                      ;388.43
$LN5438:
        add       r12, 256                                      ;389.13
$LN5439:
        cmp       r15, rsi                                      ;389.13
$LN5440:
        jle       .B11.390      ; Prob 99%                      ;389.13
$LN5441:
                                ; LOE rsi rdi r12 r13 r14 r15 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.391::                      ; Preds .B11.711
                                ; Execution count [9.21e-010]: Infreq
$LN5442:
        mov       rax, rsi                                      ;
$LN5443:
        mov       r12, r14                                      ;
$LN5444:
        lea       r13, QWORD PTR [16280+rbp]                    ;
$LN5445:
        lea       r14, QWORD PTR [14428+rbp]                    ;
$LN5446:
        lea       rsi, QWORD PTR [20616+rbp]                    ;
$LN5447:
        jmp       .B11.393      ; Prob 100%                     ;
$LN5448:
                                ; LOE rax rsi rdi r12 r13 r14 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.392::                      ; Preds .B11.387
                                ; Execution count [1.02e-009]: Infreq
$LN5449:
        mov       ebx, 3                                        ;391.13
$LN5450:
                                ; LOE rax rsi rdi r12 r13 r14 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.393::                      ; Preds .B11.391 .B11.388 .B11.392
                                ; Execution count [2.05e-009]: Infreq
$LN5451:
        movsxd    rdx, ebx                                      ;394.21
$LN5452:
        cmp       rax, rdx                                      ;394.21
$LN5453:
        jl        .B11.765      ; Prob 50%                      ;394.21
$LN5454:
                                ; LOE rax rdx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.395::                      ; Preds .B11.393
                                ; Execution count [9.21e-010]: Infreq
$LN5455:
        mov       r8, rdx                                       ;395.13
$LN5456:
        lea       rcx, QWORD PTR [7600+rbp]                     ;396.67
$LN5457:
        shl       r8, 8                                         ;395.13
$LN5458:
        lea       r15, QWORD PTR [__STRLITPACK_77]              ;396.60
$LN5459:
        mov       r14, rax                                      ;396.60
$LN5460:
        lea       rbx, QWORD PTR [7856+rbp]                     ;396.60
$LN5461:
        mov       rdi, rdx                                      ;396.60
$LN5462:
        mov       r13, rcx                                      ;396.60
$LN5463:
        lea       r8, QWORD PTR [11520+rbp+r8]                  ;396.67
$LN5464:
        mov       rsi, r8                                       ;396.60
$LN5465:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.396::                      ; Preds .B11.399 .B11.395
                                ; Execution count [2.36e-007]: Infreq
$LN5466:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;396.36
$LN5467:
        mov       edx, 256                                      ;396.36
$LN5468:
        sub       r8, QWORD PTR [18104+rbp]                     ;396.36
$LN5469:
        mov       rcx, r13                                      ;396.36
$LN5470:
        imul      r8, QWORD PTR [18096+rbp]                     ;396.36
$LN5471:
        add       r8, QWORD PTR [18040+rbp]                     ;396.36
$LN5472:
        mov       r9, rdx                                       ;396.36
$LN5473:
        call      for_trim                                      ;396.36
$LN5474:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.397::                      ; Preds .B11.396
                                ; Execution count [2.36e-007]: Infreq
$LN5475:
        mov       edx, 256                                      ;396.67
$LN5476:
        mov       rcx, rbx                                      ;396.67
$LN5477:
        mov       r8, rsi                                       ;396.67
$LN5478:
        mov       r9, rdx                                       ;396.67
$LN5479:
        movsxd    rax, eax                                      ;396.36
$LN5480:
        mov       QWORD PTR [11472+rbp], r13                    ;396.60
$LN5481:
        mov       QWORD PTR [11480+rbp], rax                    ;396.60
$LN5482:
        mov       QWORD PTR [11488+rbp], r15                    ;396.60
$LN5483:
        mov       QWORD PTR [11496+rbp], 1                      ;396.60
$LN5484:
        call      for_trim                                      ;396.67
$LN5485:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.398::                      ; Preds .B11.397
                                ; Execution count [2.36e-007]: Infreq
$LN5486:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;396.15
$LN5487:
        lea       rcx, QWORD PTR [11472+rbp]                    ;396.15
$LN5488:
        sub       r8, QWORD PTR [18104+rbp]                     ;396.15
$LN5489:
        mov       edx, 3                                        ;396.15
$LN5490:
        imul      r8, QWORD PTR [18096+rbp]                     ;396.15
$LN5491:
        add       r8, QWORD PTR [18040+rbp]                     ;396.15
$LN5492:
        mov       r9d, 256                                      ;396.15
$LN5493:
        movsxd    rax, eax                                      ;396.67
$LN5494:
        mov       QWORD PTR [32+rcx], rbx                       ;396.65
$LN5495:
        mov       QWORD PTR [40+rcx], rax                       ;396.65
$LN5496:
        call      for_concat                                    ;396.15
$LN5497:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.399::                      ; Preds .B11.398
                                ; Execution count [2.36e-007]: Infreq
$LN5498:
        inc       rdi                                           ;397.13
$LN5499:
        add       rsi, 256                                      ;397.13
$LN5500:
        cmp       rdi, r14                                      ;397.13
$LN5501:
        jle       .B11.396      ; Prob 99%                      ;397.13
$LN5502:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.400::                      ; Preds .B11.399
                                ; Execution count [9.21e-010]: Infreq
$LN5503:
        mov       edx, DWORD PTR [17680+rbp]                    ;592.5
$LN5504:
        lea       rdi, QWORD PTR [__NLITPACK_1.0.1]             ;
$LN5505:
        lea       r13, QWORD PTR [16280+rbp]                    ;
$LN5506:
        lea       r14, QWORD PTR [14428+rbp]                    ;
$LN5507:
        lea       rsi, QWORD PTR [20616+rbp]                    ;
$LN5508:
        jmp       .B11.518      ; Prob 100%                     ;
$LN5509:
                                ; LOE rsi rdi r12 r13 r14 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.401::                      ; Preds .B11.709
                                ; Execution count [2.05e-009]: Infreq
$LN5510:
        mov       r10, rsp                                      ;400.15
$LN5511:
        mov       rdx, rbx                                      ;400.15
$LN5512:
        lea       r8, QWORD PTR [__STRLITPACK_76]               ;400.15
$LN5513:
        mov       r9d, 6                                        ;400.15
$LN5514:
        mov       QWORD PTR [32+r10], 2                         ;400.15
$LN5515:
        mov       rcx, QWORD PTR [10480+rbp]                    ;400.15[spill]
$LN5516:
        call      for_cpstr                                     ;400.15
$LN5517:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.714::                      ; Preds .B11.401
                                ; Execution count [2.05e-009]: Infreq
$LN5518:
        test      eax, eax                                      ;400.15
$LN5519:
        je        .B11.419      ; Prob 50%                      ;400.15
$LN5520:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.402::                      ; Preds .B11.714
                                ; Execution count [1.02e-009]: Infreq
$LN5521:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;401.11
$LN5522:
        mov       edx, 256                                      ;402.41
$LN5523:
        sub       rbx, QWORD PTR [18176+rbp]                    ;401.11
$LN5524:
        lea       rcx, QWORD PTR [8112+rbp]                     ;402.41
$LN5525:
        imul      rbx, QWORD PTR [18168+rbp]                    ;401.11
$LN5526:
        mov       rax, QWORD PTR [18112+rbp]                    ;401.11
$LN5527:
        lea       r8, QWORD PTR [12032+rbp]                     ;402.41
$LN5528:
        mov       r9, rdx                                       ;402.41
$LN5529:
        lea       r10, QWORD PTR [__STRLITPACK_0]               ;402.34
$LN5530:
        lea       r15, QWORD PTR [__STRLITPACK_75]              ;402.41
$LN5531:
        lea       r11, QWORD PTR [17312+rbp]                    ;402.41
$LN5532:
        mov       DWORD PTR [rax+rbx], 13                       ;401.11
$LN5533:
        mov       rax, rsp                                      ;402.41
$LN5534:
        mov       QWORD PTR [9184+rbp], r10                     ;402.34
$LN5535:
        mov       QWORD PTR [9192+rbp], 1                       ;402.34
$LN5536:
        mov       QWORD PTR [32+rax], r11                       ;402.41
$LN5537:
        mov       QWORD PTR [40+rax], 256                       ;402.41
$LN5538:
        mov       QWORD PTR [48+rax], r15                       ;402.41
$LN5539:
        mov       QWORD PTR [56+rax], 0                         ;402.41
$LN5540:
;       BUILDFILENAME
        call      BUILDFILENAME                                 ;402.41
$LN5541:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.403::                      ; Preds .B11.402
                                ; Execution count [1.02e-009]: Infreq
$LN5542:
        mov       edx, 256                                      ;402.36
$LN5543:
        lea       rbx, QWORD PTR [8368+rbp]                     ;402.36
$LN5544:
        mov       rcx, rbx                                      ;402.36
$LN5545:
        lea       r8, QWORD PTR [8112+rbp]                      ;402.36
$LN5546:
        mov       r9, rdx                                       ;402.36
$LN5547:
        call      for_trim                                      ;402.36
$LN5548:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.404::                      ; Preds .B11.403
                                ; Execution count [1.02e-009]: Infreq
$LN5549:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;402.11
$LN5550:
        lea       rcx, QWORD PTR [9184+rbp]                     ;402.11
$LN5551:
        sub       r8, QWORD PTR [18104+rbp]                     ;402.11
$LN5552:
        mov       edx, 3                                        ;402.11
$LN5553:
        imul      r8, QWORD PTR [18096+rbp]                     ;402.11
$LN5554:
        add       r8, QWORD PTR [18040+rbp]                     ;402.11
$LN5555:
        mov       r9d, 256                                      ;402.11
$LN5556:
        mov       QWORD PTR [16+rcx], rbx                       ;402.34
$LN5557:
        lea       rbx, QWORD PTR [__STRLITPACK_0]               ;402.76
$LN5558:
        movsxd    rax, eax                                      ;402.36
$LN5559:
        mov       QWORD PTR [24+rcx], rax                       ;402.34
$LN5560:
        mov       QWORD PTR [32+rcx], rbx                       ;402.76
$LN5561:
        mov       QWORD PTR [40+rcx], 1                         ;402.76
$LN5562:
        call      for_concat                                    ;402.11
$LN5563:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.405::                      ; Preds .B11.404
                                ; Execution count [1.02e-009]: Infreq
$LN5564:
        movsxd    rax, DWORD PTR [16280+rbp]                    ;406.13
$LN5565:
        cmp       BYTE PTR [12032+rbp], 34                      ;404.29
$LN5566:
        jne       .B11.410      ; Prob 50%                      ;404.29
$LN5567:
                                ; LOE rax rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.406::                      ; Preds .B11.405
                                ; Execution count [5.12e-010]: Infreq
$LN5568:
        xor       ebx, ebx                                      ;405.13
$LN5569:
        mov       r15d, 2                                       ;406.13
$LN5570:
        lea       rcx, QWORD PTR [12032+rbp]                    ;406.13
$LN5571:
        cmp       rax, 2                                        ;406.13
$LN5572:
        jl        .B11.411      ; Prob 10%                      ;406.13
$LN5573:
                                ; LOE rax rcx rsi rdi r12 r13 r14 r15 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.407::                      ; Preds .B11.406
                                ; Execution count [4.61e-010]: Infreq
$LN5574:
        mov       rsi, rax                                      ;
$LN5575:
        mov       r14, r12                                      ;
$LN5576:
        mov       r12, rcx                                      ;
$LN5577:
        lea       r13, QWORD PTR [__STRLITPACK_0]               ;
$LN5578:
                                ; LOE rsi rdi r12 r13 r14 r15 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.408::                      ; Preds .B11.716 .B11.407
                                ; Execution count [1.18e-007]: Infreq
$LN5579:
        mov       r10, rsp                                      ;407.19
$LN5580:
        mov       rcx, r12                                      ;407.19
$LN5581:
        mov       edx, 256                                      ;407.19
$LN5582:
        mov       r8, r13                                       ;407.19
$LN5583:
        mov       r9d, 1                                        ;407.19
$LN5584:
        mov       DWORD PTR [32+r10], 0                         ;407.19
$LN5585:
        call      for_f90_index                                 ;407.19
$LN5586:
                                ; LOE rsi rdi r12 r13 r14 r15 eax ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.716::                      ; Preds .B11.408
                                ; Execution count [1.18e-007]: Infreq
$LN5587:
        mov       r9d, r15d                                     ;407.43
$LN5588:
        inc       r15                                           ;408.13
$LN5589:
        inc       r9d                                           ;407.43
$LN5590:
        test      eax, eax                                      ;407.43
$LN5591:
        cmovg     ebx, r9d                                      ;407.43
$LN5592:
        add       r12, 256                                      ;408.13
$LN5593:
        cmp       r15, rsi                                      ;408.13
$LN5594:
        jle       .B11.408      ; Prob 99%                      ;408.13
$LN5595:
                                ; LOE rsi rdi r12 r13 r14 r15 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.409::                      ; Preds .B11.716
                                ; Execution count [4.61e-010]: Infreq
$LN5596:
        mov       rax, rsi                                      ;
$LN5597:
        mov       r12, r14                                      ;
$LN5598:
        lea       r13, QWORD PTR [16280+rbp]                    ;
$LN5599:
        lea       r14, QWORD PTR [14428+rbp]                    ;
$LN5600:
        lea       rsi, QWORD PTR [20616+rbp]                    ;
$LN5601:
        jmp       .B11.411      ; Prob 100%                     ;
$LN5602:
                                ; LOE rax rsi rdi r12 r13 r14 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.410::                      ; Preds .B11.405
                                ; Execution count [5.12e-010]: Infreq
$LN5603:
        mov       ebx, 3                                        ;410.13
$LN5604:
                                ; LOE rax rsi rdi r12 r13 r14 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.411::                      ; Preds .B11.409 .B11.406 .B11.410
                                ; Execution count [1.02e-009]: Infreq
$LN5605:
        movsxd    rdx, ebx                                      ;413.21
$LN5606:
        cmp       rax, rdx                                      ;413.21
$LN5607:
        jl        .B11.765      ; Prob 50%                      ;413.21
$LN5608:
                                ; LOE rax rdx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.413::                      ; Preds .B11.411
                                ; Execution count [4.61e-010]: Infreq
$LN5609:
        mov       r8, rdx                                       ;414.13
$LN5610:
        lea       rcx, QWORD PTR [6416+rbp]                     ;415.67
$LN5611:
        shl       r8, 8                                         ;414.13
$LN5612:
        lea       r15, QWORD PTR [__STRLITPACK_74]              ;415.60
$LN5613:
        mov       r14, rax                                      ;415.60
$LN5614:
        lea       rbx, QWORD PTR [6672+rbp]                     ;415.60
$LN5615:
        mov       rdi, rdx                                      ;415.60
$LN5616:
        mov       r13, rcx                                      ;415.60
$LN5617:
        lea       r8, QWORD PTR [11520+rbp+r8]                  ;415.67
$LN5618:
        mov       rsi, r8                                       ;415.60
$LN5619:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.414::                      ; Preds .B11.417 .B11.413
                                ; Execution count [1.18e-007]: Infreq
$LN5620:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;415.36
$LN5621:
        mov       edx, 256                                      ;415.36
$LN5622:
        sub       r8, QWORD PTR [18104+rbp]                     ;415.36
$LN5623:
        mov       rcx, r13                                      ;415.36
$LN5624:
        imul      r8, QWORD PTR [18096+rbp]                     ;415.36
$LN5625:
        add       r8, QWORD PTR [18040+rbp]                     ;415.36
$LN5626:
        mov       r9, rdx                                       ;415.36
$LN5627:
        call      for_trim                                      ;415.36
$LN5628:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.415::                      ; Preds .B11.414
                                ; Execution count [1.18e-007]: Infreq
$LN5629:
        mov       edx, 256                                      ;415.67
$LN5630:
        mov       rcx, rbx                                      ;415.67
$LN5631:
        mov       r8, rsi                                       ;415.67
$LN5632:
        mov       r9, rdx                                       ;415.67
$LN5633:
        movsxd    rax, eax                                      ;415.36
$LN5634:
        mov       QWORD PTR [10656+rbp], r13                    ;415.60
$LN5635:
        mov       QWORD PTR [10664+rbp], rax                    ;415.60
$LN5636:
        mov       QWORD PTR [10672+rbp], r15                    ;415.60
$LN5637:
        mov       QWORD PTR [10680+rbp], 1                      ;415.60
$LN5638:
        call      for_trim                                      ;415.67
$LN5639:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.416::                      ; Preds .B11.415
                                ; Execution count [1.18e-007]: Infreq
$LN5640:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;415.15
$LN5641:
        lea       rcx, QWORD PTR [10656+rbp]                    ;415.15
$LN5642:
        sub       r8, QWORD PTR [18104+rbp]                     ;415.15
$LN5643:
        mov       edx, 3                                        ;415.15
$LN5644:
        imul      r8, QWORD PTR [18096+rbp]                     ;415.15
$LN5645:
        add       r8, QWORD PTR [18040+rbp]                     ;415.15
$LN5646:
        mov       r9d, 256                                      ;415.15
$LN5647:
        movsxd    rax, eax                                      ;415.67
$LN5648:
        mov       QWORD PTR [32+rcx], rbx                       ;415.65
$LN5649:
        mov       QWORD PTR [40+rcx], rax                       ;415.65
$LN5650:
        call      for_concat                                    ;415.15
$LN5651:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.417::                      ; Preds .B11.416
                                ; Execution count [1.18e-007]: Infreq
$LN5652:
        inc       rdi                                           ;416.13
$LN5653:
        add       rsi, 256                                      ;416.13
$LN5654:
        cmp       rdi, r14                                      ;416.13
$LN5655:
        jle       .B11.414      ; Prob 99%                      ;416.13
$LN5656:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.418::                      ; Preds .B11.417
                                ; Execution count [4.61e-010]: Infreq
$LN5657:
        mov       edx, DWORD PTR [17680+rbp]                    ;592.5
$LN5658:
        lea       rdi, QWORD PTR [__NLITPACK_1.0.1]             ;
$LN5659:
        lea       r13, QWORD PTR [16280+rbp]                    ;
$LN5660:
        lea       r14, QWORD PTR [14428+rbp]                    ;
$LN5661:
        lea       rsi, QWORD PTR [20616+rbp]                    ;
$LN5662:
        jmp       .B11.518      ; Prob 100%                     ;
$LN5663:
                                ; LOE rsi rdi r12 r13 r14 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.419::                      ; Preds .B11.714
                                ; Execution count [1.02e-009]: Infreq
$LN5664:
        mov       r10, rsp                                      ;419.15
$LN5665:
        mov       rdx, rbx                                      ;419.15
$LN5666:
        lea       r8, QWORD PTR [__STRLITPACK_73]               ;419.15
$LN5667:
        mov       r9d, 8                                        ;419.15
$LN5668:
        mov       QWORD PTR [32+r10], 2                         ;419.15
$LN5669:
        mov       rcx, QWORD PTR [10480+rbp]                    ;419.15[spill]
$LN5670:
        call      for_cpstr                                     ;419.15
$LN5671:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.719::                      ; Preds .B11.419
                                ; Execution count [1.02e-009]: Infreq
$LN5672:
        test      eax, eax                                      ;419.15
$LN5673:
        je        .B11.451      ; Prob 22%                      ;419.15
$LN5674:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.420::                      ; Preds .B11.719
                                ; Execution count [7.98e-010]: Infreq
$LN5675:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;420.11
$LN5676:
        mov       edx, 256                                      ;421.41
$LN5677:
        sub       rbx, QWORD PTR [18176+rbp]                    ;420.11
$LN5678:
        lea       rcx, QWORD PTR [7008+rbp]                     ;421.41
$LN5679:
        imul      rbx, QWORD PTR [18168+rbp]                    ;420.11
$LN5680:
        mov       rax, QWORD PTR [18112+rbp]                    ;420.11
$LN5681:
        lea       r8, QWORD PTR [12032+rbp]                     ;421.41
$LN5682:
        mov       r9, rdx                                       ;421.41
$LN5683:
        lea       r10, QWORD PTR [__STRLITPACK_0]               ;421.34
$LN5684:
        lea       r15, QWORD PTR [__STRLITPACK_72]              ;421.41
$LN5685:
        lea       r11, QWORD PTR [17312+rbp]                    ;421.41
$LN5686:
        mov       DWORD PTR [rax+rbx], 23                       ;420.11
$LN5687:
        mov       rax, rsp                                      ;421.41
$LN5688:
        mov       QWORD PTR [9136+rbp], r10                     ;421.34
$LN5689:
        mov       QWORD PTR [9144+rbp], 1                       ;421.34
$LN5690:
        mov       QWORD PTR [32+rax], r11                       ;421.41
$LN5691:
        mov       QWORD PTR [40+rax], 256                       ;421.41
$LN5692:
        mov       QWORD PTR [48+rax], r15                       ;421.41
$LN5693:
        mov       QWORD PTR [56+rax], 0                         ;421.41
$LN5694:
;       BUILDFILENAME
        call      BUILDFILENAME                                 ;421.41
$LN5695:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.421::                      ; Preds .B11.420
                                ; Execution count [7.98e-010]: Infreq
$LN5696:
        mov       edx, 256                                      ;421.36
$LN5697:
        lea       rbx, QWORD PTR [7264+rbp]                     ;421.36
$LN5698:
        mov       rcx, rbx                                      ;421.36
$LN5699:
        lea       r8, QWORD PTR [7008+rbp]                      ;421.36
$LN5700:
        mov       r9, rdx                                       ;421.36
$LN5701:
        call      for_trim                                      ;421.36
$LN5702:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.422::                      ; Preds .B11.421
                                ; Execution count [7.98e-010]: Infreq
$LN5703:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;421.11
$LN5704:
        lea       rcx, QWORD PTR [9136+rbp]                     ;421.11
$LN5705:
        sub       r8, QWORD PTR [18104+rbp]                     ;421.11
$LN5706:
        mov       edx, 3                                        ;421.11
$LN5707:
        imul      r8, QWORD PTR [18096+rbp]                     ;421.11
$LN5708:
        add       r8, QWORD PTR [18040+rbp]                     ;421.11
$LN5709:
        mov       r9d, 256                                      ;421.11
$LN5710:
        mov       QWORD PTR [16+rcx], rbx                       ;421.34
$LN5711:
        lea       rbx, QWORD PTR [__STRLITPACK_0]               ;421.75
$LN5712:
        movsxd    rax, eax                                      ;421.36
$LN5713:
        mov       QWORD PTR [24+rcx], rax                       ;421.34
$LN5714:
        mov       QWORD PTR [32+rcx], rbx                       ;421.75
$LN5715:
        mov       QWORD PTR [40+rcx], 1                         ;421.75
$LN5716:
        call      for_concat                                    ;421.11
$LN5717:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.423::                      ; Preds .B11.422
                                ; Execution count [7.98e-010]: Infreq
$LN5718:
        mov       ebx, DWORD PTR [16280+rbp]                    ;426.13
$LN5719:
        cmp       BYTE PTR [12032+rbp], 34                      ;423.29
$LN5720:
        jne       .B11.443      ; Prob 50%                      ;423.29
$LN5721:
                                ; LOE rsi rdi r12 r13 r14 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.424::                      ; Preds .B11.423
                                ; Execution count [3.99e-010]: Infreq
$LN5722:
        movsxd    rbx, ebx                                      ;426.13
$LN5723:
        mov       eax, 3                                        ;426.13
$LN5724:
        lea       r15, QWORD PTR [12288+rbp]                    ;426.13
$LN5725:
        cmp       rbx, 3                                        ;426.13
$LN5726:
        jl        .B11.765      ; Prob 10%                      ;426.13
$LN5727:
                                ; LOE rax rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.425::                      ; Preds .B11.424
                                ; Execution count [3.59e-010]: Infreq
$LN5728:
        mov       rsi, rax                                      ;
$LN5729:
        lea       r14, QWORD PTR [__STRLITPACK_0]               ;
$LN5730:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.426::                      ; Preds .B11.427 .B11.425
                                ; Execution count [1.28e-009]: Infreq
$LN5731:
        mov       r10, rsp                                      ;427.19
$LN5732:
        mov       edx, 1                                        ;427.19
$LN5733:
        mov       rcx, r15                                      ;427.19
$LN5734:
        mov       r8, r14                                       ;427.19
$LN5735:
        mov       r9d, edx                                      ;427.19
$LN5736:
        mov       DWORD PTR [32+r10], 0                         ;427.19
$LN5737:
        call      for_f90_index                                 ;427.19
$LN5738:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.721::                      ; Preds .B11.426
                                ; Execution count [1.28e-009]: Infreq
$LN5739:
        test      eax, eax                                      ;427.43
$LN5740:
        jg        .B11.526      ; Prob 20%                      ;427.43
$LN5741:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.427::                      ; Preds .B11.721
                                ; Execution count [1.03e-009]: Infreq
$LN5742:
        inc       rsi                                           ;430.13
$LN5743:
        add       r15, 256                                      ;430.13
$LN5744:
        cmp       rsi, rbx                                      ;430.13
$LN5745:
        jle       .B11.426      ; Prob 90%                      ;430.13
$LN5746:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.428::                      ; Preds .B11.427
                                ; Execution count [1.03e-010]: Infreq
$LN5747:
        lea       r14, QWORD PTR [14428+rbp]                    ;
$LN5748:
        lea       rsi, QWORD PTR [20616+rbp]                    ;
$LN5749:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.429::                      ; Preds .B11.428 .B11.539 .B11.526
                                ; Execution count [3.59e-010]: Infreq
$LN5750:
        cmp       rbx, 4                                        ;439.23
$LN5751:
        jl        .B11.765      ; Prob 50%                      ;439.23
$LN5752:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.430::                      ; Preds .B11.429
                                ; Execution count [2.00e-010]: Infreq
$LN5753:
        mov       r15, rbx                                      ;441.15
$LN5754:
        mov       rax, rbx                                      ;441.15
$LN5755:
        shl       r15, 8                                        ;441.15
$LN5756:
        mov       QWORD PTR [4104+rbp], 2                       ;440.15[spill]
$LN5757:
        cmp       rbx, 2                                        ;441.15
$LN5758:
        jl        .B11.435      ; Prob 10%                      ;441.15
$LN5759:
                                ; LOE rax rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.431::                      ; Preds .B11.430
                                ; Execution count [1.80e-010]: Infreq
$LN5760:
        mov       rsi, rax                                      ;
$LN5761:
        lea       r14, QWORD PTR [__STRLITPACK_0]               ;
$LN5762:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.432::                      ; Preds .B11.433 .B11.431
                                ; Execution count [8.84e-010]: Infreq
$LN5763:
        mov       edx, 256                                      ;442.21
$LN5764:
        lea       rcx, QWORD PTR [11520+rbp+r15]                ;442.21
$LN5765:
        call      for_len_trim                                  ;442.21
$LN5766:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.723::                      ; Preds .B11.432
                                ; Execution count [8.84e-010]: Infreq
$LN5767:
        mov       r10, rsp                                      ;443.21
$LN5768:
        mov       edx, 1                                        ;443.21
$LN5769:
        movsxd    rax, eax                                      ;443.21
$LN5770:
        mov       r8, r14                                       ;443.21
$LN5771:
        mov       r9d, edx                                      ;443.21
$LN5772:
        mov       DWORD PTR [32+r10], 0                         ;443.21
$LN5773:
        lea       rcx, QWORD PTR [11519+rbp+rax]                ;443.21
$LN5774:
        add       rcx, r15                                      ;443.21
$LN5775:
        call      for_f90_index                                 ;443.21
$LN5776:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.722::                      ; Preds .B11.723
                                ; Execution count [8.84e-010]: Infreq
$LN5777:
        test      eax, eax                                      ;443.45
$LN5778:
        jg        .B11.525      ; Prob 20%                      ;443.45
$LN5779:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.433::                      ; Preds .B11.722
                                ; Execution count [7.08e-010]: Infreq
$LN5780:
        dec       rsi                                           ;446.15
$LN5781:
        add       r15, -256                                     ;446.15
$LN5782:
        cmp       rsi, 2                                        ;446.15
$LN5783:
        jge       .B11.432      ; Prob 99%                      ;446.15
$LN5784:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.434::                      ; Preds .B11.433
                                ; Execution count [2.76e-012]: Infreq
$LN5785:
        lea       r14, QWORD PTR [14428+rbp]                    ;
$LN5786:
        lea       rsi, QWORD PTR [20616+rbp]                    ;
$LN5787:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.435::                      ; Preds .B11.525 .B11.434 .B11.430
                                ; Execution count [2.00e-010]: Infreq
$LN5788:
        mov       rax, QWORD PTR [4104+rbp]                     ;447.29[spill]
$LN5789:
        lea       rdx, QWORD PTR [2+rax]                        ;447.29
$LN5790:
        cmp       rbx, rdx                                      ;447.25
$LN5791:
        jne       .B11.765      ; Prob 78%                      ;447.25
$LN5792:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.437::                      ; Preds .B11.435
                                ; Execution count [4.39e-011]: Infreq
$LN5793:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;447.54
$LN5794:
        lea       rbx, QWORD PTR [3168+rbp]                     ;447.54
$LN5795:
        sub       r8, QWORD PTR [18104+rbp]                     ;447.54
$LN5796:
        mov       edx, 256                                      ;447.54
$LN5797:
        imul      r8, QWORD PTR [18096+rbp]                     ;447.54
$LN5798:
        add       r8, QWORD PTR [18040+rbp]                     ;447.54
$LN5799:
        mov       rcx, rbx                                      ;447.54
$LN5800:
        mov       r9, rdx                                       ;447.54
$LN5801:
        call      for_trim                                      ;447.54
$LN5802:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.438::                      ; Preds .B11.437
                                ; Execution count [4.39e-011]: Infreq
$LN5803:
        mov       QWORD PTR [4024+rbp], rbx                     ;447.78
$LN5804:
        lea       r15, QWORD PTR [__STRLITPACK_67]              ;447.78
$LN5805:
        mov       rbx, QWORD PTR [4104+rbp]                     ;447.85[spill]
$LN5806:
        mov       edx, 256                                      ;447.85
$LN5807:
        shl       rbx, 8                                        ;447.85
$LN5808:
        lea       rcx, QWORD PTR [3424+rbp]                     ;447.85
$LN5809:
        mov       QWORD PTR [4040+rbp], r15                     ;447.78
$LN5810:
        mov       r9, rdx                                       ;447.85
$LN5811:
        movsxd    rax, eax                                      ;447.54
$LN5812:
        mov       QWORD PTR [4032+rbp], rax                     ;447.78
$LN5813:
        mov       QWORD PTR [4048+rbp], 1                       ;447.78
$LN5814:
        lea       r15, QWORD PTR [11776+rbp+rbx]                ;447.90
$LN5815:
        mov       r8, r15                                       ;447.85
$LN5816:
        call      for_trim                                      ;447.85
$LN5817:
                                ; LOE rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.725::                      ; Preds .B11.438
                                ; Execution count [4.39e-011]: Infreq
$LN5818:
        mov       edx, eax                                      ;447.85
$LN5819:
                                ; LOE rsi rdi r12 r13 r14 r15 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.439::                      ; Preds .B11.725
                                ; Execution count [4.39e-011]: Infreq
$LN5820:
        lea       rbx, QWORD PTR [__STRLITPACK_66]              ;447.101
$LN5821:
        lea       rax, QWORD PTR [3424+rbp]                     ;447.83
$LN5822:
        mov       QWORD PTR [4056+rbp], rax                     ;447.83
$LN5823:
        add       r15, 256                                      ;447.108
$LN5824:
        movsxd    rax, edx                                      ;447.85
$LN5825:
        mov       edx, 256                                      ;447.108
$LN5826:
        mov       QWORD PTR [4072+rbp], rbx                     ;447.101
$LN5827:
        lea       rbx, QWORD PTR [3680+rbp]                     ;447.108
$LN5828:
        mov       rcx, rbx                                      ;447.108
$LN5829:
        mov       r8, r15                                       ;447.108
$LN5830:
        mov       r9, rdx                                       ;447.108
$LN5831:
        mov       QWORD PTR [4064+rbp], rax                     ;447.83
$LN5832:
        mov       QWORD PTR [4080+rbp], 1                       ;447.101
$LN5833:
        call      for_trim                                      ;447.108
$LN5834:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.440::                      ; Preds .B11.439
                                ; Execution count [4.39e-011]: Infreq
$LN5835:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;447.33
$LN5836:
        lea       rcx, QWORD PTR [4024+rbp]                     ;447.33
$LN5837:
        sub       r8, QWORD PTR [18104+rbp]                     ;447.33
$LN5838:
        mov       edx, 5                                        ;447.33
$LN5839:
        imul      r8, QWORD PTR [18096+rbp]                     ;447.33
$LN5840:
        add       r8, QWORD PTR [18040+rbp]                     ;447.33
$LN5841:
        mov       r9d, 256                                      ;447.33
$LN5842:
        movsxd    rax, eax                                      ;447.108
$LN5843:
        mov       QWORD PTR [64+rcx], rbx                       ;447.106
$LN5844:
        mov       QWORD PTR [72+rcx], rax                       ;447.106
$LN5845:
        call      for_concat                                    ;447.33
$LN5846:
        jmp       .B11.765      ; Prob 100%                     ;447.33
$LN5847:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.443::                      ; Preds .B11.423
                                ; Execution count [3.99e-010]: Infreq
$LN5848:
        cmp       ebx, 3                                        ;452.13
$LN5849:
        je        .B11.445      ; Prob 33%                      ;452.13
$LN5850:
                                ; LOE rsi rdi r12 r13 r14 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.444::                      ; Preds .B11.443
                                ; Execution count [2.66e-010]: Infreq
$LN5851:
        cmp       ebx, 5                                        ;452.13
$LN5852:
        jne       .B11.449      ; Prob 50%                      ;452.13
$LN5853:
                                ; LOE rsi rdi r12 r13 r14 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.445::                      ; Preds .B11.443 .B11.444
                                ; Execution count [2.66e-010]: Infreq
$LN5854:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;452.66
$LN5855:
        mov       edx, 256                                      ;452.66
$LN5856:
        sub       r8, QWORD PTR [18104+rbp]                     ;452.66
$LN5857:
        lea       rcx, QWORD PTR [5904+rbp]                     ;452.66
$LN5858:
        imul      r8, QWORD PTR [18096+rbp]                     ;452.66
$LN5859:
        add       r8, QWORD PTR [18040+rbp]                     ;452.66
$LN5860:
        mov       r9, rdx                                       ;452.66
$LN5861:
        call      for_trim                                      ;452.66
$LN5862:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.727::                      ; Preds .B11.445
                                ; Execution count [2.66e-010]: Infreq
$LN5863:
        mov       edx, eax                                      ;452.66
$LN5864:
                                ; LOE rsi rdi r12 r13 r14 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.446::                      ; Preds .B11.727
                                ; Execution count [2.66e-010]: Infreq
$LN5865:
        lea       rbx, QWORD PTR [__STRLITPACK_65]              ;452.90
$LN5866:
        lea       rax, QWORD PTR [5904+rbp]                     ;452.90
$LN5867:
        mov       QWORD PTR [7520+rbp], rax                     ;452.90
$LN5868:
        lea       r8, QWORD PTR [12288+rbp]                     ;452.101
$LN5869:
        movsxd    rax, edx                                      ;452.66
$LN5870:
        mov       edx, 256                                      ;452.101
$LN5871:
        mov       QWORD PTR [7536+rbp], rbx                     ;452.90
$LN5872:
        lea       rbx, QWORD PTR [6160+rbp]                     ;452.101
$LN5873:
        mov       rcx, rbx                                      ;452.101
$LN5874:
        mov       r9, rdx                                       ;452.101
$LN5875:
        mov       r11d, 1                                       ;452.90
$LN5876:
        lea       r10, QWORD PTR [__STRLITPACK_0]               ;452.95
$LN5877:
        mov       QWORD PTR [7528+rbp], rax                     ;452.90
$LN5878:
        mov       QWORD PTR [7544+rbp], r11                     ;452.90
$LN5879:
        mov       QWORD PTR [7552+rbp], r10                     ;452.95
$LN5880:
        mov       QWORD PTR [7560+rbp], r11                     ;452.95
$LN5881:
        call      for_trim                                      ;452.101
$LN5882:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.447::                      ; Preds .B11.446
                                ; Execution count [2.66e-010]: Infreq
$LN5883:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;452.45
$LN5884:
        lea       rcx, QWORD PTR [7520+rbp]                     ;452.45
$LN5885:
        sub       r8, QWORD PTR [18104+rbp]                     ;452.45
$LN5886:
        mov       edx, 5                                        ;452.45
$LN5887:
        imul      r8, QWORD PTR [18096+rbp]                     ;452.45
$LN5888:
        add       r8, QWORD PTR [18040+rbp]                     ;452.45
$LN5889:
        mov       r9d, 256                                      ;452.45
$LN5890:
        mov       QWORD PTR [48+rcx], rbx                       ;452.99
$LN5891:
        lea       rbx, QWORD PTR [__STRLITPACK_0]               ;452.115
$LN5892:
        movsxd    rax, eax                                      ;452.101
$LN5893:
        mov       QWORD PTR [56+rcx], rax                       ;452.99
$LN5894:
        mov       QWORD PTR [64+rcx], rbx                       ;452.115
$LN5895:
        mov       QWORD PTR [72+rcx], 1                         ;452.115
$LN5896:
        call      for_concat                                    ;452.45
$LN5897:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.448::                      ; Preds .B11.447
                                ; Execution count [2.66e-010]: Infreq
$LN5898:
        mov       ebx, DWORD PTR [16280+rbp]                    ;453.13
$LN5899:
                                ; LOE rsi rdi r12 r13 r14 ebx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.449::                      ; Preds .B11.444 .B11.448
                                ; Execution count [3.99e-010]: Infreq
$LN5900:
        and       ebx, -2                                       ;453.28
$LN5901:
        cmp       ebx, 4                                        ;453.28
$LN5902:
        je        .B11.540      ; Prob 5%                       ;453.28
$LN5903:
        jmp       .B11.765      ; Prob 100%                     ;453.28
$LN5904:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.451::                      ; Preds .B11.719
                                ; Execution count [2.25e-010]: Infreq
$LN5905:
        mov       r10, rsp                                      ;457.15
$LN5906:
        mov       rdx, rbx                                      ;457.15
$LN5907:
        lea       r8, QWORD PTR [__STRLITPACK_62]               ;457.15
$LN5908:
        mov       r9d, 8                                        ;457.15
$LN5909:
        mov       QWORD PTR [32+r10], 2                         ;457.15
$LN5910:
        mov       rcx, QWORD PTR [10480+rbp]                    ;457.15[spill]
$LN5911:
        call      for_cpstr                                     ;457.15
$LN5912:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.732::                      ; Preds .B11.451
                                ; Execution count [2.25e-010]: Infreq
$LN5913:
        mov       r10, rsp                                      ;457.26
$LN5914:
        mov       rdx, rbx                                      ;457.26
$LN5915:
        mov       QWORD PTR [9264+rbp], rax                     ;457.15[spill]
$LN5916:
        lea       r8, QWORD PTR [__STRLITPACK_61]               ;457.26
$LN5917:
        mov       r9d, 7                                        ;457.26
$LN5918:
        mov       QWORD PTR [32+r10], 2                         ;457.26
$LN5919:
        mov       rcx, QWORD PTR [10480+rbp]                    ;457.26[spill]
$LN5920:
        call      for_cpstr                                     ;457.26
$LN5921:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.731::                      ; Preds .B11.732
                                ; Execution count [2.25e-010]: Infreq
$LN5922:
        mov       r10, rsp                                      ;457.36
$LN5923:
        mov       rdx, rbx                                      ;457.36
$LN5924:
        mov       QWORD PTR [9256+rbp], rax                     ;457.26[spill]
$LN5925:
        lea       r8, QWORD PTR [__STRLITPACK_60]               ;457.36
$LN5926:
        mov       r9d, 5                                        ;457.36
$LN5927:
        mov       QWORD PTR [32+r10], 2                         ;457.36
$LN5928:
        mov       rcx, QWORD PTR [10480+rbp]                    ;457.36[spill]
$LN5929:
        call      for_cpstr                                     ;457.36
$LN5930:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.730::                      ; Preds .B11.731
                                ; Execution count [2.25e-010]: Infreq
$LN5931:
        mov       r10, rsp                                      ;457.44
$LN5932:
        mov       rdx, rbx                                      ;457.44
$LN5933:
        mov       QWORD PTR [9248+rbp], rax                     ;457.36[spill]
$LN5934:
        lea       r8, QWORD PTR [__STRLITPACK_59]               ;457.44
$LN5935:
        mov       r9d, 4                                        ;457.44
$LN5936:
        mov       QWORD PTR [32+r10], 2                         ;457.44
$LN5937:
        mov       rcx, QWORD PTR [10480+rbp]                    ;457.44[spill]
$LN5938:
        call      for_cpstr                                     ;457.44
$LN5939:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.729::                      ; Preds .B11.730
                                ; Execution count [2.25e-010]: Infreq
$LN5940:
        mov       r9, QWORD PTR [9264+rbp]                      ;457.15[spill]
$LN5941:
        test      r9d, r9d                                      ;457.15
$LN5942:
        jne       .B11.455      ; Prob 50%                      ;457.15
$LN5943:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.452::                      ; Preds .B11.729
                                ; Execution count [1.13e-010]: Infreq
$LN5944:
        mov       r9, QWORD PTR [9256+rbp]                      ;457.26[spill]
$LN5945:
        test      r9d, r9d                                      ;457.15
$LN5946:
        jne       .B11.455      ; Prob 50%                      ;457.15
$LN5947:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.453::                      ; Preds .B11.452
                                ; Execution count [5.63e-011]: Infreq
$LN5948:
        mov       r9, QWORD PTR [9248+rbp]                      ;457.36[spill]
$LN5949:
        test      r9d, r9d                                      ;457.15
$LN5950:
        jne       .B11.455      ; Prob 50%                      ;457.15
$LN5951:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.454::                      ; Preds .B11.453
                                ; Execution count [2.81e-011]: Infreq
$LN5952:
        test      eax, eax                                      ;457.15
$LN5953:
        je        .B11.459      ; Prob 50%                      ;457.15
$LN5954:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.455::                      ; Preds .B11.729 .B11.452 .B11.453 .B11.454
                                ; Execution count [2.11e-010]: Infreq
$LN5955:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;458.11
$LN5956:
        mov       r15, rsp                                      ;459.37
$LN5957:
        sub       rbx, QWORD PTR [18176+rbp]                    ;458.11
$LN5958:
        mov       edx, 256                                      ;459.37
$LN5959:
        imul      rbx, QWORD PTR [18168+rbp]                    ;458.11
$LN5960:
        mov       rax, QWORD PTR [18112+rbp]                    ;458.11
$LN5961:
        lea       rcx, QWORD PTR [4112+rbp]                     ;459.37
$LN5962:
        mov       r9, rdx                                       ;459.37
$LN5963:
        lea       r8, QWORD PTR [12032+rbp]                     ;459.37
$LN5964:
        lea       r11, QWORD PTR [__STRLITPACK_58]              ;459.37
$LN5965:
        lea       r10, QWORD PTR [17312+rbp]                    ;459.37
$LN5966:
        mov       DWORD PTR [rax+rbx], 11                       ;458.11
$LN5967:
        mov       QWORD PTR [32+r15], r10                       ;459.37
$LN5968:
        mov       QWORD PTR [40+r15], 256                       ;459.37
$LN5969:
        mov       QWORD PTR [48+r15], r11                       ;459.37
$LN5970:
        mov       QWORD PTR [56+r15], 0                         ;459.37
$LN5971:
;       BUILDFILENAME
        call      BUILDFILENAME                                 ;459.37
$LN5972:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.456::                      ; Preds .B11.455
                                ; Execution count [2.11e-010]: Infreq
$LN5973:
        mov       edx, 256                                      ;459.32
$LN5974:
        lea       rcx, QWORD PTR [4368+rbp]                     ;459.32
$LN5975:
        mov       r9, rdx                                       ;459.32
$LN5976:
        lea       r8, QWORD PTR [4112+rbp]                      ;459.32
$LN5977:
        call      for_trim                                      ;459.32
$LN5978:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.733::                      ; Preds .B11.456
                                ; Execution count [2.11e-010]: Infreq
$LN5979:
        mov       r9d, eax                                      ;459.32
$LN5980:
                                ; LOE rsi rdi r12 r13 r14 r9d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.457::                      ; Preds .B11.733
                                ; Execution count [2.11e-010]: Infreq
$LN5981:
        movsxd    rcx, DWORD PTR [17680+rbp]                    ;459.11
$LN5982:
        mov       rax, rsp                                      ;459.11
$LN5983:
        sub       rcx, QWORD PTR [18104+rbp]                    ;459.11
$LN5984:
        mov       edx, 256                                      ;459.11
$LN5985:
        imul      rcx, QWORD PTR [18096+rbp]                    ;459.11
$LN5986:
        add       rcx, QWORD PTR [18040+rbp]                    ;459.11
$LN5987:
        lea       r8, QWORD PTR [4368+rbp]                      ;459.11
$LN5988:
        movsxd    r9, r9d                                       ;459.11
$LN5989:
        mov       QWORD PTR [32+rax], 0                         ;459.11
$LN5990:
        call      for_cpystr                                    ;459.11
$LN5991:
        jmp       .B11.765      ; Prob 100%                     ;459.11
$LN5992:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.459::                      ; Preds .B11.454
                                ; Execution count [1.41e-011]: Infreq
$LN5993:
        mov       r10, rsp                                      ;461.15
$LN5994:
        mov       rdx, rbx                                      ;461.15
$LN5995:
        lea       r8, QWORD PTR [__STRLITPACK_57]               ;461.15
$LN5996:
        mov       r9d, 3                                        ;461.15
$LN5997:
        mov       QWORD PTR [32+r10], 2                         ;461.15
$LN5998:
        mov       rcx, QWORD PTR [10480+rbp]                    ;461.15[spill]
$LN5999:
        call      for_cpstr                                     ;461.15
$LN6000:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.734::                      ; Preds .B11.459
                                ; Execution count [1.41e-011]: Infreq
$LN6001:
        test      eax, eax                                      ;461.15
$LN6002:
        je        .B11.464      ; Prob 22%                      ;461.15
$LN6003:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.460::                      ; Preds .B11.734
                                ; Execution count [1.10e-011]: Infreq
$LN6004:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;462.11
$LN6005:
        mov       r15, rsp                                      ;463.37
$LN6006:
        sub       rbx, QWORD PTR [18176+rbp]                    ;462.11
$LN6007:
        mov       edx, 256                                      ;463.37
$LN6008:
        imul      rbx, QWORD PTR [18168+rbp]                    ;462.11
$LN6009:
        mov       rax, QWORD PTR [18112+rbp]                    ;462.11
$LN6010:
        lea       rcx, QWORD PTR [1888+rbp]                     ;463.37
$LN6011:
        mov       r9, rdx                                       ;463.37
$LN6012:
        lea       r8, QWORD PTR [12032+rbp]                     ;463.37
$LN6013:
        lea       r11, QWORD PTR [__STRLITPACK_56]              ;463.37
$LN6014:
        lea       r10, QWORD PTR [17312+rbp]                    ;463.37
$LN6015:
        mov       DWORD PTR [rax+rbx], 10                       ;462.11
$LN6016:
        mov       QWORD PTR [32+r15], r10                       ;463.37
$LN6017:
        mov       QWORD PTR [40+r15], 256                       ;463.37
$LN6018:
        mov       QWORD PTR [48+r15], r11                       ;463.37
$LN6019:
        mov       QWORD PTR [56+r15], 0                         ;463.37
$LN6020:
;       BUILDFILENAME
        call      BUILDFILENAME                                 ;463.37
$LN6021:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.461::                      ; Preds .B11.460
                                ; Execution count [1.10e-011]: Infreq
$LN6022:
        mov       edx, 256                                      ;463.32
$LN6023:
        lea       rcx, QWORD PTR [2144+rbp]                     ;463.32
$LN6024:
        mov       r9, rdx                                       ;463.32
$LN6025:
        lea       r8, QWORD PTR [1888+rbp]                      ;463.32
$LN6026:
        call      for_trim                                      ;463.32
$LN6027:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.735::                      ; Preds .B11.461
                                ; Execution count [1.10e-011]: Infreq
$LN6028:
        mov       r9d, eax                                      ;463.32
$LN6029:
                                ; LOE rsi rdi r12 r13 r14 r9d xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.462::                      ; Preds .B11.735
                                ; Execution count [1.10e-011]: Infreq
$LN6030:
        movsxd    rcx, DWORD PTR [17680+rbp]                    ;463.11
$LN6031:
        mov       rax, rsp                                      ;463.11
$LN6032:
        sub       rcx, QWORD PTR [18104+rbp]                    ;463.11
$LN6033:
        mov       edx, 256                                      ;463.11
$LN6034:
        imul      rcx, QWORD PTR [18096+rbp]                    ;463.11
$LN6035:
        add       rcx, QWORD PTR [18040+rbp]                    ;463.11
$LN6036:
        lea       r8, QWORD PTR [2144+rbp]                      ;463.11
$LN6037:
        movsxd    r9, r9d                                       ;463.11
$LN6038:
        mov       QWORD PTR [32+rax], 0                         ;463.11
$LN6039:
        call      for_cpystr                                    ;463.11
$LN6040:
        jmp       .B11.765      ; Prob 100%                     ;463.11
$LN6041:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.464::                      ; Preds .B11.734
                                ; Execution count [3.10e-012]: Infreq
$LN6042:
        mov       r10, rsp                                      ;465.15
$LN6043:
        mov       rdx, rbx                                      ;465.15
$LN6044:
        lea       r8, QWORD PTR [__STRLITPACK_55]               ;465.15
$LN6045:
        mov       r9d, 4                                        ;465.15
$LN6046:
        mov       QWORD PTR [32+r10], 2                         ;465.15
$LN6047:
        mov       rcx, QWORD PTR [10480+rbp]                    ;465.15[spill]
$LN6048:
        call      for_cpstr                                     ;465.15
$LN6049:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.737::                      ; Preds .B11.464
                                ; Execution count [3.10e-012]: Infreq
$LN6050:
        mov       r10, rsp                                      ;465.22
$LN6051:
        mov       rdx, rbx                                      ;465.22
$LN6052:
        mov       QWORD PTR [4016+rbp], rax                     ;465.15[spill]
$LN6053:
        lea       r8, QWORD PTR [__STRLITPACK_54]               ;465.22
$LN6054:
        mov       r9d, 9                                        ;465.22
$LN6055:
        mov       QWORD PTR [32+r10], 2                         ;465.22
$LN6056:
        mov       rcx, QWORD PTR [10480+rbp]                    ;465.22[spill]
$LN6057:
        call      for_cpstr                                     ;465.22
$LN6058:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.736::                      ; Preds .B11.737
                                ; Execution count [3.10e-012]: Infreq
$LN6059:
        mov       r9, QWORD PTR [4016+rbp]                      ;465.15[spill]
$LN6060:
        test      r9d, r9d                                      ;465.15
$LN6061:
        jne       .B11.514      ; Prob 50%                      ;465.15
$LN6062:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.465::                      ; Preds .B11.736
                                ; Execution count [1.55e-012]: Infreq
$LN6063:
        test      eax, eax                                      ;465.15
$LN6064:
        jne       .B11.514      ; Prob 22%                      ;465.15
$LN6065:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.466::                      ; Preds .B11.465
                                ; Execution count [1.21e-012]: Infreq
$LN6066:
        mov       r10, rsp                                      ;469.15
$LN6067:
        mov       rdx, rbx                                      ;469.15
$LN6068:
        lea       r8, QWORD PTR [__STRLITPACK_53]               ;469.15
$LN6069:
        mov       r9d, 5                                        ;469.15
$LN6070:
        mov       QWORD PTR [32+r10], 2                         ;469.15
$LN6071:
        mov       rcx, QWORD PTR [10480+rbp]                    ;469.15[spill]
$LN6072:
        call      for_cpstr                                     ;469.15
$LN6073:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.738::                      ; Preds .B11.466
                                ; Execution count [1.21e-012]: Infreq
$LN6074:
        test      eax, eax                                      ;469.15
$LN6075:
        je        .B11.480      ; Prob 50%                      ;469.15
$LN6076:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.467::                      ; Preds .B11.738
                                ; Execution count [6.04e-013]: Infreq
$LN6077:
        movsxd    rdx, DWORD PTR [17680+rbp]                    ;470.11
$LN6078:
        sub       rdx, QWORD PTR [18176+rbp]                    ;470.11
$LN6079:
        imul      rdx, QWORD PTR [18168+rbp]                    ;470.11
$LN6080:
        mov       rax, QWORD PTR [18112+rbp]                    ;470.11
$LN6081:
        cmp       DWORD PTR [16280+rbp], 2                      ;472.21
$LN6082:
        mov       DWORD PTR [rax+rdx], 1                        ;470.11
$LN6083:
        jl        .B11.551      ; Prob 0%                       ;472.21
$LN6084:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.468::                      ; Preds .B11.467
                                ; Execution count [6.01e-013]: Infreq
$LN6085:
        xor       ebx, ebx                                      ;480.11
$LN6086:
        cmp       BYTE PTR [12032+rbp], 34                      ;480.11
$LN6087:
        lea       rcx, QWORD PTR [12032+rbp]                    ;481.28
$LN6088:
        sete      bl                                            ;480.11
$LN6089:
        mov       edx, 256                                      ;480.11
$LN6090:
        inc       rbx                                           ;480.11
$LN6091:
        call      for_len_trim                                  ;481.28
$LN6092:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.740::                      ; Preds .B11.468
                                ; Execution count [6.01e-013]: Infreq
$LN6093:
        xor       r10d, r10d                                    ;481.17
$LN6094:
        mov       r11d, 1                                       ;481.11
$LN6095:
        movsxd    rax, eax                                      ;481.17
$LN6096:
        lea       rcx, QWORD PTR [20512+rbp]                    ;481.11
$LN6097:
        sub       rax, rbx                                      ;481.17
$LN6098:
        mov       rdx, 012083a4ff03H                            ;481.11
$LN6099:
        inc       rax                                           ;481.17
$LN6100:
        lea       r8, QWORD PTR [__STRLITPACK_168.0.1]          ;481.11
$LN6101:
        lea       r15, QWORD PTR [MET_FI_mp_FIXED_SPD]          ;481.11
$LN6102:
        lea       r9, QWORD PTR [1856+rbp]                      ;481.11
$LN6103:
        cmovle    rax, r10                                      ;481.17
$LN6104:
        lea       rbx, QWORD PTR [12031+rbp+rbx]                ;481.11
$LN6105:
        cmp       rax, 1                                        ;481.11
$LN6106:
        mov       QWORD PTR [rcx], r10                          ;481.11
$LN6107:
        cmovg     r11, rax                                      ;481.11
$LN6108:
        mov       QWORD PTR [r9], r11                           ;481.11
$LN6109:
        mov       QWORD PTR [8+r9], rbx                         ;481.11
$LN6110:
        mov       QWORD PTR [16+r9], rax                        ;481.11
$LN6111:
        mov       QWORD PTR [24+r9], r15                        ;481.11
$LN6112:
        call      for_read_int_lis                              ;481.11
$LN6113:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.469::                      ; Preds .B11.740
                                ; Execution count [6.01e-013]: Infreq
$LN6114:
        test      eax, eax                                      ;482.19
$LN6115:
        jne       .B11.549      ; Prob 20%                      ;482.19
$LN6116:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.470::                      ; Preds .B11.469
                                ; Execution count [4.81e-013]: Infreq
$LN6117:
        mov       edx, 256                                      ;489.15
$LN6118:
        lea       rcx, QWORD PTR [12288+rbp]                    ;489.15
$LN6119:
        call      for_len_trim                                  ;489.15
$LN6120:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.742::                      ; Preds .B11.470
                                ; Execution count [4.81e-013]: Infreq
$LN6121:
        xor       r10d, r10d                                    ;490.17
$LN6122:
        lea       ebx, DWORD PTR [-1+rax]                       ;489.60
$LN6123:
        movsxd    rax, eax                                      ;489.39
$LN6124:
        mov       r11d, 1                                       ;490.11
$LN6125:
        lea       rdx, QWORD PTR [MET_FI_mp_FIXED_DIR]          ;490.11
$LN6126:
        lea       rcx, QWORD PTR [20512+rbp]                    ;490.11
$LN6127:
        mov       QWORD PTR [1848+rbp], rdx                     ;490.11
$LN6128:
        mov       rdx, 012083a4ff03H                            ;490.11
$LN6129:
        lea       r8, QWORD PTR [__STRLITPACK_169.0.1]          ;490.11
$LN6130:
        lea       r9, QWORD PTR [1824+rbp]                      ;490.11
$LN6131:
        cmp       BYTE PTR [12287+rbp+rax], 34                  ;490.17
$LN6132:
        lea       r15, QWORD PTR [12288+rbp]                    ;490.11
$LN6133:
        mov       QWORD PTR [rcx], r10                          ;490.11
$LN6134:
        cmove     eax, ebx                                      ;490.17
$LN6135:
        movsxd    rax, eax                                      ;490.17
$LN6136:
        test      rax, rax                                      ;490.17
$LN6137:
        mov       QWORD PTR [8+r9], r15                         ;490.11
$LN6138:
        cmovle    rax, r10                                      ;490.17
$LN6139:
        cmp       rax, 1                                        ;490.11
$LN6140:
        mov       QWORD PTR [16+r9], rax                        ;490.11
$LN6141:
        cmovg     r11, rax                                      ;490.11
$LN6142:
        mov       QWORD PTR [r9], r11                           ;490.11
$LN6143:
        call      for_read_int_lis                              ;490.11
$LN6144:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.471::                      ; Preds .B11.742
                                ; Execution count [4.81e-013]: Infreq
$LN6145:
        test      eax, eax                                      ;491.19
$LN6146:
        jne       .B11.547      ; Prob 20%                      ;491.19
$LN6147:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.472::                      ; Preds .B11.471
                                ; Execution count [3.85e-013]: Infreq
$LN6148:
        cmp       DWORD PTR [16280+rbp], 3                      ;498.21
$LN6149:
        jle       .B11.475      ; Prob 50%                      ;498.21
$LN6150:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.473::                      ; Preds .B11.472
                                ; Execution count [1.92e-013]: Infreq
$LN6151:
        mov       edx, 256                                      ;499.17
$LN6152:
        lea       rcx, QWORD PTR [12544+rbp]                    ;499.17
$LN6153:
        call      for_len_trim                                  ;499.17
$LN6154:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.744::                      ; Preds .B11.473
                                ; Execution count [1.92e-013]: Infreq
$LN6155:
        xor       r10d, r10d                                    ;500.19
$LN6156:
        lea       ebx, DWORD PTR [-1+rax]                       ;499.62
$LN6157:
        movsxd    rax, eax                                      ;499.41
$LN6158:
        mov       r11d, 1                                       ;500.13
$LN6159:
        lea       rdx, QWORD PTR [MET_FI_mp_UNIT_SPD]           ;500.13
$LN6160:
        lea       rcx, QWORD PTR [20512+rbp]                    ;500.13
$LN6161:
        mov       QWORD PTR [1480+rbp], rdx                     ;500.13
$LN6162:
        mov       rdx, 012083a4ff03H                            ;500.13
$LN6163:
        lea       r8, QWORD PTR [__STRLITPACK_170.0.1]          ;500.13
$LN6164:
        lea       r9, QWORD PTR [1456+rbp]                      ;500.13
$LN6165:
        cmp       BYTE PTR [12543+rbp+rax], 34                  ;500.19
$LN6166:
        lea       r15, QWORD PTR [12544+rbp]                    ;500.13
$LN6167:
        mov       QWORD PTR [rcx], r10                          ;500.13
$LN6168:
        cmove     eax, ebx                                      ;500.19
$LN6169:
        movsxd    rax, eax                                      ;500.19
$LN6170:
        test      rax, rax                                      ;500.19
$LN6171:
        mov       QWORD PTR [8+r9], r15                         ;500.13
$LN6172:
        cmovle    rax, r10                                      ;500.19
$LN6173:
        cmp       rax, 1                                        ;500.13
$LN6174:
        mov       QWORD PTR [16+r9], rax                        ;500.13
$LN6175:
        cmovg     r11, rax                                      ;500.13
$LN6176:
        mov       QWORD PTR [r9], r11                           ;500.13
$LN6177:
        call      for_read_int_lis                              ;500.13
$LN6178:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.474::                      ; Preds .B11.744
                                ; Execution count [1.92e-013]: Infreq
$LN6179:
        test      eax, eax                                      ;501.21
$LN6180:
        jne       .B11.545      ; Prob 20%                      ;501.21
$LN6181:
        jmp       .B11.476      ; Prob 100%                     ;501.21
$LN6182:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.475::                      ; Preds .B11.472
                                ; Execution count [1.92e-013]: Infreq
$LN6183:
        mov       DWORD PTR [MET_FI_mp_UNIT_SPD], 1             ;508.13
$LN6184:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.476::                      ; Preds .B11.474 .B11.475
                                ; Execution count [3.46e-013]: Infreq
$LN6185:
        lea       rcx, QWORD PTR [17576+rbp]                    ;511.16
$LN6186:
        lea       rdx, QWORD PTR [17580+rbp]                    ;511.16
$LN6187:
;       SETFIXEDWIND
        call      SETFIXEDWIND                                  ;511.16
$LN6188:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.477::                      ; Preds .B11.476
                                ; Execution count [3.46e-013]: Infreq
$LN6189:
        mov       rax, QWORD PTR [18096+rbp]                    ;512.11
$LN6190:
        lea       rcx, QWORD PTR [20512+rbp]                    ;512.11
$LN6191:
        mov       rbx, QWORD PTR [18104+rbp]                    ;512.11
$LN6192:
        mov       rdx, 01208384ff00H                            ;512.11
$LN6193:
        imul      rbx, rax                                      ;512.18
$LN6194:
        mov       r10, QWORD PTR [18040+rbp]                    ;512.11
$LN6195:
        lea       r8, QWORD PTR [__STRLITPACK_171.0.1]          ;512.11
$LN6196:
        add       r10, rax                                      ;512.18
$LN6197:
        lea       r9, QWORD PTR [1792+rbp]                      ;512.11
$LN6198:
        mov       r15d, DWORD PTR [17576+rbp]                   ;512.11
$LN6199:
        mov       r11d, 256                                     ;512.11
$LN6200:
        sub       r10, rbx                                      ;512.11
$LN6201:
        mov       QWORD PTR [rcx], 0                            ;512.11
$LN6202:
        mov       QWORD PTR [r9], r11                           ;512.11
$LN6203:
        mov       QWORD PTR [8+r9], r10                         ;512.11
$LN6204:
        mov       QWORD PTR [16+r9], r11                        ;512.11
$LN6205:
        mov       DWORD PTR [24+r9], r15d                       ;512.11
$LN6206:
        call      for_write_int_lis                             ;512.11
$LN6207:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.478::                      ; Preds .B11.477
                                ; Execution count [3.46e-013]: Infreq
$LN6208:
        mov       eax, DWORD PTR [17580+rbp]                    ;512.11
$LN6209:
        lea       rcx, QWORD PTR [20512+rbp]                    ;512.11
$LN6210:
        lea       rdx, QWORD PTR [__STRLITPACK_172.0.1]         ;512.11
$LN6211:
        lea       r8, QWORD PTR [600+rbp]                       ;512.11
$LN6212:
        mov       DWORD PTR [r8], eax                           ;512.11
$LN6213:
        call      for_write_int_lis_xmit                        ;512.11
$LN6214:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.479::                      ; Preds .B11.478
                                ; Execution count [3.46e-013]: Infreq
$LN6215:
        mov       BYTE PTR [10424+rbp], 255                     ;514.11[spill]
$LN6216:
        mov       edx, DWORD PTR [17680+rbp]                    ;592.5
$LN6217:
        jmp       .B11.518      ; Prob 100%                     ;592.5
$LN6218:
                                ; LOE rsi rdi r12 r13 r14 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.480::                      ; Preds .B11.738
                                ; Execution count [6.04e-013]: Infreq
$LN6219:
        mov       r10, rsp                                      ;516.15
$LN6220:
        mov       rdx, rbx                                      ;516.15
$LN6221:
        lea       r8, QWORD PTR [__STRLITPACK_43]               ;516.15
$LN6222:
        mov       r9d, 5                                        ;516.15
$LN6223:
        mov       QWORD PTR [32+r10], 2                         ;516.15
$LN6224:
        mov       rcx, QWORD PTR [10480+rbp]                    ;516.15[spill]
$LN6225:
        call      for_cpstr                                     ;516.15
$LN6226:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.745::                      ; Preds .B11.480
                                ; Execution count [6.04e-013]: Infreq
$LN6227:
        test      eax, eax                                      ;516.15
$LN6228:
        je        .B11.486      ; Prob 50%                      ;516.15
$LN6229:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.481::                      ; Preds .B11.745
                                ; Execution count [3.02e-013]: Infreq
$LN6230:
        mov       rax, QWORD PTR [18168+rbp]                    ;518.13
$LN6231:
        cmp       DWORD PTR [16280+rbp], 1                      ;517.21
$LN6232:
        jle       .B11.556      ; Prob 16%                      ;517.21
$LN6233:
                                ; LOE rax rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.482::                      ; Preds .B11.481
                                ; Execution count [2.54e-013]: Infreq
$LN6234:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;518.13
$LN6235:
        mov       edx, 256                                      ;519.56
$LN6236:
        sub       rbx, QWORD PTR [18176+rbp]                    ;518.13
$LN6237:
        lea       r8, QWORD PTR [12032+rbp]                     ;519.56
$LN6238:
        imul      rbx, rax                                      ;518.13
$LN6239:
        mov       rax, QWORD PTR [18112+rbp]                    ;518.13
$LN6240:
        mov       r9, rdx                                       ;519.56
$LN6241:
        mov       DWORD PTR [rax+rbx], 16                       ;518.13
$LN6242:
        lea       rbx, QWORD PTR [1120+rbp]                     ;519.56
$LN6243:
        mov       rcx, rbx                                      ;519.56
$LN6244:
        call      for_trim                                      ;519.56
$LN6245:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.746::                      ; Preds .B11.482
                                ; Execution count [2.54e-013]: Infreq
$LN6246:
        mov       edx, eax                                      ;519.56
$LN6247:
                                ; LOE rbx rsi rdi r12 r13 r14 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.483::                      ; Preds .B11.746
                                ; Execution count [2.54e-013]: Infreq
$LN6248:
        movsxd    rax, DWORD PTR [17680+rbp]                    ;519.13
$LN6249:
        mov       r11, rsp                                      ;519.13
$LN6250:
        sub       rax, QWORD PTR [18104+rbp]                    ;519.19
$LN6251:
        lea       rcx, QWORD PTR [20512+rbp]                    ;519.13
$LN6252:
        imul      rax, QWORD PTR [18096+rbp]                    ;519.19
$LN6253:
        add       rax, QWORD PTR [18040+rbp]                    ;519.19
$LN6254:
        lea       r8, QWORD PTR [__STRLITPACK_173.0.1]          ;519.13
$LN6255:
        mov       QWORD PTR [1496+rbp], rax                     ;519.13
$LN6256:
        lea       r9, QWORD PTR [1488+rbp]                      ;519.13
$LN6257:
        movsxd    rax, edx                                      ;519.56
$LN6258:
        mov       rdx, 012083a4ff03H                            ;519.13
$LN6259:
        mov       QWORD PTR [32+r9], rbx                        ;519.13
$LN6260:
        mov       r10d, 256                                     ;519.13
$LN6261:
        lea       rbx, QWORD PTR [INIT_MET$format_pack.0.1+24]  ;519.13
$LN6262:
        mov       QWORD PTR [rcx], 0                            ;519.13
$LN6263:
        mov       QWORD PTR [r9], r10                           ;519.13
$LN6264:
        mov       QWORD PTR [16+r9], r10                        ;519.13
$LN6265:
        mov       QWORD PTR [24+r9], rax                        ;519.13
$LN6266:
        mov       QWORD PTR [32+r11], rbx                       ;519.13
$LN6267:
        call      for_write_int_fmt                             ;519.13
$LN6268:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.484::                      ; Preds .B11.483
                                ; Execution count [2.54e-013]: Infreq
$LN6269:
        test      eax, eax                                      ;520.21
$LN6270:
        jne       .B11.554      ; Prob 20%                      ;520.21
$LN6271:
        jmp       .B11.765      ; Prob 100%                     ;520.21
$LN6272:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.486::                      ; Preds .B11.745
                                ; Execution count [3.02e-013]: Infreq
$LN6273:
        mov       r10, rsp                                      ;530.15
$LN6274:
        mov       rdx, rbx                                      ;530.15
$LN6275:
        lea       r8, QWORD PTR [__STRLITPACK_38]               ;530.15
$LN6276:
        mov       r9d, 4                                        ;530.15
$LN6277:
        mov       QWORD PTR [32+r10], 2                         ;530.15
$LN6278:
        mov       rcx, QWORD PTR [10480+rbp]                    ;530.15[spill]
$LN6279:
        call      for_cpstr                                     ;530.15
$LN6280:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.748::                      ; Preds .B11.486
                                ; Execution count [3.02e-013]: Infreq
$LN6281:
        test      eax, eax                                      ;530.15
$LN6282:
        je        .B11.492      ; Prob 22%                      ;530.15
$LN6283:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.487::                      ; Preds .B11.748
                                ; Execution count [2.35e-013]: Infreq
$LN6284:
        mov       rax, QWORD PTR [18168+rbp]                    ;532.13
$LN6285:
        cmp       DWORD PTR [16280+rbp], 1                      ;531.21
$LN6286:
        jle       .B11.556      ; Prob 16%                      ;531.21
$LN6287:
                                ; LOE rax rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.488::                      ; Preds .B11.487
                                ; Execution count [1.98e-013]: Infreq
$LN6288:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;532.13
$LN6289:
        mov       edx, 256                                      ;533.57
$LN6290:
        sub       rbx, QWORD PTR [18176+rbp]                    ;532.13
$LN6291:
        lea       r8, QWORD PTR [12032+rbp]                     ;533.57
$LN6292:
        imul      rbx, rax                                      ;532.13
$LN6293:
        mov       rax, QWORD PTR [18112+rbp]                    ;532.13
$LN6294:
        mov       r9, rdx                                       ;533.57
$LN6295:
        mov       DWORD PTR [rax+rbx], 17                       ;532.13
$LN6296:
        lea       rbx, QWORD PTR [864+rbp]                      ;533.57
$LN6297:
        mov       rcx, rbx                                      ;533.57
$LN6298:
        call      for_trim                                      ;533.57
$LN6299:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.749::                      ; Preds .B11.488
                                ; Execution count [1.98e-013]: Infreq
$LN6300:
        mov       edx, eax                                      ;533.57
$LN6301:
                                ; LOE rbx rsi rdi r12 r13 r14 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.489::                      ; Preds .B11.749
                                ; Execution count [1.98e-013]: Infreq
$LN6302:
        movsxd    rax, DWORD PTR [17680+rbp]                    ;533.13
$LN6303:
        mov       r11, rsp                                      ;533.13
$LN6304:
        sub       rax, QWORD PTR [18104+rbp]                    ;533.19
$LN6305:
        lea       rcx, QWORD PTR [20512+rbp]                    ;533.13
$LN6306:
        imul      rax, QWORD PTR [18096+rbp]                    ;533.19
$LN6307:
        add       rax, QWORD PTR [18040+rbp]                    ;533.19
$LN6308:
        lea       r8, QWORD PTR [__STRLITPACK_174.0.1]          ;533.13
$LN6309:
        mov       QWORD PTR [1424+rbp], rax                     ;533.13
$LN6310:
        lea       r9, QWORD PTR [1416+rbp]                      ;533.13
$LN6311:
        movsxd    rax, edx                                      ;533.57
$LN6312:
        mov       rdx, 012083a4ff03H                            ;533.13
$LN6313:
        mov       QWORD PTR [32+r9], rbx                        ;533.13
$LN6314:
        mov       r10d, 256                                     ;533.13
$LN6315:
        lea       rbx, QWORD PTR [INIT_MET$format_pack.0.1+36]  ;533.13
$LN6316:
        mov       QWORD PTR [rcx], 0                            ;533.13
$LN6317:
        mov       QWORD PTR [r9], r10                           ;533.13
$LN6318:
        mov       QWORD PTR [16+r9], r10                        ;533.13
$LN6319:
        mov       QWORD PTR [24+r9], rax                        ;533.13
$LN6320:
        mov       QWORD PTR [32+r11], rbx                       ;533.13
$LN6321:
        call      for_write_int_fmt                             ;533.13
$LN6322:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.490::                      ; Preds .B11.489
                                ; Execution count [1.98e-013]: Infreq
$LN6323:
        test      eax, eax                                      ;534.21
$LN6324:
        jne       .B11.557      ; Prob 20%                      ;534.21
$LN6325:
        jmp       .B11.765      ; Prob 100%                     ;534.21
$LN6326:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.492::                      ; Preds .B11.748
                                ; Execution count [6.64e-014]: Infreq
$LN6327:
        mov       r10, rsp                                      ;544.15
$LN6328:
        mov       rdx, rbx                                      ;544.15
$LN6329:
        lea       r8, QWORD PTR [__STRLITPACK_33]               ;544.15
$LN6330:
        mov       r9d, 6                                        ;544.15
$LN6331:
        mov       QWORD PTR [32+r10], 2                         ;544.15
$LN6332:
        mov       rcx, QWORD PTR [10480+rbp]                    ;544.15[spill]
$LN6333:
        call      for_cpstr                                     ;544.15
$LN6334:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.752::                      ; Preds .B11.492
                                ; Execution count [6.64e-014]: Infreq
$LN6335:
        mov       r10, rsp                                      ;544.24
$LN6336:
        mov       rdx, rbx                                      ;544.24
$LN6337:
        lea       r8, QWORD PTR [__STRLITPACK_32]               ;544.24
$LN6338:
        mov       r9d, 9                                        ;544.24
$LN6339:
        mov       r15, rax                                      ;544.15
$LN6340:
        mov       QWORD PTR [32+r10], 2                         ;544.24
$LN6341:
        mov       rcx, QWORD PTR [10480+rbp]                    ;544.24[spill]
$LN6342:
        call      for_cpstr                                     ;544.24
$LN6343:
                                ; LOE rax rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.751::                      ; Preds .B11.752
                                ; Execution count [6.64e-014]: Infreq
$LN6344:
        test      r15d, r15d                                    ;544.15
$LN6345:
        jne       .B11.494      ; Prob 50%                      ;544.15
$LN6346:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.493::                      ; Preds .B11.751
                                ; Execution count [3.32e-014]: Infreq
$LN6347:
        test      eax, eax                                      ;544.15
$LN6348:
        je        .B11.499      ; Prob 22%                      ;544.15
$LN6349:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.494::                      ; Preds .B11.751 .B11.493
                                ; Execution count [5.91e-014]: Infreq
$LN6350:
        mov       rax, QWORD PTR [18168+rbp]                    ;546.13
$LN6351:
        cmp       DWORD PTR [16280+rbp], 1                      ;545.21
$LN6352:
        jle       .B11.556      ; Prob 16%                      ;545.21
$LN6353:
                                ; LOE rax rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.495::                      ; Preds .B11.494
                                ; Execution count [4.97e-014]: Infreq
$LN6354:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;546.13
$LN6355:
        mov       edx, 256                                      ;547.57
$LN6356:
        sub       rbx, QWORD PTR [18176+rbp]                    ;546.13
$LN6357:
        lea       r8, QWORD PTR [12032+rbp]                     ;547.57
$LN6358:
        imul      rbx, rax                                      ;546.13
$LN6359:
        mov       rax, QWORD PTR [18112+rbp]                    ;546.13
$LN6360:
        mov       r9, rdx                                       ;547.57
$LN6361:
        mov       DWORD PTR [rax+rbx], 18                       ;546.13
$LN6362:
        lea       rbx, QWORD PTR [608+rbp]                      ;547.57
$LN6363:
        mov       rcx, rbx                                      ;547.57
$LN6364:
        call      for_trim                                      ;547.57
$LN6365:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.753::                      ; Preds .B11.495
                                ; Execution count [4.97e-014]: Infreq
$LN6366:
        mov       edx, eax                                      ;547.57
$LN6367:
                                ; LOE rbx rsi rdi r12 r13 r14 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.496::                      ; Preds .B11.753
                                ; Execution count [4.97e-014]: Infreq
$LN6368:
        movsxd    rax, DWORD PTR [17680+rbp]                    ;547.13
$LN6369:
        mov       r11, rsp                                      ;547.13
$LN6370:
        sub       rax, QWORD PTR [18104+rbp]                    ;547.19
$LN6371:
        lea       rcx, QWORD PTR [20512+rbp]                    ;547.13
$LN6372:
        imul      rax, QWORD PTR [18096+rbp]                    ;547.19
$LN6373:
        add       rax, QWORD PTR [18040+rbp]                    ;547.19
$LN6374:
        lea       r8, QWORD PTR [__STRLITPACK_175.0.1]          ;547.13
$LN6375:
        mov       QWORD PTR [1384+rbp], rax                     ;547.13
$LN6376:
        lea       r9, QWORD PTR [1376+rbp]                      ;547.13
$LN6377:
        movsxd    rax, edx                                      ;547.57
$LN6378:
        mov       rdx, 012083a4ff03H                            ;547.13
$LN6379:
        mov       QWORD PTR [32+r9], rbx                        ;547.13
$LN6380:
        mov       r10d, 256                                     ;547.13
$LN6381:
        lea       rbx, QWORD PTR [INIT_MET$format_pack.0.1+48]  ;547.13
$LN6382:
        mov       QWORD PTR [rcx], 0                            ;547.13
$LN6383:
        mov       QWORD PTR [r9], r10                           ;547.13
$LN6384:
        mov       QWORD PTR [16+r9], r10                        ;547.13
$LN6385:
        mov       QWORD PTR [24+r9], rax                        ;547.13
$LN6386:
        mov       QWORD PTR [32+r11], rbx                       ;547.13
$LN6387:
        call      for_write_int_fmt                             ;547.13
$LN6388:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.497::                      ; Preds .B11.496
                                ; Execution count [4.97e-014]: Infreq
$LN6389:
        test      eax, eax                                      ;548.21
$LN6390:
        jne       .B11.560      ; Prob 20%                      ;548.21
$LN6391:
        jmp       .B11.765      ; Prob 100%                     ;548.21
$LN6392:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.499::                      ; Preds .B11.493
                                ; Execution count [7.31e-015]: Infreq
$LN6393:
        mov       r10, rsp                                      ;558.15
$LN6394:
        mov       rdx, rbx                                      ;558.15
$LN6395:
        lea       r8, QWORD PTR [__STRLITPACK_27]               ;558.15
$LN6396:
        mov       r9d, 11                                       ;558.15
$LN6397:
        mov       QWORD PTR [32+r10], 2                         ;558.15
$LN6398:
        mov       rcx, QWORD PTR [10480+rbp]                    ;558.15[spill]
$LN6399:
        call      for_cpstr                                     ;558.15
$LN6400:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.756::                      ; Preds .B11.499
                                ; Execution count [7.31e-015]: Infreq
$LN6401:
        mov       r10, rsp                                      ;558.29
$LN6402:
        mov       rdx, rbx                                      ;558.29
$LN6403:
        lea       r8, QWORD PTR [__STRLITPACK_26]               ;558.29
$LN6404:
        mov       r9d, 13                                       ;558.29
$LN6405:
        mov       r15, rax                                      ;558.15
$LN6406:
        mov       QWORD PTR [32+r10], 2                         ;558.29
$LN6407:
        mov       rcx, QWORD PTR [10480+rbp]                    ;558.29[spill]
$LN6408:
        call      for_cpstr                                     ;558.29
$LN6409:
                                ; LOE rax rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.755::                      ; Preds .B11.756
                                ; Execution count [7.31e-015]: Infreq
$LN6410:
        test      r15d, r15d                                    ;558.15
$LN6411:
        jne       .B11.501      ; Prob 50%                      ;558.15
$LN6412:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.500::                      ; Preds .B11.755
                                ; Execution count [3.65e-015]: Infreq
$LN6413:
        test      eax, eax                                      ;558.15
$LN6414:
        je        .B11.506      ; Prob 22%                      ;558.15
$LN6415:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.501::                      ; Preds .B11.755 .B11.500
                                ; Execution count [6.50e-015]: Infreq
$LN6416:
        mov       rax, QWORD PTR [18168+rbp]                    ;560.13
$LN6417:
        cmp       DWORD PTR [16280+rbp], 1                      ;559.21
$LN6418:
        jle       .B11.556      ; Prob 16%                      ;559.21
$LN6419:
                                ; LOE rax rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.502::                      ; Preds .B11.501
                                ; Execution count [5.46e-015]: Infreq
$LN6420:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;560.13
$LN6421:
        mov       edx, 256                                      ;561.57
$LN6422:
        sub       rbx, QWORD PTR [18176+rbp]                    ;560.13
$LN6423:
        lea       r8, QWORD PTR [12032+rbp]                     ;561.57
$LN6424:
        imul      rbx, rax                                      ;560.13
$LN6425:
        mov       rax, QWORD PTR [18112+rbp]                    ;560.13
$LN6426:
        mov       r9, rdx                                       ;561.57
$LN6427:
        mov       DWORD PTR [rax+rbx], 19                       ;560.13
$LN6428:
        lea       rbx, QWORD PTR [304+rbp]                      ;561.57
$LN6429:
        mov       rcx, rbx                                      ;561.57
$LN6430:
        call      for_trim                                      ;561.57
$LN6431:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.757::                      ; Preds .B11.502
                                ; Execution count [5.46e-015]: Infreq
$LN6432:
        mov       edx, eax                                      ;561.57
$LN6433:
                                ; LOE rbx rsi rdi r12 r13 r14 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.503::                      ; Preds .B11.757
                                ; Execution count [5.46e-015]: Infreq
$LN6434:
        movsxd    rax, DWORD PTR [17680+rbp]                    ;561.13
$LN6435:
        mov       r11, rsp                                      ;561.13
$LN6436:
        sub       rax, QWORD PTR [18104+rbp]                    ;561.19
$LN6437:
        lea       rcx, QWORD PTR [20512+rbp]                    ;561.13
$LN6438:
        imul      rax, QWORD PTR [18096+rbp]                    ;561.19
$LN6439:
        add       rax, QWORD PTR [18040+rbp]                    ;561.19
$LN6440:
        lea       r8, QWORD PTR [__STRLITPACK_176.0.1]          ;561.13
$LN6441:
        mov       QWORD PTR [568+rbp], rax                      ;561.13
$LN6442:
        lea       r9, QWORD PTR [560+rbp]                       ;561.13
$LN6443:
        movsxd    rax, edx                                      ;561.57
$LN6444:
        mov       rdx, 012083a4ff03H                            ;561.13
$LN6445:
        mov       QWORD PTR [32+r9], rbx                        ;561.13
$LN6446:
        mov       r10d, 256                                     ;561.13
$LN6447:
        lea       rbx, QWORD PTR [INIT_MET$format_pack.0.1+60]  ;561.13
$LN6448:
        mov       QWORD PTR [rcx], 0                            ;561.13
$LN6449:
        mov       QWORD PTR [r9], r10                           ;561.13
$LN6450:
        mov       QWORD PTR [16+r9], r10                        ;561.13
$LN6451:
        mov       QWORD PTR [24+r9], rax                        ;561.13
$LN6452:
        mov       QWORD PTR [32+r11], rbx                       ;561.13
$LN6453:
        call      for_write_int_fmt                             ;561.13
$LN6454:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.504::                      ; Preds .B11.503
                                ; Execution count [5.46e-015]: Infreq
$LN6455:
        test      eax, eax                                      ;562.21
$LN6456:
        jne       .B11.563      ; Prob 20%                      ;562.21
$LN6457:
        jmp       .B11.765      ; Prob 100%                     ;562.21
$LN6458:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.506::                      ; Preds .B11.500
                                ; Execution count [8.04e-016]: Infreq
$LN6459:
        mov       r10, rsp                                      ;572.15
$LN6460:
        mov       rdx, rbx                                      ;572.15
$LN6461:
        lea       r8, QWORD PTR [__STRLITPACK_21]               ;572.15
$LN6462:
        mov       r9d, 10                                       ;572.15
$LN6463:
        mov       QWORD PTR [32+r10], 2                         ;572.15
$LN6464:
        mov       rcx, QWORD PTR [10480+rbp]                    ;572.15[spill]
$LN6465:
        call      for_cpstr                                     ;572.15
$LN6466:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.760::                      ; Preds .B11.506
                                ; Execution count [8.04e-016]: Infreq
$LN6467:
        mov       r10, rsp                                      ;572.28
$LN6468:
        mov       rdx, rbx                                      ;572.28
$LN6469:
        mov       QWORD PTR [296+rbp], rax                      ;572.15[spill]
$LN6470:
        lea       r8, QWORD PTR [__STRLITPACK_20]               ;572.28
$LN6471:
        mov       r9d, 11                                       ;572.28
$LN6472:
        mov       QWORD PTR [32+r10], 2                         ;572.28
$LN6473:
        mov       rcx, QWORD PTR [10480+rbp]                    ;572.28[spill]
$LN6474:
        call      for_cpstr                                     ;572.28
$LN6475:
                                ; LOE rax rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.759::                      ; Preds .B11.760
                                ; Execution count [8.04e-016]: Infreq
$LN6476:
        mov       rdx, QWORD PTR [296+rbp]                      ;572.15[spill]
$LN6477:
        test      edx, edx                                      ;572.15
$LN6478:
        jne       .B11.508      ; Prob 50%                      ;572.15
$LN6479:
                                ; LOE rax rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.507::                      ; Preds .B11.759
                                ; Execution count [4.02e-016]: Infreq
$LN6480:
        test      eax, eax                                      ;572.15
$LN6481:
        je        .B11.513      ; Prob 50%                      ;572.15
$LN6482:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.508::                      ; Preds .B11.507 .B11.759
                                ; Execution count [6.03e-016]: Infreq
$LN6483:
        mov       rax, QWORD PTR [18168+rbp]                    ;574.13
$LN6484:
        cmp       DWORD PTR [16280+rbp], 1                      ;573.21
$LN6485:
        jle       .B11.556      ; Prob 16%                      ;573.21
$LN6486:
                                ; LOE rax rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.509::                      ; Preds .B11.508
                                ; Execution count [5.06e-016]: Infreq
$LN6487:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;574.13
$LN6488:
        mov       edx, 256                                      ;575.56
$LN6489:
        sub       rbx, QWORD PTR [18176+rbp]                    ;574.13
$LN6490:
        lea       r8, QWORD PTR [12032+rbp]                     ;575.56
$LN6491:
        imul      rbx, rax                                      ;574.13
$LN6492:
        mov       rax, QWORD PTR [18112+rbp]                    ;574.13
$LN6493:
        mov       r9, rdx                                       ;575.56
$LN6494:
        mov       DWORD PTR [rax+rbx], 20                       ;574.13
$LN6495:
        lea       rbx, QWORD PTR [rbp]                          ;575.56
$LN6496:
        mov       rcx, rbx                                      ;575.56
$LN6497:
        call      for_trim                                      ;575.56
$LN6498:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.761::                      ; Preds .B11.509
                                ; Execution count [5.06e-016]: Infreq
$LN6499:
        mov       edx, eax                                      ;575.56
$LN6500:
                                ; LOE rbx rsi rdi r12 r13 r14 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.510::                      ; Preds .B11.761
                                ; Execution count [5.06e-016]: Infreq
$LN6501:
        movsxd    rax, DWORD PTR [17680+rbp]                    ;575.13
$LN6502:
        mov       r11, rsp                                      ;575.13
$LN6503:
        sub       rax, QWORD PTR [18104+rbp]                    ;575.19
$LN6504:
        lea       rcx, QWORD PTR [20512+rbp]                    ;575.13
$LN6505:
        imul      rax, QWORD PTR [18096+rbp]                    ;575.19
$LN6506:
        add       rax, QWORD PTR [18040+rbp]                    ;575.19
$LN6507:
        lea       r8, QWORD PTR [__STRLITPACK_177.0.1]          ;575.13
$LN6508:
        mov       QWORD PTR [264+rbp], rax                      ;575.13
$LN6509:
        lea       r9, QWORD PTR [256+rbp]                       ;575.13
$LN6510:
        movsxd    rax, edx                                      ;575.56
$LN6511:
        mov       rdx, 012083a4ff03H                            ;575.13
$LN6512:
        mov       QWORD PTR [32+r9], rbx                        ;575.13
$LN6513:
        mov       r10d, 256                                     ;575.13
$LN6514:
        lea       rbx, QWORD PTR [INIT_MET$format_pack.0.1+72]  ;575.13
$LN6515:
        mov       QWORD PTR [rcx], 0                            ;575.13
$LN6516:
        mov       QWORD PTR [r9], r10                           ;575.13
$LN6517:
        mov       QWORD PTR [16+r9], r10                        ;575.13
$LN6518:
        mov       QWORD PTR [24+r9], rax                        ;575.13
$LN6519:
        mov       QWORD PTR [32+r11], rbx                       ;575.13
$LN6520:
        call      for_write_int_fmt                             ;575.13
$LN6521:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.511::                      ; Preds .B11.510
                                ; Execution count [5.06e-016]: Infreq
$LN6522:
        test      eax, eax                                      ;576.21
$LN6523:
        jne       .B11.566      ; Prob 20%                      ;576.21
$LN6524:
        jmp       .B11.765      ; Prob 100%                     ;576.21
$LN6525:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.513::                      ; Preds .B11.507
                                ; Execution count [2.01e-016]: Infreq
$LN6526:
        mov       edx, DWORD PTR [17680+rbp]                    ;587.11
$LN6527:
        mov       r8, QWORD PTR [18176+rbp]                     ;587.11
$LN6528:
        movsxd    rdx, edx                                      ;587.11
$LN6529:
        neg       r8                                            ;587.11
$LN6530:
        add       r8, rdx                                       ;587.11
$LN6531:
        imul      r8, QWORD PTR [18168+rbp]                     ;587.11
$LN6532:
        mov       rbx, QWORD PTR [18112+rbp]                    ;587.11
$LN6533:
        mov       rax, QWORD PTR [10440+rbp]                    ;588.11[spill]
$LN6534:
        mov       DWORD PTR [rbx+r8], -1                        ;587.11
$LN6535:
        mov       rsp, rax                                      ;588.11
$LN6536:
        jmp       .B11.519      ; Prob 100%                     ;588.11
$LN6537:
                                ; LOE rsi rdi r12 r13 r14 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.514::                      ; Preds .B11.736 .B11.465
                                ; Execution count [1.89e-012]: Infreq
$LN6538:
        movsxd    rbx, DWORD PTR [17680+rbp]                    ;466.11
$LN6539:
        mov       edx, 256                                      ;467.40
$LN6540:
        sub       rbx, QWORD PTR [18176+rbp]                    ;466.11
$LN6541:
        lea       rcx, QWORD PTR [1536+rbp]                     ;467.40
$LN6542:
        imul      rbx, QWORD PTR [18168+rbp]                    ;466.11
$LN6543:
        mov       rax, QWORD PTR [18112+rbp]                    ;466.11
$LN6544:
        lea       r8, QWORD PTR [17312+rbp]                     ;467.40
$LN6545:
        mov       r9, rdx                                       ;467.40
$LN6546:
        mov       QWORD PTR [-8+rcx], rsp                       ;467.11[spill]
$LN6547:
        mov       DWORD PTR [rax+rbx], 10                       ;466.11
$LN6548:
        call      for_trim                                      ;467.40
$LN6549:
                                ; LOE rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.515::                      ; Preds .B11.514
                                ; Execution count [1.89e-012]: Infreq
$LN6550:
        movsxd    rbx, eax                                      ;467.40
$LN6551:
        mov       rax, rbx                                      ;467.40
$LN6552:
        add       rax, 15                                       ;467.40
$LN6553:
        and       rax, -16                                      ;467.40
$LN6554:
        call      __chkstk                                      ;467.40
$LN6555:
        sub       rsp, rax                                      ;467.40
$LN6556:
        lea       rax, QWORD PTR [96+rsp]                       ;467.40
$LN6557:
                                ; LOE rax rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.764::                      ; Preds .B11.515
                                ; Execution count [1.89e-012]: Infreq
$LN6558:
        mov       r15, rax                                      ;467.40
$LN6559:
        mov       rdx, rbx                                      ;467.32
$LN6560:
        mov       rcx, r15                                      ;467.32
$LN6561:
        lea       r8, QWORD PTR [1536+rbp]                      ;467.32
$LN6562:
        mov       r9, rbx                                       ;467.32
$LN6563:
        call      for_adjustl                                   ;467.32
$LN6564:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.516::                      ; Preds .B11.764
                                ; Execution count [1.89e-012]: Infreq
$LN6565:
        movsxd    rcx, DWORD PTR [17680+rbp]                    ;467.11
$LN6566:
        mov       r10, rsp                                      ;467.11
$LN6567:
        sub       rcx, QWORD PTR [18104+rbp]                    ;467.11
$LN6568:
        mov       edx, 256                                      ;467.11
$LN6569:
        imul      rcx, QWORD PTR [18096+rbp]                    ;467.11
$LN6570:
        add       rcx, QWORD PTR [18040+rbp]                    ;467.11
$LN6571:
        mov       r8, r15                                       ;467.11
$LN6572:
        mov       r9, rbx                                       ;467.11
$LN6573:
        mov       QWORD PTR [32+r10], 0                         ;467.11
$LN6574:
        call      for_cpystr                                    ;467.11
$LN6575:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.517::                      ; Preds .B11.516
                                ; Execution count [1.89e-012]: Infreq
$LN6576:
        mov       rax, QWORD PTR [1528+rbp]                     ;467.11[spill]
$LN6577:
        mov       rsp, rax                                      ;467.11
$LN6578:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.765::                      ; Preds .B11.543 .B11.511 .B11.504 .B11.497 .B11.490
                                ;       .B11.484 .B11.462 .B11.457 .B11.449 .B11.429
                                ;       .B11.424 .B11.440 .B11.435 .B11.411 .B11.393
                                ;       .B11.381 .B11.374 .B11.366 .B11.359 .B11.517
                                ;      
                                ; Execution count [1.89e-012]: Infreq
$LN6579:
        mov       edx, DWORD PTR [17680+rbp]                    ;592.5
$LN6580:
                                ; LOE rsi rdi r12 r13 r14 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.518::                      ; Preds .B11.400 .B11.418 .B11.765 .B11.479 .B11.556
                                ;      
                                ; Execution count [3.47e-005]: Infreq
$LN6581:
        mov       rax, QWORD PTR [10440+rbp]                    ;588.11[spill]
$LN6582:
        mov       rsp, rax                                      ;588.11
$LN6583:
                                ; LOE rsi rdi r12 r13 r14 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.519::                      ; Preds .B11.518 .B11.513
                                ; Execution count [3.47e-005]: Infreq
$LN6584:
        inc       edx                                           ;340.5
$LN6585:
        mov       DWORD PTR [17680+rbp], edx                    ;340.5
$LN6586:
        movsxd    rdx, edx                                      ;340.5
$LN6587:
        cmp       rdx, QWORD PTR [10432+rbp]                    ;340.5[spill]
$LN6588:
        jle       .B11.342      ; Prob 82%                      ;340.5
$LN6589:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.520::                      ; Preds .B11.519
                                ; Execution count [6.24e-006]: Infreq
$LN6590:
        mov       bl, BYTE PTR [10424+rbp]                      ;[spill]
$LN6591:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.521::                      ; Preds .B11.340 .B11.520
                                ; Execution count [6.78e-006]: Infreq
$LN6592:
        mov       rsi, rsp                                      ;594.11
$LN6593:
        lea       rcx, QWORD PTR [20512+rbp]                    ;594.11
$LN6594:
        mov       r8, 012083a4ff03H                             ;594.11
$LN6595:
        lea       r9, QWORD PTR [__STRLITPACK_178.0.1]          ;594.11
$LN6596:
        mov       edx, DWORD PTR [FILES_FI_mp_LUN_TMP]          ;594.11
$LN6597:
        xor       eax, eax                                      ;594.11
$LN6598:
        mov       QWORD PTR [rcx], rax                          ;594.11
$LN6599:
        mov       QWORD PTR [32+rsi], rax                       ;594.11
$LN6600:
        call      for_close                                     ;594.11
$LN6601:
        jmp       .B11.147      ; Prob 100%                     ;594.11
$LN6602:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.525::                      ; Preds .B11.722
                                ; Execution count [1.77e-010]: Infreq
$LN6603:
        mov       rax, rsi                                      ;
$LN6604:
        lea       r14, QWORD PTR [14428+rbp]                    ;
$LN6605:
        movsxd    rax, eax                                      ;444.19
$LN6606:
        lea       rsi, QWORD PTR [20616+rbp]                    ;
$LN6607:
        mov       QWORD PTR [4104+rbp], rax                     ;444.19[spill]
$LN6608:
        jmp       .B11.435      ; Prob 100%                     ;444.19
$LN6609:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.526::                      ; Preds .B11.721
                                ; Execution count [2.57e-010]: Infreq
$LN6610:
        mov       rax, rsi                                      ;
$LN6611:
        lea       r14, QWORD PTR [14428+rbp]                    ;
$LN6612:
        movsxd    rax, eax                                      ;428.17
$LN6613:
        lea       rsi, QWORD PTR [20616+rbp]                    ;
$LN6614:
        mov       QWORD PTR [9272+rbp], rax                     ;428.17[spill]
$LN6615:
        test      rax, rax                                      ;431.19
$LN6616:
        jle       .B11.429      ; Prob 40%                      ;431.19
$LN6617:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.527::                      ; Preds .B11.526
                                ; Execution count [2.38e-010]: Infreq
$LN6618:
        mov       rax, rsp                                      ;432.15
$LN6619:
        lea       rcx, QWORD PTR [17312+rbp]                    ;432.15
$LN6620:
        mov       edx, 256                                      ;432.15
$LN6621:
        lea       r8, QWORD PTR [__STRLITPACK_71]               ;432.15
$LN6622:
        xor       r9d, r9d                                      ;432.15
$LN6623:
        mov       QWORD PTR [32+rax], 0                         ;432.15
$LN6624:
        call      for_cpystr                                    ;432.15
$LN6625:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.528::                      ; Preds .B11.527
                                ; Execution count [2.38e-010]: Infreq
$LN6626:
        mov       rax, QWORD PTR [9272+rbp]                     ;433.15[spill]
$LN6627:
        mov       r8, rax                                       ;433.15
$LN6628:
        shl       r8, 8                                         ;433.15
$LN6629:
        movsxd    rdx, DWORD PTR [16280+rbp]                    ;433.15
$LN6630:
        lea       r8, QWORD PTR [11520+rbp+r8]                  ;434.45
$LN6631:
        mov       r15, r8                                       ;434.45
$LN6632:
        cmp       rdx, rax                                      ;433.15
$LN6633:
        jl        .B11.535      ; Prob 10%                      ;433.15
$LN6634:
                                ; LOE rdx rsi rdi r8 r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.529::                      ; Preds .B11.528
                                ; Execution count [2.14e-010]: Infreq
$LN6635:
        lea       rax, QWORD PTR [__STRLITPACK_70]              ;434.38
$LN6636:
        lea       rcx, QWORD PTR [4624+rbp]                     ;434.26
$LN6637:
        mov       QWORD PTR [9232+rbp], r15                     ;434.38[spill]
$LN6638:
        lea       rbx, QWORD PTR [4880+rbp]                     ;434.38
$LN6639:
        mov       QWORD PTR [9240+rbp], r12                     ;434.38[spill]
$LN6640:
        mov       rsi, rax                                      ;434.38
$LN6641:
        mov       r14, QWORD PTR [9272+rbp]                     ;434.38[spill]
$LN6642:
        mov       rdi, rdx                                      ;434.38
$LN6643:
        mov       r13, rcx                                      ;434.38
$LN6644:
        mov       r12, r8                                       ;434.38
$LN6645:
        lea       r15, QWORD PTR [17312+rbp]                    ;434.38
$LN6646:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.530::                      ; Preds .B11.533 .B11.529
                                ; Execution count [5.49e-008]: Infreq
$LN6647:
        mov       edx, 256                                      ;434.26
$LN6648:
        mov       rcx, r13                                      ;434.26
$LN6649:
        mov       r8, r15                                       ;434.26
$LN6650:
        mov       r9, rdx                                       ;434.26
$LN6651:
        call      for_trim                                      ;434.26
$LN6652:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.531::                      ; Preds .B11.530
                                ; Execution count [5.49e-008]: Infreq
$LN6653:
        mov       edx, 256                                      ;434.45
$LN6654:
        mov       rcx, rbx                                      ;434.45
$LN6655:
        mov       r8, r12                                       ;434.45
$LN6656:
        mov       r9, rdx                                       ;434.45
$LN6657:
        movsxd    rax, eax                                      ;434.26
$LN6658:
        mov       QWORD PTR [10352+rbp], r13                    ;434.38
$LN6659:
        mov       QWORD PTR [10360+rbp], rax                    ;434.38
$LN6660:
        mov       QWORD PTR [10368+rbp], rsi                    ;434.38
$LN6661:
        mov       QWORD PTR [10376+rbp], 1                      ;434.38
$LN6662:
        call      for_trim                                      ;434.45
$LN6663:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.532::                      ; Preds .B11.531
                                ; Execution count [5.49e-008]: Infreq
$LN6664:
        mov       edx, 3                                        ;434.17
$LN6665:
        lea       rcx, QWORD PTR [10352+rbp]                    ;434.17
$LN6666:
        mov       r8, r15                                       ;434.17
$LN6667:
        mov       r9d, 256                                      ;434.17
$LN6668:
        movsxd    rax, eax                                      ;434.45
$LN6669:
        mov       QWORD PTR [32+rcx], rbx                       ;434.43
$LN6670:
        mov       QWORD PTR [40+rcx], rax                       ;434.43
$LN6671:
        call      for_concat                                    ;434.17
$LN6672:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.533::                      ; Preds .B11.532
                                ; Execution count [5.49e-008]: Infreq
$LN6673:
        inc       r14                                           ;435.15
$LN6674:
        add       r12, 256                                      ;435.15
$LN6675:
        cmp       r14, rdi                                      ;435.15
$LN6676:
        jle       .B11.530      ; Prob 99%                      ;435.15
$LN6677:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.534::                      ; Preds .B11.533
                                ; Execution count [2.14e-010]: Infreq
$LN6678:
        mov       r15, QWORD PTR [9232+rbp]                     ;[spill]
$LN6679:
        lea       rdi, QWORD PTR [__NLITPACK_1.0.1]             ;
$LN6680:
        mov       r12, QWORD PTR [9240+rbp]                     ;[spill]
$LN6681:
        lea       r13, QWORD PTR [16280+rbp]                    ;
$LN6682:
        lea       r14, QWORD PTR [14428+rbp]                    ;
$LN6683:
        lea       rsi, QWORD PTR [20616+rbp]                    ;
$LN6684:
                                ; LOE rsi rdi r12 r13 r14 r15 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.535::                      ; Preds .B11.528 .B11.534
                                ; Execution count [2.38e-010]: Infreq
$LN6685:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;436.36
$LN6686:
        lea       rbx, QWORD PTR [5136+rbp]                     ;436.36
$LN6687:
        sub       r8, QWORD PTR [18104+rbp]                     ;436.36
$LN6688:
        mov       edx, 256                                      ;436.36
$LN6689:
        imul      r8, QWORD PTR [18096+rbp]                     ;436.36
$LN6690:
        add       r8, QWORD PTR [18040+rbp]                     ;436.36
$LN6691:
        mov       rcx, rbx                                      ;436.36
$LN6692:
        mov       r9, rdx                                       ;436.36
$LN6693:
        call      for_trim                                      ;436.36
$LN6694:
                                ; LOE rbx rsi rdi r12 r13 r14 r15 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.536::                      ; Preds .B11.535
                                ; Execution count [2.38e-010]: Infreq
$LN6695:
        mov       QWORD PTR [6928+rbp], rbx                     ;436.60
$LN6696:
        lea       rbx, QWORD PTR [__STRLITPACK_69]              ;436.60
$LN6697:
        mov       QWORD PTR [6944+rbp], rbx                     ;436.60
$LN6698:
        mov       rbx, rsp                                      ;436.76
$LN6699:
        lea       rdx, QWORD PTR [__STRLITPACK_68]              ;436.76
$LN6700:
        lea       rcx, QWORD PTR [5392+rbp]                     ;436.76
$LN6701:
        mov       r8, r15                                       ;436.76
$LN6702:
        mov       r11d, 1                                       ;436.60
$LN6703:
        movsxd    rax, eax                                      ;436.36
$LN6704:
        lea       r10, QWORD PTR [__STRLITPACK_0]               ;436.65
$LN6705:
        mov       QWORD PTR [48+rbx], rdx                       ;436.76
$LN6706:
        mov       edx, 256                                      ;436.76
$LN6707:
        mov       r9, rdx                                       ;436.76
$LN6708:
        mov       QWORD PTR [6936+rbp], rax                     ;436.60
$LN6709:
        lea       rax, QWORD PTR [17312+rbp]                    ;436.76
$LN6710:
        mov       QWORD PTR [6952+rbp], r11                     ;436.60
$LN6711:
        mov       QWORD PTR [6960+rbp], r10                     ;436.65
$LN6712:
        mov       QWORD PTR [6968+rbp], r11                     ;436.65
$LN6713:
        mov       QWORD PTR [32+rbx], rax                       ;436.76
$LN6714:
        mov       QWORD PTR [40+rbx], 256                       ;436.76
$LN6715:
        mov       QWORD PTR [56+rbx], 0                         ;436.76
$LN6716:
;       BUILDFILENAME
        call      BUILDFILENAME                                 ;436.76
$LN6717:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.537::                      ; Preds .B11.536
                                ; Execution count [2.38e-010]: Infreq
$LN6718:
        mov       edx, 256                                      ;436.71
$LN6719:
        lea       rbx, QWORD PTR [5648+rbp]                     ;436.71
$LN6720:
        mov       rcx, rbx                                      ;436.71
$LN6721:
        lea       r8, QWORD PTR [5392+rbp]                      ;436.71
$LN6722:
        mov       r9, rdx                                       ;436.71
$LN6723:
        call      for_trim                                      ;436.71
$LN6724:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.538::                      ; Preds .B11.537
                                ; Execution count [2.38e-010]: Infreq
$LN6725:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;436.15
$LN6726:
        lea       rcx, QWORD PTR [6928+rbp]                     ;436.15
$LN6727:
        sub       r8, QWORD PTR [18104+rbp]                     ;436.15
$LN6728:
        mov       edx, 5                                        ;436.15
$LN6729:
        imul      r8, QWORD PTR [18096+rbp]                     ;436.15
$LN6730:
        add       r8, QWORD PTR [18040+rbp]                     ;436.15
$LN6731:
        mov       r9d, 256                                      ;436.15
$LN6732:
        mov       QWORD PTR [48+rcx], rbx                       ;436.69
$LN6733:
        lea       rbx, QWORD PTR [__STRLITPACK_0]               ;436.110
$LN6734:
        movsxd    rax, eax                                      ;436.71
$LN6735:
        mov       QWORD PTR [56+rcx], rax                       ;436.69
$LN6736:
        mov       QWORD PTR [64+rcx], rbx                       ;436.110
$LN6737:
        mov       QWORD PTR [72+rcx], 1                         ;436.110
$LN6738:
        call      for_concat                                    ;436.15
$LN6739:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.539::                      ; Preds .B11.538
                                ; Execution count [2.38e-010]: Infreq
$LN6740:
        movsxd    rbx, DWORD PTR [16280+rbp]                    ;439.13
$LN6741:
        jmp       .B11.429      ; Prob 100%                     ;439.13
$LN6742:
                                ; LOE rbx rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.540::                      ; Preds .B11.449
                                ; Execution count [2.04e-011]: Infreq
$LN6743:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;453.66
$LN6744:
        lea       rbx, QWORD PTR [2400+rbp]                     ;453.66
$LN6745:
        sub       r8, QWORD PTR [18104+rbp]                     ;453.66
$LN6746:
        mov       edx, 256                                      ;453.66
$LN6747:
        imul      r8, QWORD PTR [18096+rbp]                     ;453.66
$LN6748:
        add       r8, QWORD PTR [18040+rbp]                     ;453.66
$LN6749:
        mov       rcx, rbx                                      ;453.66
$LN6750:
        mov       r9, rdx                                       ;453.66
$LN6751:
        call      for_trim                                      ;453.66
$LN6752:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.541::                      ; Preds .B11.540
                                ; Execution count [2.04e-011]: Infreq
$LN6753:
        movsxd    r10, DWORD PTR [16280+rbp]                    ;453.97
$LN6754:
        mov       edx, 256                                      ;453.97
$LN6755:
        shl       r10, 8                                        ;453.97
$LN6756:
        mov       r9, rdx                                       ;453.97
$LN6757:
        mov       QWORD PTR [3936+rbp], rbx                     ;453.90
$LN6758:
        lea       rbx, QWORD PTR [__STRLITPACK_64]              ;453.90
$LN6759:
        mov       QWORD PTR [3952+rbp], rbx                     ;453.90
$LN6760:
        lea       rbx, QWORD PTR [2656+rbp]                     ;453.97
$LN6761:
        mov       rcx, rbx                                      ;453.97
$LN6762:
        movsxd    rax, eax                                      ;453.66
$LN6763:
        lea       r8, QWORD PTR [11264+rbp+r10]                 ;453.97
$LN6764:
        mov       QWORD PTR [3944+rbp], rax                     ;453.90
$LN6765:
        mov       QWORD PTR [3960+rbp], 1                       ;453.90
$LN6766:
        call      for_trim                                      ;453.97
$LN6767:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.542::                      ; Preds .B11.541
                                ; Execution count [2.04e-011]: Infreq
$LN6768:
        movsxd    r10, DWORD PTR [16280+rbp]                    ;453.124
$LN6769:
        mov       edx, 256                                      ;453.124
$LN6770:
        shl       r10, 8                                        ;453.124
$LN6771:
        mov       r9, rdx                                       ;453.124
$LN6772:
        mov       QWORD PTR [3968+rbp], rbx                     ;453.95
$LN6773:
        lea       rbx, QWORD PTR [__STRLITPACK_63]              ;453.117
$LN6774:
        mov       QWORD PTR [3984+rbp], rbx                     ;453.117
$LN6775:
        lea       rbx, QWORD PTR [2912+rbp]                     ;453.124
$LN6776:
        mov       rcx, rbx                                      ;453.124
$LN6777:
        movsxd    rax, eax                                      ;453.97
$LN6778:
        lea       r8, QWORD PTR [11520+rbp+r10]                 ;453.124
$LN6779:
        mov       QWORD PTR [3976+rbp], rax                     ;453.95
$LN6780:
        mov       QWORD PTR [3992+rbp], 1                       ;453.117
$LN6781:
        call      for_trim                                      ;453.124
$LN6782:
                                ; LOE rbx rsi rdi r12 r13 r14 eax xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.543::                      ; Preds .B11.542
                                ; Execution count [2.04e-011]: Infreq
$LN6783:
        movsxd    r8, DWORD PTR [17680+rbp]                     ;453.45
$LN6784:
        lea       rcx, QWORD PTR [3936+rbp]                     ;453.45
$LN6785:
        sub       r8, QWORD PTR [18104+rbp]                     ;453.45
$LN6786:
        mov       edx, 5                                        ;453.45
$LN6787:
        imul      r8, QWORD PTR [18096+rbp]                     ;453.45
$LN6788:
        add       r8, QWORD PTR [18040+rbp]                     ;453.45
$LN6789:
        mov       r9d, 256                                      ;453.45
$LN6790:
        movsxd    rax, eax                                      ;453.124
$LN6791:
        mov       QWORD PTR [64+rcx], rbx                       ;453.122
$LN6792:
        mov       QWORD PTR [72+rcx], rax                       ;453.122
$LN6793:
        call      for_concat                                    ;453.45
$LN6794:
        jmp       .B11.765      ; Prob 100%                     ;453.45
$LN6795:
                                ; LOE rsi rdi r12 r13 r14 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.545::                      ; Preds .B11.474
                                ; Execution count [3.85e-014]: Infreq
$LN6796:
        mov       rax, rsp                                      ;503.15
$LN6797:
        mov       rcx, r12                                      ;503.15
$LN6798:
        mov       edx, 80                                       ;503.15
$LN6799:
        lea       r8, QWORD PTR [__STRLITPACK_45]               ;503.15
$LN6800:
        mov       r9d, 8                                        ;503.15
$LN6801:
        mov       DWORD PTR [464+r12], 5                        ;502.15
$LN6802:
        mov       QWORD PTR [32+rax], 0                         ;503.15
$LN6803:
        call      for_cpystr                                    ;503.15
$LN6804:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.546::                      ; Preds .B11.545
                                ; Execution count [3.85e-014]: Infreq
$LN6805:
        mov       rax, rsp                                      ;504.15
$LN6806:
        add       r12, 80                                       ;504.15
$LN6807:
        mov       rcx, r12                                      ;504.15
$LN6808:
        mov       edx, 128                                      ;504.15
$LN6809:
        lea       r8, QWORD PTR [__STRLITPACK_44]               ;504.15
$LN6810:
        mov       r9d, 56                                       ;504.15
$LN6811:
        mov       QWORD PTR [32+rax], 0                         ;504.15
$LN6812:
        call      for_cpystr                                    ;504.15
$LN6813:
        jmp       .B11.65       ; Prob 100%                     ;504.15
$LN6814:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.547::                      ; Preds .B11.471
                                ; Execution count [9.62e-014]: Infreq
$LN6815:
        mov       rax, rsp                                      ;493.13
$LN6816:
        mov       rcx, r12                                      ;493.13
$LN6817:
        mov       edx, 80                                       ;493.13
$LN6818:
        lea       r8, QWORD PTR [__STRLITPACK_47]               ;493.13
$LN6819:
        mov       r9d, 8                                        ;493.13
$LN6820:
        mov       DWORD PTR [464+r12], 5                        ;492.13
$LN6821:
        mov       QWORD PTR [32+rax], 0                         ;493.13
$LN6822:
        call      for_cpystr                                    ;493.13
$LN6823:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.548::                      ; Preds .B11.547
                                ; Execution count [9.62e-014]: Infreq
$LN6824:
        mov       rax, rsp                                      ;494.13
$LN6825:
        add       r12, 80                                       ;494.13
$LN6826:
        mov       rcx, r12                                      ;494.13
$LN6827:
        mov       edx, 128                                      ;494.13
$LN6828:
        lea       r8, QWORD PTR [__STRLITPACK_46]               ;494.13
$LN6829:
        mov       r9d, 54                                       ;494.13
$LN6830:
        mov       QWORD PTR [32+rax], 0                         ;494.13
$LN6831:
        call      for_cpystr                                    ;494.13
$LN6832:
        jmp       .B11.65       ; Prob 100%                     ;494.13
$LN6833:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.549::                      ; Preds .B11.469
                                ; Execution count [1.20e-013]: Infreq
$LN6834:
        mov       rax, rsp                                      ;484.13
$LN6835:
        mov       rcx, r12                                      ;484.13
$LN6836:
        mov       edx, 80                                       ;484.13
$LN6837:
        lea       r8, QWORD PTR [__STRLITPACK_49]               ;484.13
$LN6838:
        mov       r9d, 8                                        ;484.13
$LN6839:
        mov       DWORD PTR [464+r12], 5                        ;483.13
$LN6840:
        mov       QWORD PTR [32+rax], 0                         ;484.13
$LN6841:
        call      for_cpystr                                    ;484.13
$LN6842:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.550::                      ; Preds .B11.549
                                ; Execution count [1.20e-013]: Infreq
$LN6843:
        mov       rax, rsp                                      ;485.13
$LN6844:
        add       r12, 80                                       ;485.13
$LN6845:
        mov       rcx, r12                                      ;485.13
$LN6846:
        mov       edx, 128                                      ;485.13
$LN6847:
        lea       r8, QWORD PTR [__STRLITPACK_48]               ;485.13
$LN6848:
        mov       r9d, 50                                       ;485.13
$LN6849:
        mov       QWORD PTR [32+rax], 0                         ;485.13
$LN6850:
        call      for_cpystr                                    ;485.13
$LN6851:
        jmp       .B11.65       ; Prob 100%                     ;485.13
$LN6852:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.551::                      ; Preds .B11.467
                                ; Execution count [2.36e-015]: Infreq
$LN6853:
        mov       rax, rsp                                      ;474.13
$LN6854:
        mov       rcx, r12                                      ;474.13
$LN6855:
        mov       edx, 80                                       ;474.13
$LN6856:
        lea       r8, QWORD PTR [__STRLITPACK_52]               ;474.13
$LN6857:
        mov       r9d, 8                                        ;474.13
$LN6858:
        mov       DWORD PTR [464+r12], 3                        ;473.13
$LN6859:
        mov       QWORD PTR [32+rax], 0                         ;474.13
$LN6860:
        call      for_cpystr                                    ;474.13
$LN6861:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.552::                      ; Preds .B11.551
                                ; Execution count [2.36e-015]: Infreq
$LN6862:
        mov       rax, rsp                                      ;475.13
$LN6863:
        lea       rcx, QWORD PTR [80+r12]                       ;475.13
$LN6864:
        mov       edx, 128                                      ;475.13
$LN6865:
        lea       r8, QWORD PTR [__STRLITPACK_51]               ;475.13
$LN6866:
        mov       r9d, 28                                       ;475.13
$LN6867:
        mov       QWORD PTR [32+rax], 0                         ;475.13
$LN6868:
        call      for_cpystr                                    ;475.13
$LN6869:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.553::                      ; Preds .B11.552
                                ; Execution count [2.36e-015]: Infreq
$LN6870:
        mov       rax, rsp                                      ;476.13
$LN6871:
        add       r12, 208                                      ;476.13
$LN6872:
        mov       rcx, r12                                      ;476.13
$LN6873:
        mov       edx, 128                                      ;476.13
$LN6874:
        lea       r8, QWORD PTR [__STRLITPACK_50]               ;476.13
$LN6875:
        mov       r9d, 47                                       ;476.13
$LN6876:
        mov       QWORD PTR [32+rax], 0                         ;476.13
$LN6877:
        call      for_cpystr                                    ;476.13
$LN6878:
        jmp       .B11.65       ; Prob 100%                     ;476.13
$LN6879:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.554::                      ; Preds .B11.484
                                ; Execution count [5.07e-014]: Infreq
$LN6880:
        mov       rax, rsp                                      ;522.15
$LN6881:
        mov       rcx, r12                                      ;522.15
$LN6882:
        mov       edx, 80                                       ;522.15
$LN6883:
        lea       r8, QWORD PTR [__STRLITPACK_40]               ;522.15
$LN6884:
        mov       r9d, 8                                        ;522.15
$LN6885:
        mov       DWORD PTR [464+r12], 5                        ;521.15
$LN6886:
        mov       QWORD PTR [32+rax], 0                         ;522.15
$LN6887:
        call      for_cpystr                                    ;522.15
$LN6888:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.555::                      ; Preds .B11.554
                                ; Execution count [5.07e-014]: Infreq
$LN6889:
        mov       rax, rsp                                      ;523.15
$LN6890:
        add       r12, 80                                       ;523.15
$LN6891:
        mov       rcx, r12                                      ;523.15
$LN6892:
        mov       edx, 128                                      ;523.15
$LN6893:
        lea       r8, QWORD PTR [__STRLITPACK_39]               ;523.15
$LN6894:
        mov       r9d, 42                                       ;523.15
$LN6895:
        mov       QWORD PTR [32+rax], 0                         ;523.15
$LN6896:
        call      for_cpystr                                    ;523.15
$LN6897:
        jmp       .B11.65       ; Prob 100%                     ;523.15
$LN6898:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.556::                      ; Preds .B11.508 .B11.501 .B11.494 .B11.487 .B11.481
                                ;      
                                ; Execution count [4.83e-014]: Infreq
$LN6899:
        mov       edx, DWORD PTR [17680+rbp]                    ;527.13
$LN6900:
        mov       rbx, QWORD PTR [18176+rbp]                    ;527.13
$LN6901:
        movsxd    rdx, edx                                      ;527.13
$LN6902:
        neg       rbx                                           ;527.13
$LN6903:
        add       rbx, rdx                                      ;527.13
$LN6904:
        imul      rbx, rax                                      ;527.13
$LN6905:
        mov       rax, QWORD PTR [18112+rbp]                    ;527.13
$LN6906:
        mov       DWORD PTR [rax+rbx], -1                       ;527.13
$LN6907:
        jmp       .B11.518      ; Prob 100%                     ;527.13
$LN6908:
                                ; LOE rsi rdi r12 r13 r14 edx xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.557::                      ; Preds .B11.490
                                ; Execution count [3.96e-014]: Infreq
$LN6909:
        mov       rax, rsp                                      ;536.15
$LN6910:
        mov       rcx, r12                                      ;536.15
$LN6911:
        mov       edx, 80                                       ;536.15
$LN6912:
        lea       r8, QWORD PTR [__STRLITPACK_35]               ;536.15
$LN6913:
        mov       r9d, 8                                        ;536.15
$LN6914:
        mov       DWORD PTR [464+r12], 5                        ;535.15
$LN6915:
        mov       QWORD PTR [32+rax], 0                         ;536.15
$LN6916:
        call      for_cpystr                                    ;536.15
$LN6917:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.558::                      ; Preds .B11.557
                                ; Execution count [3.96e-014]: Infreq
$LN6918:
        mov       rax, rsp                                      ;537.15
$LN6919:
        add       r12, 80                                       ;537.15
$LN6920:
        mov       rcx, r12                                      ;537.15
$LN6921:
        mov       edx, 128                                      ;537.15
$LN6922:
        lea       r8, QWORD PTR [__STRLITPACK_34]               ;537.15
$LN6923:
        mov       r9d, 41                                       ;537.15
$LN6924:
        mov       QWORD PTR [32+rax], 0                         ;537.15
$LN6925:
        call      for_cpystr                                    ;537.15
$LN6926:
        jmp       .B11.65       ; Prob 100%                     ;537.15
$LN6927:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.560::                      ; Preds .B11.497
                                ; Execution count [9.93e-015]: Infreq
$LN6928:
        mov       rax, rsp                                      ;550.15
$LN6929:
        mov       rcx, r12                                      ;550.15
$LN6930:
        mov       edx, 80                                       ;550.15
$LN6931:
        lea       r8, QWORD PTR [__STRLITPACK_29]               ;550.15
$LN6932:
        mov       r9d, 8                                        ;550.15
$LN6933:
        mov       DWORD PTR [464+r12], 5                        ;549.15
$LN6934:
        mov       QWORD PTR [32+rax], 0                         ;550.15
$LN6935:
        call      for_cpystr                                    ;550.15
$LN6936:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.561::                      ; Preds .B11.560
                                ; Execution count [9.93e-015]: Infreq
$LN6937:
        mov       rax, rsp                                      ;551.15
$LN6938:
        add       r12, 80                                       ;551.15
$LN6939:
        mov       rcx, r12                                      ;551.15
$LN6940:
        mov       edx, 128                                      ;551.15
$LN6941:
        lea       r8, QWORD PTR [__STRLITPACK_28]               ;551.15
$LN6942:
        mov       r9d, 43                                       ;551.15
$LN6943:
        mov       QWORD PTR [32+rax], 0                         ;551.15
$LN6944:
        call      for_cpystr                                    ;551.15
$LN6945:
        jmp       .B11.65       ; Prob 100%                     ;551.15
$LN6946:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.563::                      ; Preds .B11.504
                                ; Execution count [1.09e-015]: Infreq
$LN6947:
        mov       rax, rsp                                      ;564.15
$LN6948:
        mov       rcx, r12                                      ;564.15
$LN6949:
        mov       edx, 80                                       ;564.15
$LN6950:
        lea       r8, QWORD PTR [__STRLITPACK_23]               ;564.15
$LN6951:
        mov       r9d, 8                                        ;564.15
$LN6952:
        mov       DWORD PTR [464+r12], 5                        ;563.15
$LN6953:
        mov       QWORD PTR [32+rax], 0                         ;564.15
$LN6954:
        call      for_cpystr                                    ;564.15
$LN6955:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.564::                      ; Preds .B11.563
                                ; Execution count [1.09e-015]: Infreq
$LN6956:
        mov       rax, rsp                                      ;565.15
$LN6957:
        add       r12, 80                                       ;565.15
$LN6958:
        mov       rcx, r12                                      ;565.15
$LN6959:
        mov       edx, 128                                      ;565.15
$LN6960:
        lea       r8, QWORD PTR [__STRLITPACK_22]               ;565.15
$LN6961:
        mov       r9d, 48                                       ;565.15
$LN6962:
        mov       QWORD PTR [32+rax], 0                         ;565.15
$LN6963:
        call      for_cpystr                                    ;565.15
$LN6964:
        jmp       .B11.65       ; Prob 100%                     ;565.15
$LN6965:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.566::                      ; Preds .B11.511
                                ; Execution count [1.01e-016]: Infreq
$LN6966:
        mov       rax, rsp                                      ;578.15
$LN6967:
        mov       rcx, r12                                      ;578.15
$LN6968:
        mov       edx, 80                                       ;578.15
$LN6969:
        lea       r8, QWORD PTR [__STRLITPACK_17]               ;578.15
$LN6970:
        mov       r9d, 8                                        ;578.15
$LN6971:
        mov       DWORD PTR [464+r12], 5                        ;577.15
$LN6972:
        mov       QWORD PTR [32+rax], 0                         ;578.15
$LN6973:
        call      for_cpystr                                    ;578.15
$LN6974:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.567::                      ; Preds .B11.566
                                ; Execution count [1.01e-016]: Infreq
$LN6975:
        mov       rax, rsp                                      ;579.15
$LN6976:
        add       r12, 80                                       ;579.15
$LN6977:
        mov       rcx, r12                                      ;579.15
$LN6978:
        mov       edx, 128                                      ;579.15
$LN6979:
        lea       r8, QWORD PTR [__STRLITPACK_16]               ;579.15
$LN6980:
        mov       r9d, 47                                       ;579.15
$LN6981:
        mov       QWORD PTR [32+rax], 0                         ;579.15
$LN6982:
        call      for_cpystr                                    ;579.15
$LN6983:
        jmp       .B11.65       ; Prob 100%                     ;579.15
$LN6984:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.569::                      ; Preds .B11.346
                                ; Execution count [1.08e-005]: Infreq
$LN6985:
        mov       rax, rsp                                      ;347.9
$LN6986:
        mov       rcx, r12                                      ;347.9
$LN6987:
        mov       edx, 80                                       ;347.9
$LN6988:
        lea       r8, QWORD PTR [__STRLITPACK_97]               ;347.9
$LN6989:
        mov       r9d, 8                                        ;347.9
$LN6990:
        mov       DWORD PTR [464+r12], 5                        ;346.9
$LN6991:
        mov       QWORD PTR [32+rax], 0                         ;347.9
$LN6992:
        call      for_cpystr                                    ;347.9
$LN6993:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.570::                      ; Preds .B11.569
                                ; Execution count [1.08e-005]: Infreq
$LN6994:
        mov       rax, rsp                                      ;348.9
$LN6995:
        lea       rcx, QWORD PTR [80+r12]                       ;348.9
$LN6996:
        mov       edx, 128                                      ;348.9
$LN6997:
        lea       r8, QWORD PTR [__STRLITPACK_96]               ;348.9
$LN6998:
        mov       r9d, 41                                       ;348.9
$LN6999:
        mov       QWORD PTR [32+rax], 0                         ;348.9
$LN7000:
        call      for_cpystr                                    ;348.9
$LN7001:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.571::                      ; Preds .B11.570
                                ; Execution count [1.08e-005]: Infreq
$LN7002:
        mov       rax, rsp                                      ;349.9
$LN7003:
        add       r12, 208                                      ;349.9
$LN7004:
        mov       rcx, r12                                      ;349.9
$LN7005:
        mov       edx, 128                                      ;349.9
$LN7006:
        lea       r8, QWORD PTR [__STRLITPACK_95]               ;349.9
$LN7007:
        mov       r9d, 36                                       ;349.9
$LN7008:
        mov       QWORD PTR [32+rax], 0                         ;349.9
$LN7009:
        call      for_cpystr                                    ;349.9
$LN7010:
        jmp       .B11.65       ; Prob 100%                     ;349.9
$LN7011:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.572::                      ; Preds .B11.220
                                ; Execution count [7.90e-005]: Infreq
$LN7012:
        lea       rcx, QWORD PTR [GRID_FI_mp_HRES]              ;598.10
$LN7013:
;       CHECKHRESDEFAULT
        call      CHECKHRESDEFAULT                              ;598.10
$LN7014:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.573::                      ; Preds .B11.572
                                ; Execution count [7.90e-005]: Infreq
$LN7015:
        cmp       DWORD PTR [464+r12], 0                        ;599.16
$LN7016:
        jne       .B11.65       ; Prob 95%                      ;599.16
$LN7017:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.574::                      ; Preds .B11.573
                                ; Execution count [3.95e-006]: Infreq
$LN7018:
        mov       rax, 0fffffff00fffffffH                       ;601.5
$LN7019:
        mov       ecx, 256                                      ;601.5
$LN7020:
        and       rax, QWORD PTR [18064+rbp]                    ;601.5
$LN7021:
        lea       rdx, QWORD PTR [18040+rbp]                    ;601.5
$LN7022:
        mov       r8d, 262145                                   ;601.5
$LN7023:
        add       rax, 1073741824                               ;601.5
$LN7024:
        mov       QWORD PTR [24+rdx], rax                       ;601.5
$LN7025:
        call      for_allocate                                  ;601.5
$LN7026:
                                ; LOE rax r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.575::                      ; Preds .B11.574
                                ; Execution count [3.95e-006]: Infreq
$LN7027:
        test      rax, rax                                      ;601.5
$LN7028:
        je        .B11.581      ; Prob 5%                       ;601.5
$LN7029:
                                ; LOE rax r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.576::                      ; Preds .B11.583 .B11.582 .B11.575
                                ; Execution count [3.95e-006]: Infreq
$LN7030:
        test      eax, eax                                      ;602.13
$LN7031:
        je        .B11.579      ; Prob 50%                      ;602.13
$LN7032:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.577::                      ; Preds .B11.576
                                ; Execution count [1.98e-006]: Infreq
$LN7033:
        mov       rax, rsp                                      ;604.7
$LN7034:
        mov       rcx, r12                                      ;604.7
$LN7035:
        mov       edx, 80                                       ;604.7
$LN7036:
        lea       r8, QWORD PTR [__STRLITPACK_15]               ;604.7
$LN7037:
        mov       r9d, 8                                        ;604.7
$LN7038:
        mov       DWORD PTR [464+r12], 99                       ;603.7
$LN7039:
        mov       QWORD PTR [32+rax], 0                         ;604.7
$LN7040:
        call      for_cpystr                                    ;604.7
$LN7041:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.578::                      ; Preds .B11.577
                                ; Execution count [1.98e-006]: Infreq
$LN7042:
        mov       rax, rsp                                      ;605.7
$LN7043:
        add       r12, 80                                       ;605.7
$LN7044:
        mov       rcx, r12                                      ;605.7
$LN7045:
        mov       edx, 128                                      ;605.7
$LN7046:
        lea       r8, QWORD PTR [__STRLITPACK_14]               ;605.7
$LN7047:
        mov       r9d, 27                                       ;605.7
$LN7048:
        mov       QWORD PTR [32+rax], 0                         ;605.7
$LN7049:
        call      for_cpystr                                    ;605.7
$LN7050:
        jmp       .B11.65       ; Prob 100%                     ;605.7
$LN7051:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.579::                      ; Preds .B11.576
                                ; Execution count [1.98e-006]: Infreq
$LN7052:
        mov       rsi, QWORD PTR [18168+rbp]                    ;609.5
$LN7053:
        mov       edx, 256                                      ;611.26
$LN7054:
        mov       rax, QWORD PTR [18176+rbp]                    ;609.5
$LN7055:
        lea       rcx, QWORD PTR [11520+rbp]                    ;611.26
$LN7056:
        imul      rax, rsi                                      ;609.5
$LN7057:
        mov       rdi, QWORD PTR [18112+rbp]                    ;609.5
$LN7058:
        lea       r8, QWORD PTR [FILES_FI_mp_FILE_MET]          ;611.26
$LN7059:
        sub       rdi, rax                                      ;609.5
$LN7060:
        mov       r9, rdx                                       ;611.26
$LN7061:
        mov       DWORD PTR [18032+rbp], 1                      ;608.5
$LN7062:
        mov       DWORD PTR [rsi+rdi], 2                        ;609.5
$LN7063:
        call      for_trim                                      ;611.26
$LN7064:
                                ; LOE r12 eax bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.774::                      ; Preds .B11.579
                                ; Execution count [1.98e-006]: Infreq
$LN7065:
        mov       r9d, eax                                      ;611.26
$LN7066:
                                ; LOE r12 r9d bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.580::                      ; Preds .B11.774
                                ; Execution count [1.98e-006]: Infreq
$LN7067:
        mov       rax, QWORD PTR [18096+rbp]                    ;611.5
$LN7068:
        mov       rdi, rsp                                      ;611.5
$LN7069:
        mov       rsi, QWORD PTR [18104+rbp]                    ;611.5
$LN7070:
        mov       edx, 256                                      ;611.5
$LN7071:
        imul      rsi, rax                                      ;611.5
$LN7072:
        mov       rcx, QWORD PTR [18040+rbp]                    ;611.5
$LN7073:
        lea       r8, QWORD PTR [11520+rbp]                     ;611.5
$LN7074:
        add       rcx, rax                                      ;611.5
$LN7075:
        movsxd    r9, r9d                                       ;611.5
$LN7076:
        sub       rcx, rsi                                      ;611.5
$LN7077:
        mov       QWORD PTR [32+rdi], 0                         ;611.5
$LN7078:
        call      for_cpystr                                    ;611.5
$LN7079:
        jmp       .B11.147      ; Prob 100%                     ;611.5
$LN7080:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.581::                      ; Preds .B11.575
                                ; Execution count [1.98e-007]: Infreq
$LN7081:
        mov       rsi, 0fffffff00fffffffH                       ;601.5
$LN7082:
        mov       ecx, 4                                        ;601.5
$LN7083:
        and       rsi, QWORD PTR [18136+rbp]                    ;601.5
$LN7084:
        lea       rdx, QWORD PTR [18112+rbp]                    ;601.5
$LN7085:
        mov       r8d, 262145                                   ;601.5
$LN7086:
        mov       eax, 256                                      ;601.5
$LN7087:
        mov       edi, 1                                        ;601.5
$LN7088:
        add       rsi, 1073741824                               ;601.5
$LN7089:
        mov       QWORD PTR [-48+rdx], 5                        ;601.5
$LN7090:
        mov       QWORD PTR [-64+rdx], rax                      ;601.5
$LN7091:
        mov       QWORD PTR [-40+rdx], rdi                      ;601.5
$LN7092:
        mov       QWORD PTR [-56+rdx], 0                        ;601.5
$LN7093:
        mov       QWORD PTR [-8+rdx], rdi                       ;601.5
$LN7094:
        mov       QWORD PTR [-24+rdx], rdi                      ;601.5
$LN7095:
        mov       QWORD PTR [-16+rdx], rax                      ;601.5
$LN7096:
        mov       QWORD PTR [24+rdx], rsi                       ;601.5
$LN7097:
        call      for_allocate                                  ;601.5
$LN7098:
                                ; LOE rax rdi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.582::                      ; Preds .B11.581
                                ; Execution count [1.98e-007]: Infreq
$LN7099:
        test      rax, rax                                      ;601.5
$LN7100:
        jne       .B11.576      ; Prob 50%                      ;601.5
$LN7101:
                                ; LOE rax rdi r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.583::                      ; Preds .B11.582
                                ; Execution count [9.88e-008]: Infreq
$LN7102:
        mov       edx, 4                                        ;601.5
$LN7103:
        mov       QWORD PTR [18136+rbp], 5                      ;601.5
$LN7104:
        mov       QWORD PTR [18120+rbp], rdx                    ;601.5
$LN7105:
        mov       QWORD PTR [18144+rbp], rdi                    ;601.5
$LN7106:
        mov       QWORD PTR [18128+rbp], 0                      ;601.5
$LN7107:
        mov       QWORD PTR [18176+rbp], rdi                    ;601.5
$LN7108:
        mov       QWORD PTR [18160+rbp], rdi                    ;601.5
$LN7109:
        mov       QWORD PTR [18168+rbp], rdx                    ;601.5
$LN7110:
        jmp       .B11.576      ; Prob 100%                     ;601.5
$LN7111:
                                ; LOE rax r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.584::                      ; Preds .B11.657
                                ; Execution count [1.66e-004]: Infreq
$LN7112:
        mov       rax, 0fffffff00fffffffH                       ;263.5
$LN7113:
        mov       ecx, 256                                      ;263.5
$LN7114:
        and       rax, QWORD PTR [18064+rbp]                    ;263.5
$LN7115:
        lea       rdx, QWORD PTR [18040+rbp]                    ;263.5
$LN7116:
        mov       r8d, 262145                                   ;263.5
$LN7117:
        add       rax, 1073741824                               ;263.5
$LN7118:
        mov       QWORD PTR [24+rdx], rax                       ;263.5
$LN7119:
        call      for_allocate                                  ;263.5
$LN7120:
                                ; LOE rax r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.585::                      ; Preds .B11.584
                                ; Execution count [1.66e-004]: Infreq
$LN7121:
        test      rax, rax                                      ;263.5
$LN7122:
        je        .B11.593      ; Prob 5%                       ;263.5
$LN7123:
                                ; LOE rax r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.586::                      ; Preds .B11.595 .B11.594 .B11.585
                                ; Execution count [1.66e-004]: Infreq
$LN7124:
        test      eax, eax                                      ;264.13
$LN7125:
        je        .B11.589      ; Prob 50%                      ;264.13
$LN7126:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.587::                      ; Preds .B11.586
                                ; Execution count [8.32e-005]: Infreq
$LN7127:
        mov       rax, rsp                                      ;266.7
$LN7128:
        mov       rcx, r12                                      ;266.7
$LN7129:
        mov       edx, 80                                       ;266.7
$LN7130:
        lea       r8, QWORD PTR [__STRLITPACK_125]              ;266.7
$LN7131:
        mov       r9d, 8                                        ;266.7
$LN7132:
        mov       DWORD PTR [464+r12], 99                       ;265.7
$LN7133:
        mov       QWORD PTR [32+rax], 0                         ;266.7
$LN7134:
        call      for_cpystr                                    ;266.7
$LN7135:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.588::                      ; Preds .B11.587
                                ; Execution count [8.32e-005]: Infreq
$LN7136:
        mov       rax, rsp                                      ;267.7
$LN7137:
        add       r12, 80                                       ;267.7
$LN7138:
        mov       rcx, r12                                      ;267.7
$LN7139:
        mov       edx, 128                                      ;267.7
$LN7140:
        lea       r8, QWORD PTR [__STRLITPACK_124]              ;267.7
$LN7141:
        mov       r9d, 27                                       ;267.7
$LN7142:
        mov       QWORD PTR [32+rax], 0                         ;267.7
$LN7143:
        call      for_cpystr                                    ;267.7
$LN7144:
        jmp       .B11.65       ; Prob 100%                     ;267.7
$LN7145:
                                ; LOE xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.589::                      ; Preds .B11.586
                                ; Execution count [8.32e-005]: Infreq
$LN7146:
        mov       rsi, QWORD PTR [18168+rbp]                    ;271.5
$LN7147:
        lea       rcx, QWORD PTR [17576+rbp]                    ;273.10
$LN7148:
        mov       rax, QWORD PTR [18176+rbp]                    ;271.5
$LN7149:
        lea       rdx, QWORD PTR [17580+rbp]                    ;273.10
$LN7150:
        imul      rax, rsi                                      ;271.5
$LN7151:
        mov       rdi, QWORD PTR [18112+rbp]                    ;271.5
$LN7152:
        mov       ebx, 1                                        ;270.5
$LN7153:
        sub       rdi, rax                                      ;271.5
$LN7154:
        mov       DWORD PTR [18032+rbp], ebx                    ;270.5
$LN7155:
        mov       DWORD PTR [rsi+rdi], ebx                      ;271.5
$LN7156:
;       SETFIXEDWIND
        call      SETFIXEDWIND                                  ;273.10
$LN7157:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.590::                      ; Preds .B11.589
                                ; Execution count [8.32e-005]: Infreq
$LN7158:
        mov       rax, QWORD PTR [18096+rbp]                    ;274.5
$LN7159:
        lea       rcx, QWORD PTR [20512+rbp]                    ;274.5
$LN7160:
        mov       rbx, QWORD PTR [18104+rbp]                    ;274.5
$LN7161:
        mov       rdx, 01208384ff00H                            ;274.5
$LN7162:
        imul      rbx, rax                                      ;274.12
$LN7163:
        mov       rsi, QWORD PTR [18040+rbp]                    ;274.5
$LN7164:
        lea       r8, QWORD PTR [__STRLITPACK_162.0.1]          ;274.5
$LN7165:
        add       rsi, rax                                      ;274.12
$LN7166:
        lea       r9, QWORD PTR [15720+rbp]                     ;274.5
$LN7167:
        mov       r10d, DWORD PTR [17576+rbp]                   ;274.5
$LN7168:
        mov       edi, 256                                      ;274.5
$LN7169:
        sub       rsi, rbx                                      ;274.5
$LN7170:
        mov       QWORD PTR [rcx], 0                            ;274.5
$LN7171:
        mov       QWORD PTR [r9], rdi                           ;274.5
$LN7172:
        mov       QWORD PTR [8+r9], rsi                         ;274.5
$LN7173:
        mov       QWORD PTR [16+r9], rdi                        ;274.5
$LN7174:
        mov       DWORD PTR [24+r9], r10d                       ;274.5
$LN7175:
        call      for_write_int_lis                             ;274.5
$LN7176:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.591::                      ; Preds .B11.590
                                ; Execution count [8.32e-005]: Infreq
$LN7177:
        mov       eax, DWORD PTR [17580+rbp]                    ;274.5
$LN7178:
        lea       rcx, QWORD PTR [20512+rbp]                    ;274.5
$LN7179:
        lea       rdx, QWORD PTR [__STRLITPACK_163.0.1]         ;274.5
$LN7180:
        lea       r8, QWORD PTR [1528+rbp]                      ;274.5
$LN7181:
        mov       DWORD PTR [r8], eax                           ;274.5
$LN7182:
        call      for_write_int_lis_xmit                        ;274.5
$LN7183:
                                ; LOE r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.592::                      ; Preds .B11.591
                                ; Execution count [8.32e-005]: Infreq
$LN7184:
        mov       bl, -1                                        ;275.5
$LN7185:
        jmp       .B11.147      ; Prob 100%                     ;275.5
$LN7186:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.593::                      ; Preds .B11.585
                                ; Execution count [8.32e-006]: Infreq
$LN7187:
        mov       rbx, 0fffffff00fffffffH                       ;263.5
$LN7188:
        mov       ecx, 4                                        ;263.5
$LN7189:
        and       rbx, QWORD PTR [18136+rbp]                    ;263.5
$LN7190:
        lea       rdx, QWORD PTR [18112+rbp]                    ;263.5
$LN7191:
        mov       r8d, 262145                                   ;263.5
$LN7192:
        mov       eax, 256                                      ;263.5
$LN7193:
        mov       esi, 1                                        ;263.5
$LN7194:
        add       rbx, 1073741824                               ;263.5
$LN7195:
        mov       QWORD PTR [-48+rdx], 5                        ;263.5
$LN7196:
        mov       QWORD PTR [-64+rdx], rax                      ;263.5
$LN7197:
        mov       QWORD PTR [-40+rdx], rsi                      ;263.5
$LN7198:
        mov       QWORD PTR [-56+rdx], 0                        ;263.5
$LN7199:
        mov       QWORD PTR [-8+rdx], rsi                       ;263.5
$LN7200:
        mov       QWORD PTR [-24+rdx], rsi                      ;263.5
$LN7201:
        mov       QWORD PTR [-16+rdx], rax                      ;263.5
$LN7202:
        mov       QWORD PTR [24+rdx], rbx                       ;263.5
$LN7203:
        call      for_allocate                                  ;263.5
$LN7204:
                                ; LOE rax rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.594::                      ; Preds .B11.593
                                ; Execution count [8.32e-006]: Infreq
$LN7205:
        test      rax, rax                                      ;263.5
$LN7206:
        jne       .B11.586      ; Prob 50%                      ;263.5
$LN7207:
                                ; LOE rax rsi r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.595::                      ; Preds .B11.594
                                ; Execution count [4.16e-006]: Infreq
$LN7208:
        mov       edx, 4                                        ;263.5
$LN7209:
        mov       QWORD PTR [18136+rbp], 5                      ;263.5
$LN7210:
        mov       QWORD PTR [18120+rbp], rdx                    ;263.5
$LN7211:
        mov       QWORD PTR [18144+rbp], rsi                    ;263.5
$LN7212:
        mov       QWORD PTR [18128+rbp], 0                      ;263.5
$LN7213:
        mov       QWORD PTR [18176+rbp], rsi                    ;263.5
$LN7214:
        mov       QWORD PTR [18160+rbp], rsi                    ;263.5
$LN7215:
        mov       QWORD PTR [18168+rbp], rdx                    ;263.5
$LN7216:
        jmp       .B11.586      ; Prob 100%                     ;263.5
$LN7217:
                                ; LOE rax r12 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.596::                      ; Preds .B11.84
                                ; Execution count [3.69e-003]: Infreq
$LN7218:
;       CHECK_BL
        call      CHECK_BL                                      ;172.8
$LN7219:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.597::                      ; Preds .B11.596
                                ; Execution count [3.69e-003]: Infreq
$LN7220:
        cmp       DWORD PTR [464+r12], 0                        ;173.14
$LN7221:
        jne       .B11.65       ; Prob 78%                      ;173.14
$LN7222:
        jmp       .B11.90       ; Prob 100%                     ;173.14
$LN7223:
        ALIGN     16
$LN7224:
                                ; LOE r12 bl xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12
.B11.598::
$LN7225:
; mark_end;
INIT_MET ENDP
$LNINIT_MET$7226:
$LNINIT_MET$7227:
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.unwind.INIT_MET.B1_B597	DD	1695629569
	DD	84793409
	DD	84731961
	DD	84670513
	DD	18678562
	DD	4027320865
	DD	3490242570
	DD	1879359494
	DD	805462019
	DD	20481
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
	ALIGN 004H
.pdata.INIT_MET.B1_B597	DD	imagerel .B11.1
	DD	imagerel .B11.598
	DD	imagerel .unwind.INIT_MET.B1_B597
.pdata	ENDS
_BSS	SEGMENT      'BSS'
.2.44_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_cache_0.27	DD 2 DUP (?)	; pad
.2.44_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_cache_1.29	DD 2 DUP (?)	; pad
_BSS	ENDS
_DATA	SEGMENT      'DATA'
	DD 6 DUP (0H)	; pad
INIT_MET$format_pack.0.1	DB	54
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
	DD 1 DUP (0H)	; pad
.2.44_2_kmpv_INIT_MET$BLK.ERROR_FI_mp_EROUTINE_V$71c_size_0.28	DD	0000001d4H,000000000H
.2.44_2_kmpv_INIT_MET$BLK.MET_FI_mp_ZRUF_V$726_size_1.30	DD	00000012cH,000000000H
.2.44_2_kmpc_loc_struct_pack.12	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.44_2__kmpc_loc_pack.11
.2.44_2__kmpc_loc_pack.11	DB	59
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
	DB	77
	DB	69
	DB	84
	DB	59
	DB	54
	DB	59
	DB	54
	DB	59
	DB	59
	DB 1 DUP ( 0H)	; pad
.2.44_2_kmpc_loc_struct_pack.20	DD	0
	DD	2
	DD	0
	DD	0
	DQ	.2.44_2__kmpc_loc_pack.19
.2.44_2__kmpc_loc_pack.19	DB	59
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
	DB	77
	DB	69
	DB	84
	DB	59
	DB	54
	DB	59
	DB	57
	DB	55
	DB	53
	DB	59
	DB	59
_DATA	ENDS
_RDATA	SEGMENT     READ  'DATA'
__NLITPACK_0.0.1	DD	0
__STRLITPACK_180.0.1	DD	2294544
	DD	1
	DB	1
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_181.0.1	DD	1
	DB	1
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_164.0.1	DD	853048
	DD	1705016
	DD	984120
	DD	3802168
	DD	1
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_165.0.1	DD	66616
	DB	56
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_166.0.1	DD	66616
	DB	56
	DB 3 DUP ( 0H)	; pad
__NLITPACK_2.0.1	DD	1
__STRLITPACK_179.0.1	DD	853048
	DD	1770256
	DD	1
	DB	56
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_167.0.1	DW	1
	DB	1
	DB 1 DUP ( 0H)	; pad
__NLITPACK_1.0.1	DD	10
__STRLITPACK_168.0.1	DD	52037176
	DW	1
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_169.0.1	DD	52037176
	DW	1
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_170.0.1	DD	50923064
	DW	1
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_171.0.1	DD	18482744
	DW	2
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_172.0.1	DD	65818
	DB	2
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_173.0.1	DD	70780472
	DW	1
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_174.0.1	DD	70780472
	DW	1
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_175.0.1	DD	70780472
	DW	1
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_176.0.1	DD	70780472
	DW	1
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_177.0.1	DD	70780472
	DW	1
	DB	26
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_178.0.1	DD	1
	DB	1
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_162.0.1	DD	18482744
	DW	2
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_163.0.1	DD	65818
	DB	2
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  INIT_MET
_DATA	SEGMENT      'DATA'
	DB 3 DUP ( 0H)	; pad
WRITESWIMLOG$format_pack.0.10	DB	54
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
	DD 1 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_220	DD	542396238
	DD	542393683
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DD	538976288
	DB	0
	DD 3 DUP (0H)	; pad
	DB 3 DUP ( 0H)	; pad
_2il0floatpacket.12	DD	080000000H,000000000H,000000000H,000000000H
__STRLITPACK_233	DD	1298424897
	DD	1917285477
	DW	25705
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_232	DD	1701017669
	DD	1852400741
	DD	1970151527
	DD	1919246957
	DD	543584032
	DD	1869376609
	DD	1702125923
	DD	1701650532
	DD	1768300660
	DD	1935961189
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_236.0.10	DD	66616
	DB	1
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_187.0.2	DD	132152
	DB	1
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_185	DD	1230459680
	DD	1701978189
	DD	1953656688
	DD	1696621669
	DD	1919906418
	DD	779054624
	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_188.0.2	DD	65801
	DB	1
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_189.0.2	DD	66616
	DB	1
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_183	DD	1230459680
	DD	1701978189
	DD	1953656688
	DD	1310745701
	DD	1380278095
	DD	5394258
__STRLITPACK_230	DD	1296652115
	DD	1416914279
	DD	1634890341
	DW	28265
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_182	DW	58
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_231	DD	1296652115
	DD	1198810471
	DD	6580594
_2il0floatpacket.6	DD	03c8efa35H
_2il0floatpacket.7	DD	03f03b2a1H
_2il0floatpacket.8	DD	03ee4e26dH
_2il0floatpacket.9	DD	03e8e38e4H
_2il0floatpacket.10	DD	03e9c0ebfH
_2il0floatpacket.11	DD	03f800000H
_2il0floatpacket.13	DD	07b4097ceH
_2il0floatpacket.14	DD	0fb4097ceH
_2il0floatpacket.15	DD	07bc097ceH
__STRLITPACK_212	DD	1129070915
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_204	DD	1667590243
	DD	1818386283
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_203	DD	1868787273
	DD	1667592818
	DD	1769218164
	DD	1931502957
	DD	1768121712
	DD	1633904998
	DD	1852795252
	DD	1919903264
	DD	1598833184
	DD	1162893652
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_202	DD	1953723725
	DD	1702065440
	DD	1634040096
	DD	1869426034
	DD	761820270
	DD	762929508
	DD	1920298856
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_201	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_200	DD	4997715
__STRLITPACK_208	DD	1667590243
	DD	1818386283
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_205	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_211	DD	1667590243
	DD	1818386283
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_210	DD	1953723725
	DD	1952805664
	DD	1330397984
	DD	1126188117
	DD	1380275791
	DD	1919903264
	DD	1970233888
	DD	1918985326
	DD	1634476153
	DD	544367993
	DD	1668047203
	DD	1952541813
	DD	7237481
__STRLITPACK_209	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_196	DD	1667590243
	DD	1818386283
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_195	DD	1953723725
	DD	1952805664
	DD	1329809440
	DD	743723854
	DD	1229211680
	DD	1713394261
	DD	1646293615
	DD	1684960623
	DD	544830049
	DD	1702453612
	DW	114
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_194	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_199	DD	1667590243
	DD	1818386283
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_198	DD	1953723725
	DD	1952805664
	DD	1296652832
	DD	539774537
	DD	1095584090
	DD	1868963928
	DD	1868701810
	DD	1633971829
	DD	1814067570
	DD	1919252833
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_197	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_215	DD	1667590243
	DD	1818386283
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_214	DD	1869504835
	DD	1746958704
	DD	1751607653
	DD	1633886324
	DD	1953459822
	DD	1970365728
	DD	2048945249
	DD	7303781
__STRLITPACK_213	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_218	DD	1667590243
	DD	1818386283
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_217	DD	1179996762
	DD	1937075488
	DD	1700929652
	DD	1701996320
	DD	1919251553
	DD	1634235424
	DD	1702502510
	DD	1998614386
	DD	543716457
	DD	544829025
	DD	1415531586
	DD	4542553
__STRLITPACK_216	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_237	DW	34
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_238	DW	39
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_229	DD	1299473747
	DD	1917285477
	DW	25705
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_228	DD	1635151433
	DD	543451500
	DD	7628141
__STRLITPACK_227	DD	1299473747
	DD	1917285477
	DW	25705
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_226	DD	1869771333
	DD	1818304626
	DD	1633906540
	DD	1735289204
	DD	1952804128
	DD	1769105184
	DW	29540
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_224	DD	1296652115
	DD	1416914279
	DD	1634890341
	DW	28265
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_225	DD	1296652115
	DD	1198810471
	DD	6580594
_2il0floatpacket.22	DD	0bf800000H
_2il0floatpacket.23	DD	03727c5acH
_2il0floatpacket.24	DD	03c23d70aH
__STRLITPACK_223	DD	1162760014
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_222	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_221	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_193	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_192	DD	1635151433
	DD	543451500
	DD	1769107272
	DD	1953394554
	DD	1377856609
	DD	1819243365
	DD	1869182069
	DW	110
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_191	DD	1953723725
	DD	543515168
	DD	544499059
	DD	1142976372
	DD	1430341189
	DD	1713394764
	DD	1730179695
	DD	1684302194
	DD	1763730533
	DD	1953853550
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_190	DD	2032168772
	DD	1998615919
	DD	544501345
	DD	1346978643
	DD	541476437
	DD	1914728308
	DD	1952805733
	DD	544175136
	DD	1095124292
	DD	542395477
	DD	543452769
	DD	1953394531
	DD	1702194793
	DW	63
	DB 2 DUP ( 0H)	; pad
_2il0floatpacket.29	DD	03f000000H
_2il0floatpacket.30	DD	04496c000H
_2il0floatpacket.31	DD	0ff7fffffH
_2il0floatpacket.32	DD	045610000H
__STRLITPACK_161	DD	1953066569
	DD	1768710505
	DD	1735289210
	DD	1952804128
	DD	1869770597
	DD	2036821868
	DD	1918988320
	DD	1952804193
	DD	7565925
__STRLITPACK_160	DD	1684104530
	DD	543649385
	DD	1702126957
	DD	1819243119
	DD	544827247
	DD	1970302569
	DD	1768300660
	DW	25964
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_158	DD	1226848800
	DD	1769236846
	DD	2053729377
	DD	6778473
__STRLITPACK_157	DD	1768710486
	DD	1769234788
	DD	1830840174
	DD	1868919909
	DD	1869377394
	DD	1763735911
	DD	1953853550
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_156	DD	1953066569
	DD	1768710505
	DD	1735289210
	DD	1952804128
	DD	1869770597
	DD	2036821868
	DD	1886284064
	DW	29813
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_155	DD	1885696592
	DD	1852404321
	DD	1701650535
	DD	1919903092
	DD	1735355503
	DW	121
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_154	DD	1329874253
	DW	67
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_153	DD	4608589
__STRLITPACK_152	DD	1145655879
	DD	4474180
__STRLITPACK_151	DD	1230197569
	DW	77
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_150	DD	1346978643
	DD	1598441045
	DD	1414744396
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_149	DD	4608599
__STRLITPACK_148	DD	1329874253
	DD	1229741891
	DW	21587
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_147	DD	843928661
	DW	19532
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_146	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_145	DD	1931505486
	DD	1634103925
	DD	1696621923
	DD	1869635958
	DD	1769234802
	DD	1629515375
	DD	2003790956
	DD	1998611557
	DD	1869116521
	DD	1646294133
	DD	1684960623
	DD	544830049
	DD	1702453612
	DW	114
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_144	DD	544499027
	DD	2037653601
	DD	1864394096
	DD	1868701798
	DD	1633971829
	DD	1814067570
	DD	1919252833
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_143	DD	1701603654
	DW	61
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_142	DD	4997715
__STRLITPACK_141	DD	1380274255
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_140	DD	5456463
__STRLITPACK_139	DD	1329874253
	DW	67
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_138	DD	1129070915
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_137	DD	1179603536
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_136	DD	1162760014
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_135	DD	4605519
__STRLITPACK_134	DD	1162760014
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_133	DD	1431326281
	DW	84
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_132	DD	1162104653
	DW	76
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_131	DD	5456463
__STRLITPACK_130	DD	1380274255
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_129	DD	5456463
__STRLITPACK_128	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_127	DD	1869771333
	DD	1818304626
	DD	1633906540
	DD	1735289204
	DD	1230459680
	DD	1852383309
	DD	7632240
__STRLITPACK_10	DD	7824237
__STRLITPACK_9	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_126	DD	1163413830
	DW	68
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_123	DD	1230197569
	DW	77
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_122	DD	1346978643
	DD	1598441045
	DD	1414744396
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_121	DD	4475983
__STRLITPACK_120	DD	1297239878
	DD	1163154497
	DW	68
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_119	DD	1145128274
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_118	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_117	DD	1869771333
	DD	1886330994
	DD	1852403301
	DD	1701650535
	DD	1919903092
	DD	1735355503
	DD	1768693881
	DD	1763734643
	DD	1953853550
	DD	1818846752
	DW	101
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_114	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_113	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1701650535
	DD	1919903092
	DD	1735355503
	DD	1768693881
	DD	1763734643
	DD	1953853550
	DD	1818846752
	DW	101
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_112	DD	1230197569
	DW	77
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_111	DD	1346978643
	DD	1598441045
	DD	1414744396
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_110	DD	1128874835
	DD	1598899528
	DD	1414744396
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_109	DD	1599358285
	DD	1414744396
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_108	DD	1414744396
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_107	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_106	DD	1635151433
	DD	543451500
	DD	1836216166
	DD	1713402977
	DD	1293972079
	DD	1092645989
	DD	1835627379
	DD	1952541801
	DD	544108393
	DD	1970302569
	DD	1768300660
	DW	25964
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_1	DD	1296652115
	DD	1953066601
	DD	1886680399
	DW	29813
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_3	DD	1296652115
	DD	1633972341
	DD	1699571060
	DW	116
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_2	DD	1296652115
	DD	1299473767
	DD	1852405865
	DD	7620711
__STRLITPACK_4	DD	1296652115
	DD	1299477872
	DD	1852405865
	DD	7620711
__STRLITPACK_5	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_8	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_6	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_7	DD	1296652115
	DD	1633972341
	DD	1699571060
	DW	116
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_13	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_12	DD	1635151433
	DD	543451500
	DD	1651339107
	DD	1952542313
	DD	544108393
	DD	1830839919
	DD	1763734629
	DD	1953853550
	DD	1953068832
	DD	1768300648
	DD	543450488
	DD	1684957559
	DW	115
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_11	DD	2037149263
	DD	1919251488
	DD	1852399986
	DD	1684955424
	DD	544370479
	DD	1953654134
	DD	1818321769
	DD	1769105184
	DD	1634541668
	DD	1700929657
	DD	1701868320
	DD	1768319331
	DW	25701
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_102	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_101	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1699553383
	DD	1933647988
	DD	1768778099
	DD	1769234796
	DD	1763733103
	DD	1953853550
	DD	1818846752
	DW	101
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_100	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_99	DD	1869771333
	DD	1818304626
	DD	1633906540
	DD	1735289204
	DD	1230459680
	DD	1852383309
	DD	7632240
__STRLITPACK_98	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_94	DD	1145655879
	DD	4474180
__STRLITPACK_93	DD	1329874253
	DW	67
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_92	DD	4608589
__STRLITPACK_91	DD	1346978643
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_90	DD	1145655879
	DW	17229
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_89	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_88	DD	4608599
__STRLITPACK_87	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_86	DD	1329874253
	DD	1229741891
	DW	21587
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_85	DD	1329874253
	DD	1397312579
	DW	84
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_84	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_83	DD	4608592
__STRLITPACK_82	DD	4408915
__STRLITPACK_81	DD	5456463
__STRLITPACK_80	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_79	DD	1397900609
	DW	17222
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_0	DW	34
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_78	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_77	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_76	DD	1347568961
	DW	19526
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_75	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_74	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_73	DD	1397707585
	DD	1313426737
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_72	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_67	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_66	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_65	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_62	DD	1414677846
	DD	1145655879
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_61	DD	1196708438
	DD	4475218
__STRLITPACK_60	DD	1230128982
	DW	68
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_59	DD	1146242902
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_58	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_57	DD	5391700
__STRLITPACK_56	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_55	DD	1414743374
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_54	DD	1145197907
	DD	1229016399
	DW	78
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_53	DD	1163413830
	DW	68
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_43	DD	1112498002
	DW	83
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_38	DD	1329738309
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_33	DD	1160926532
	DW	21328
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_32	DD	1230197569
	DD	1346723661
	DW	83
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_27	DD	1598899027
	DD	1230520653
	DD	5391700
__STRLITPACK_26	DD	1230197569
	DD	1095589709
	DD	1163151704
	DW	82
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_21	DD	1230455629
	DD	1179932486
	DW	17217
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_20	DD	1331643213
	DD	1415009090
	DD	4407622
__STRLITPACK_71	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_70	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_69	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_68	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_64	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_63	DW	32
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_45	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_44	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1768300647
	DD	543450488
	DD	1684957559
	DD	1701868320
	DD	1965057125
	DD	1937009006
	DD	1869768224
	DD	1701650541
	DD	1768693876
	DD	1763734643
	DD	1953853550
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_47	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_46	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1768300647
	DD	543450488
	DD	1684957559
	DD	1919509536
	DD	1769235301
	DD	1713401455
	DD	544042866
	DD	544499053
	DD	1953720684
	DD	1886284064
	DW	29813
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_49	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_48	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1768300647
	DD	543450488
	DD	1684957559
	DD	1701868320
	DD	1713398885
	DD	544042866
	DD	544499053
	DD	1953720684
	DD	1886284064
	DW	29813
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_52	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_51	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1701650535
	DD	1768693876
	DD	1763734643
	DD	1953853550
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_50	DD	1702390086
	DD	1852383332
	DD	544503152
	DD	1970365810
	DD	1936028265
	DD	544497952
	DD	1935762796
	DD	1886593140
	DD	543450469
	DD	1768169510
	DD	1952671090
	DD	7237481
__STRLITPACK_40	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_39	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1935745127
	DD	1768778099
	DD	1769234796
	DD	1881173615
	DD	1835102817
	DD	1919251557
	DD	1331647008
	DW	21314
	DB	0
	DB 1 DUP ( 0H)	; pad
__STRLITPACK_35	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_34	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1935745127
	DD	1768778099
	DD	1769234796
	DD	1881173615
	DD	1835102817
	DD	1919251557
	DD	1110590752
	DW	79
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_29	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_28	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1935745127
	DD	1768778099
	DD	1769234796
	DD	1881173615
	DD	1835102817
	DD	1919251557
	DD	844448800
	DD	5460037
__STRLITPACK_23	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_22	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1935745127
	DD	1768778099
	DD	1769234796
	DD	1881173615
	DD	1835102817
	DD	1919251557
	DD	1296257824
	DD	1480674655
	DD	1380275273
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_17	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_16	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1935745127
	DD	1768778099
	DD	1769234796
	DD	1881173615
	DD	1835102817
	DD	1919251557
	DD	1464028448
	DD	1951876681
	DD	6512966
__STRLITPACK_97	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_96	DD	1869771333
	DD	1701978226
	DD	1852400737
	DD	1701650535
	DD	1935745140
	DD	1768778099
	DD	1769234796
	DD	1763733103
	DD	1953853550
	DD	1818846752
	DW	101
	DB 2 DUP ( 0H)	; pad
__STRLITPACK_95	DD	1701734732
	DD	1937075488
	DD	1868767348
	DD	1767994478
	DD	1768300654
	DD	1948280172
	DD	543518841
	DD	543452769
	DD	1701667182
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_15	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_14	DD	1869771333
	DD	1818304626
	DD	1633906540
	DD	1735289204
	DD	1230459680
	DD	1852383309
	DD	7632240
__STRLITPACK_125	DD	1953066601
	DD	1952804191
	DB	0
	DB 3 DUP ( 0H)	; pad
__STRLITPACK_124	DD	1869771333
	DD	1818304626
	DD	1633906540
	DD	1735289204
	DD	1230459680
	DD	1852383309
	DD	7632240
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
EXTRN	MET_FI_mp_METGRID:BYTE
EXTRN	MET_FI_mp_NUMMET:BYTE
EXTRN	MET_FI_mp_PRJCOORD:BYTE
EXTRN	MET_FI_mp_SWIMSTATUS:BYTE
EXTRN	TIME_FI_mp_TEND_HR:BYTE
EXTRN	FLAGS_FI_mp_MULTICOMP:BYTE
EXTRN	FLAGS_FI_mp_LDECAY:BYTE
EXTRN	MET_FI_mp_ZMC:BYTE
EXTRN	MET_FI_mp_NZMC:BYTE
EXTRN	MET_FI_mp_P_EPS:BYTE
EXTRN	MET_FI_mp_AC_EPS:BYTE
EXTRN	MET_FI_mp_ALPHA_MIN:BYTE
EXTRN	MET_FI_mp_ALPHA_MAX:BYTE
EXTRN	MET_FI_mp_MAX_ITER:BYTE
EXTRN	MET_FI_mp_MAX_ITER_AC:BYTE
EXTRN	MET_FI_mp_ZIMAX:BYTE
EXTRN	MET_FI_mp_ZIMIN:BYTE
EXTRN	MET_FI_mp_HDIUR:BYTE
EXTRN	MET_FI_mp_HCONST:BYTE
EXTRN	MET_FI_mp_I_WET:BYTE
EXTRN	MET_FI_mp_PR_RATE:BYTE
EXTRN	MET_FI_mp_PR_TYPE:BYTE
EXTRN	MET_FI_mp_CLOUD_COVER:BYTE
EXTRN	MET_FI_mp_ALBEDO:BYTE
EXTRN	MET_FI_mp_BOWEN:BYTE
EXTRN	MET_FI_mp_ALPHA_CNP:BYTE
EXTRN	MET_FI_mp_H_CNP:BYTE
EXTRN	BASIC_FI_mp_SLTROP:BYTE
EXTRN	BASIC_FI_mp_WWTROP:BYTE
EXTRN	MET_FI_mp_SL_CALM:BYTE
EXTRN	MET_FI_mp_UU_CALM:BYTE
EXTRN	MET_FI_mp_NZBL:BYTE
EXTRN	MET_FI_mp_N_OBS_MAX:BYTE
EXTRN	MET_FI_mp_N_SFC_MAX:BYTE
EXTRN	MET_FI_mp_LFORMAT:BYTE
EXTRN	FILES_FI_mp_FILE_MCW:BYTE
EXTRN	MET_FI_mp_LOUT_2D:BYTE
EXTRN	MET_FI_mp_LOUT_3D:BYTE
EXTRN	METPARAM_FD_mp_MAX1D_MET:BYTE
EXTRN	MET_FI_mp_LOCAL_MET:BYTE
EXTRN	TIME_FI_mp_YEAR_END:BYTE
EXTRN	TIME_FI_mp_MONTH_END:BYTE
EXTRN	FLAGS_FI_mp_RUN_MODE:BYTE
EXTRN	TIME_FI_mp_DAY_END:BYTE
EXTRN	TIME_FI_mp_JUL_START:BYTE
EXTRN	TIME_FI_mp_YEAR_START:BYTE
EXTRN	TIME_FI_mp_MONTH_START:BYTE
EXTRN	TIME_FI_mp_DAY_START:BYTE
EXTRN	TIME_FI_mp_TSTART:BYTE
EXTRN	TIME_FI_mp_TEND_R:BYTE
EXTRN	TIME_FI_mp_TZONE:BYTE
EXTRN	MET_FI_mp_TBIN_MET:BYTE
EXTRN	MET_FI_mp_HMIN:BYTE
EXTRN	GRID_FI_mp_ZMAX:BYTE
EXTRN	FILES_FI_mp_FILE_PRJ:BYTE
EXTRN	FILES_FI_mp_FILE_TER:BYTE
EXTRN	MET_FI_mp_UNIT_SPD:BYTE
EXTRN	MET_FI_mp_FIXED_DIR:BYTE
EXTRN	MET_FI_mp_FIXED_SPD:BYTE
EXTRN	GRID_FI_mp_HRES:BYTE
EXTRN	FILES_FI_mp_LUN_TMP:BYTE
EXTRN	FILES_FI_mp_FILE_MET:BYTE
EXTRN	FILES_FI_mp_FILE_SFC:BYTE
EXTRN	MET_FI_mp_LUA:BYTE
EXTRN	MET_FI_mp_LSFC:BYTE
EXTRN	BASIC_FI_mp_EPSTROP:BYTE
EXTRN	MET_FI_mp_SL_ENSM:BYTE
EXTRN	MET_FI_mp_UU_ENSM:BYTE
EXTRN	MET_FI_mp_ENSM_TYPE:BYTE
EXTRN	MET_FI_mp_BL_TYPE:BYTE
EXTRN	FLAGS_FI_mp_EVAPORATION:BYTE
EXTRN	MET_FI_mp_LBL:BYTE
EXTRN	MET_FI_mp_I_CAT:BYTE
EXTRN	MET_FI_mp_LANDUSE:BYTE
EXTRN	FILES_FI_mp_FILE_LUS:BYTE
EXTRN	GRID_FI_mp_LON0:BYTE
EXTRN	GRID_FI_mp_LAT0:BYTE
EXTRN	GRID_FI_mp_UTM_ZONE:BYTE
EXTRN	GRID_FI_mp_YREF:BYTE
EXTRN	GRID_FI_mp_XREF:BYTE
EXTRN	GRID_FI_mp_YMAX:BYTE
EXTRN	GRID_FI_mp_YMIN:BYTE
EXTRN	GRID_FI_mp_XMAX:BYTE
EXTRN	GRID_FI_mp_XMIN:BYTE
EXTRN	MET_FI_mp_MET_TYPE:BYTE
EXTRN	MET_FI_mp_LMC_UA:BYTE
EXTRN	GRID_FI_mp_LMAP:BYTE
EXTRN	MET_FI_mp_MCTYPEPRJ:BYTE
EXTRN	MET_FI_mp_MCTYPEMET:BYTE
EXTRN	MET_FI_mp_TIMEOUTMET:BYTE
EXTRN	TIME_FI_mp_T:BYTE
EXTRN	TIME_FI_mp_DELT:BYTE
EXTRN	MET_FI_mp_NOUT_MET:BYTE
EXTRN	MET_FI_mp_TOUT_MET:BYTE
EXTRN	MET_FI_mp_LOUT_MC:BYTE
EXTRN	MET_FI_mp_LOUT_MET:BYTE
EXTRN	FLAGS_FI_mp_CREATE:BYTE
EXTRN	PROJECT_FI_mp_NAME:BYTE
EXTRN	FILES_FI_mp_LUN_MSC:BYTE
EXTRN	FILES_FI_mp_FILE_MSC:BYTE
EXTRN	FLAGS_FI_mp_LOCAL:BYTE
EXTRN	FILES_FI_mp_LUN_LOG:BYTE
EXTRN	FLAGS_FI_mp_LYMD:BYTE
EXTRN	FLAGS_FI_mp_LWASH:BYTE
EXTRN	MET_FI_mp_TPRCPN:BYTE
EXTRN	MET_FI_mp_TPRCP:BYTE
EXTRN	MET_FI_mp_SL_HAZ:BYTE
EXTRN	MET_FI_mp_LSV_OPER:BYTE
EXTRN	MET_FI_mp_LENSM:BYTE
EXTRN	BASIC_FI_mp_DXSPLT:BYTE
EXTRN	GRID_FI_mp_MGRD:BYTE
EXTRN	BASIC_FI_mp_DELX2:BYTE
EXTRN	FLAGS_FI_mp_LTER:BYTE
EXTRN	MET_FI_mp_LMETGRIDCOMPLETE:BYTE
EXTRN	MET_FI_mp_NUMMETMAX:BYTE
	COMM COMMONERRORFI:BYTE:468
	COMM MET_PUF:BYTE:300
	COMM $vcomp$critsect$ADDSMTH:BYTE:32
_DATA	ENDS
EXTRN	__kmpc_threadprivate_cached:PROC
EXTRN	__kmpc_end_critical:PROC
EXTRN	__kmpc_critical:PROC
EXTRN	__kmpc_flush:PROC
EXTRN	__kmpc_atomic_fixed4_max:PROC
EXTRN	__kmpc_global_thread_num:PROC
EXTRN	STRIPNULL:PROC
EXTRN	ADDPATH:PROC
EXTRN	SPLITNAME:PROC
EXTRN	for_write_seq_fmt:PROC
EXTRN	SWIMGETLOGMESSAGE:PROC
EXTRN	for_alloc_allocatable:PROC
EXTRN	SWIMNUMFIELDS:PROC
EXTRN	SWIMGETGRID:PROC
EXTRN	SWIMGETTERRAIN:PROC
EXTRN	CLEARMETGRID:PROC
EXTRN	ALLOCMETGRIDARRAYS:PROC
EXTRN	WARNINGMESSAGE:PROC
EXTRN	cosf:PROC
EXTRN	sinf:PROC
EXTRN	for_write_seq_lis_xmit:PROC
EXTRN	for_write_seq_lis:PROC
EXTRN	SWIMREPORTERROR:PROC
EXTRN	for_dealloc_allocatable:PROC
EXTRN	for_inquire:PROC
EXTRN	for_close:PROC
EXTRN	for_write_int_fmt:PROC
EXTRN	for_read_int_lis:PROC
EXTRN	for_f90_index:PROC
EXTRN	for_read_seq_lis:PROC
EXTRN	for_rewind:PROC
EXTRN	for_len_trim:PROC
EXTRN	for_adjustl:PROC
EXTRN	for_read_seq_fmt:PROC
EXTRN	for_open:PROC
EXTRN	for_write_int_lis_xmit:PROC
EXTRN	for_write_int_lis:PROC
EXTRN	for_allocate:PROC
EXTRN	for_check_mult_overflow64:PROC
EXTRN	for_cpstr:PROC
EXTRN	memmove:PROC
EXTRN	f_lanint_val:PROC
EXTRN	for_concat:PROC
EXTRN	for_trim:PROC
EXTRN	for_cpystr:PROC
EXTRN	DATUMS_mp_UTM2LL:PROC
EXTRN	SWIMINITRUN:PROC
EXTRN	SWIMUPDATEMET:PROC
EXTRN	SWIMINITOUTPUT:PROC
EXTRN	SWIMPUTMIXINGHT:PROC
EXTRN	SWIMGETMIXINGHT:PROC
EXTRN	SWIMGETREFLOC:PROC
EXTRN	SWIMEXITRUN:PROC
EXTRN	SWIMOUTPUT:PROC
EXTRN	JULIAN_DAY:PROC
EXTRN	INITLANDUSE:PROC
EXTRN	EXITLANDUSE:PROC
EXTRN	LANDUSECATFROMSTRING:PROC
EXTRN	SWIMCNVCOORD:PROC
EXTRN	WRITE_PROGRESS:PROC
EXTRN	READWEATHER:PROC
EXTRN	SETUTMERROR:PROC
EXTRN	GETLANDUSEERROR:PROC
EXTRN	REPORTFILENAME:PROC
EXTRN	CUPPER:PROC
EXTRN	GET_NEXT_DATA:PROC
EXTRN	REMOVEEXTENSION:PROC
EXTRN	INIT_ERROR:PROC
EXTRN	YEAR_MONTH_DAY:PROC
EXTRN	ENABLESCIPUFFHALT:PROC
EXTRN	_intel_fast_memset:PROC
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
