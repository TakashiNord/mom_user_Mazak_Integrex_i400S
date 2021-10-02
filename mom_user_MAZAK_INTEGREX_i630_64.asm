; ---------------------------------------------------------------------------

_FILETIME	struc ;	(sizeof=0x8, align=0x4,	standard type)
					; XREF:	__security_init_cookier
dwLowDateTime	dd ?
dwHighDateTime	dd ?
_FILETIME	ends

; ---------------------------------------------------------------------------

LARGE_INTEGER	union ;	(sizeof=0x8, align=0x8,	standard type)
					; XREF:	__security_init_cookier
anonymous_0	_LARGE_INTEGER::$837407842DC9087486FDFA5FEB63B74E ?
u		_LARGE_INTEGER::$837407842DC9087486FDFA5FEB63B74E ?
QuadPart	dq ?
LARGE_INTEGER	ends

; ---------------------------------------------------------------------------

_LARGE_INTEGER::$837407842DC9087486FDFA5FEB63B74E struc	; (sizeof=0x8, align=0x4, standard type)
					; XREF:	LARGE_INTEGERr	LARGE_INTEGERr
LowPart		dd ?
HighPart	dd ?
_LARGE_INTEGER::$837407842DC9087486FDFA5FEB63B74E ends

; ---------------------------------------------------------------------------

_CONTEXT	struc ;	(sizeof=0x4D0, align=0x10, standard type)
					; XREF:	.data:ContextRecordr
P1Home		dq ?
P2Home		dq ?
P3Home		dq ?
P4Home		dq ?
P5Home		dq ?
P6Home		dq ?
ContextFlags	dd ?
_MxCsr		dd ?
SegCs		dw ?
SegDs		dw ?
SegEs		dw ?
SegFs		dw ?
SegGs		dw ?
SegSs		dw ?
EFlags		dd ?
Dr0		dq ?
Dr1		dq ?
Dr2		dq ?
Dr3		dq ?
Dr6		dq ?
Dr7		dq ?
_Rax		dq ?
_Rcx		dq ?			; XREF:	__report_gsfailure+BDw
_Rdx		dq ?
_Rbx		dq ?
_Rsp		dq ?			; XREF:	__report_gsfailure+A0w
_Rbp		dq ?
_Rsi		dq ?
_Rdi		dq ?
_R8		dq ?
_R9		dq ?
_R10		dq ?
_R11		dq ?
_R12		dq ?
_R13		dq ?
_R14		dq ?
_R15		dq ?
_Rip		dq ?			; XREF:	__report_gsfailure+19r
					; __report_gsfailure+8Dw ...
anonymous_0	_CONTEXT::$78937A9E49F836C5C6DFA7E378459759 ?
VectorRegister	M128A 26 dup(?)
VectorControl	dq ?
DebugControl	dq ?
LastBranchToRip	dq ?
LastBranchFromRip dq ?
LastExceptionToRip dq ?
LastExceptionFromRip dq	?
_CONTEXT	ends

; ---------------------------------------------------------------------------

_CONTEXT::$78937A9E49F836C5C6DFA7E378459759 union ; (sizeof=0x200, align=0x10, standard	type)
					; XREF:	_CONTEXTr
FltSave		XMM_SAVE_AREA32	?
anonymous_0	_CONTEXT::$78937A9E49F836C5C6DFA7E378459759::$897D11C01F73F7E79A06B0B9ED9B9414 ?
_CONTEXT::$78937A9E49F836C5C6DFA7E378459759 ends

; ---------------------------------------------------------------------------

XMM_SAVE_AREA32	struc ;	(sizeof=0x200, align=0x10, standard type)
					; XREF:	_CONTEXT::$78937A9E49F836C5C6DFA7E378459759r
ControlWord	dw ?
StatusWord	dw ?
TagWord		db ?
Reserved1	db ?
ErrorOpcode	dw ?
ErrorOffset	dd ?
ErrorSelector	dw ?
Reserved2	dw ?
DataOffset	dd ?
DataSelector	dw ?
Reserved3	dw ?
_MxCsr		dd ?
MxCsr_Mask	dd ?
FloatRegisters	M128A 8	dup(?)
XmmRegisters	M128A 16 dup(?)
Reserved4	db 96 dup(?)
XMM_SAVE_AREA32	ends

; ---------------------------------------------------------------------------

M128A		struc ;	(sizeof=0x10, align=0x10, standard type)
					; XREF:	XMM_SAVE_AREA32r
					; XMM_SAVE_AREA32r ...
Low		dq ?
High		dq ?
M128A		ends

; ---------------------------------------------------------------------------

_CONTEXT::$78937A9E49F836C5C6DFA7E378459759::$897D11C01F73F7E79A06B0B9ED9B9414 struc ; (sizeof=0x1A0, align=0x10, standard type)
					; XREF:	_CONTEXT::$78937A9E49F836C5C6DFA7E378459759r
Header		M128A 2	dup(?)
Legacy		M128A 8	dup(?)
_Xmm0		M128A ?
_Xmm1		M128A ?
_Xmm2		M128A ?
_Xmm3		M128A ?
_Xmm4		M128A ?
_Xmm5		M128A ?
_Xmm6		M128A ?
_Xmm7		M128A ?
_Xmm8		M128A ?
_Xmm9		M128A ?
_Xmm10		M128A ?
_Xmm11		M128A ?
_Xmm12		M128A ?
_Xmm13		M128A ?
_Xmm14		M128A ?
_Xmm15		M128A ?
_CONTEXT::$78937A9E49F836C5C6DFA7E378459759::$897D11C01F73F7E79A06B0B9ED9B9414 ends

; ---------------------------------------------------------------------------

_EXCEPTION_POINTERS struc ; (sizeof=0x10, align=0x8, standard type)
					; XREF:	.rdata:ExceptionInfor
ExceptionRecord	dq ?			; offset
ContextRecord	dq ?			; offset
_EXCEPTION_POINTERS ends

; ---------------------------------------------------------------------------

RUNTIME_FUNCTION struc ; (sizeof=0xC)	; XREF:	.rdata:0000000180007B3Cr
					; .rdata:0000000180007B4Cr ...
FunctionStart	dd ?			; offset rva
FunctionEnd	dd ?			; offset rva pastend
UnwindInfo	dd ?			; offset rva
RUNTIME_FUNCTION ends

; ---------------------------------------------------------------------------

UNWIND_INFO	struc ;	(sizeof=0x4)	; XREF:	.rdata:stru_180007A40r
					; .rdata:stru_180007A44r ...
Ver3_Flags	db ?			; base 16
PrologSize	db ?			; base 16
CntUnwindCodes	db ?			; base 16
FrReg_FrRegOff	db ?			; base 16
UNWIND_INFO	ends

; ---------------------------------------------------------------------------

UNWIND_CODE	struc ;	(sizeof=0x2)	; XREF:	.rdata:0000000180007A48r
					; .rdata:0000000180007A4Ar ...
PrologOff	db ?			; base 16
OpCode_OpInfo	db ?			; base 16
UNWIND_CODE	ends

; ---------------------------------------------------------------------------

C_SCOPE_TABLE	struc ;	(sizeof=0x10)	; XREF:	.rdata:0000000180007A84r
					; .rdata:0000000180007A94r ...
Begin		dd ?			; offset rva
End		dd ?			; offset rva pastend
Handler		dd ?			; offset rva
Target		dd ?			; offset rva
C_SCOPE_TABLE	ends

; ---------------------------------------------------------------------------

_msEhRef	struc ;	(sizeof=0x20)
Id		dd ?			; base 16
Cnt1		dd ?			; base 10
Tbl1		dd ?			; offset rva
Cnt2		dd ?			; base 10
Tbl2		dd ?			; offset rva
Cnt3		dd ?			; base 10
Tbl3		dd ?			; offset rva
_unk		dd ?			; base 16
_msEhRef	ends

; ---------------------------------------------------------------------------

_msEhDsc1	struc ;	(sizeof=0x8)
Mode		dd ?			; base 10
Entry		dd ?			; offset rva
_msEhDsc1	ends

; ---------------------------------------------------------------------------

_msEhDsc2	struc ;	(sizeof=0x8)
Entry		dd ?			; offset rva
Mode		dd ?			; base 10
_msEhDsc2	ends


;
;
; Input	MD5   :	9EB90B5BC79F440899B92FA9A256E21C
; Input	CRC32 :	57FF161F

; File Name   :	C:\Users\Tanuki\Desktop\Mazak_Integrex-i400S\mom_user_MAZAK_INTEGREX_i630_64.dll
; Format      :	Portable executable for	AMD64 (PE)
; Imagebase   :	180000000
; Section 1. (virtual address 00001000)
; Virtual size			: 00003272 (  12914.)
; Section size in file		: 00003400 (  13312.)
; Offset to raw	data for section: 00000400
; Flags	60000020: Text Executable Readable
; Alignment	: default
; Exported entry   1. NXSigningResource
; PDB File Name	: D:\VC_new\MyProjects\mom_user_MAZAK_INTEGREX_i630\mom_user_MAZAK_INTEGREX_i630_64\x64\Release\mom_user_MAZAK_INTEGREX_i630_64.pdb
; OS type	  :  MS	Windows
; Application type:  DLL

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use64
		assume cs:_text
		;org 180001000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public NXSigningResource
NXSigningResource proc near		; DATA XREF: .rdata:off_180008438o
		retn	0
NXSigningResource endp

; ---------------------------------------------------------------------------
		align 10h
; Exported entry   2. entry_rtv_mom_cp_part_attr

; =============== S U B	R O U T	I N E =======================================


		public entry_rtv_mom_cp_part_attr
entry_rtv_mom_cp_part_attr proc	near	; DATA XREF: .rdata:off_180008438o
					; .pdata:ExceptionDiro

var_18		= qword	ptr -18h
arg_0		= qword	ptr  8
arg_8		= qword	ptr  10h
arg_18		= qword	ptr  20h

		mov	[rsp+arg_0], rbx
		mov	[rsp+arg_8], rsi
		push	rdi
		sub	rsp, 30h
		mov	rdi, rdx
		mov	rsi, rcx
		mov	[rsp+38h+var_18], 0
		xor	bl, bl
		call	cs:UF_is_initialized
		test	eax, eax
		jnz	short loc_18000104A
		call	cs:UF_initialize
		test	eax, eax
		jnz	loc_1800010D6
		mov	bl, 1

loc_18000104A:				; CODE XREF: entry_rtv_mom_cp_part_attr+28j
		lea	rdx, [rsp+38h+var_18]
		mov	rcx, rsi
		call	cs:UF_MOM_ask_interp_from_param
		lea	rdx, [rsp+38h+arg_18]
		mov	rcx, rsi
		call	cs:UF_MOM_ask_mom
		call	sub_180003730
		cmp	eax, 1
		jz	short loc_1800010AC
		lea	rdx, unk_1800052B0
		lea	rcx, aAsRasx	; "¬ÌËÏ‡ÌËÂ!"
		mov	r8d, 3
		call	cs:UF_UI_display_nonmodal_msg
		mov	rcx, [rsp+38h+arg_18]
		lea	rdx, aMom_abort	; "MOM_abort \"\""
		call	cs:UF_MOM_execute_command
		mov	cs:dword_180009820, 1
		call	cs:UF_terminate

loc_1800010AC:				; CODE XREF: entry_rtv_mom_cp_part_attr+5Ej
		mov	rcx, [rsp+38h+arg_18]
		lea	r8, sub_1800010F0
		lea	rdx, aExtn_rtv_mom_c ; "EXTN_rtv_mom_cp_part_attr"
		call	cs:UF_MOM_extend_xlator
		mov	dword ptr [rdi], 0
		cmp	bl, 1
		jnz	short loc_1800010D6
		call	cs:UF_terminate

loc_1800010D6:				; CODE XREF: entry_rtv_mom_cp_part_attr+32j
					; entry_rtv_mom_cp_part_attr+BEj
		mov	rbx, [rsp+38h+arg_0]
		mov	rsi, [rsp+38h+arg_8]
		add	rsp, 30h
		pop	rdi
		retn
entry_rtv_mom_cp_part_attr endp

; ---------------------------------------------------------------------------
algn_1800010E6:				; DATA XREF: .pdata:ExceptionDiro
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame fpd=2B0h

sub_1800010F0	proc near		; DATA XREF: entry_rtv_mom_cp_part_attr+A1o
					; .rdata:0000000180007B3Co ...

var_360		= dword	ptr -360h
var_35C		= dword	ptr -35Ch
var_348		= dword	ptr -348h
var_344		= dword	ptr -344h
var_340		= qword	ptr -340h
var_338		= qword	ptr -338h
var_A0		= dword	ptr -0A0h
var_9C		= word ptr -9Ch
var_9A		= qword	ptr -9Ah
var_92		= word ptr -92h
var_90		= qword	ptr -90h
var_88		= byte ptr -88h
var_87		= dword	ptr -87h
var_83		= word ptr -83h
var_81		= byte ptr -81h
var_58		= qword	ptr -58h
arg_8		= qword	ptr  18h
arg_10		= qword	ptr  20h

		mov	[rsp-8+arg_8], rbx
		mov	[rsp-8+arg_10],	rdi
		push	rbp
		lea	rbp, [rsp-2B0h]
		sub	rsp, 3B0h
		mov	rax, cs:qword_180009000
		xor	rax, rsp
		mov	[rbp+2B0h+var_58], rax
		mov	eax, cs:dword_1800053EC
		movsd	xmm0, cs:qword_180007978
		movsd	xmm1, cs:qword_180007970
		mov	[rbp+2B0h+var_A0], eax
		movzx	eax, cs:word_1800053F0
		mov	rdi, r9
		movsd	[rsp+3B0h+var_340], xmm0
		movsd	[rsp+3B0h+var_338], xmm1
		mov	[rbp+2B0h+var_9C], ax
		xor	eax, eax
		mov	rbx, rcx
		mov	[rbp+2B0h+var_9A], rax
		mov	[rbp+2B0h+var_92], ax
		mov	rax, cs:qword_1800053F8
		mov	[rbp+2B0h+var_90], rax
		movzx	eax, cs:byte_180005400
		mov	[rsp+3B0h+var_348], 1
		mov	[rbp+2B0h+var_88], al
		xor	eax, eax
		mov	[rsp+3B0h+var_344], 1
		mov	[rsp+3B0h+var_360], 1
		mov	[rsp+3B0h+var_35C], 1
		mov	[rbp+2B0h+var_87], eax
		mov	[rbp+2B0h+var_83], ax
		mov	[rbp+2B0h+var_81], al
		call	sub_180003730
		cmp	eax, 1
		jz	short loc_1800011DD
		lea	rdx, unk_1800052B0
		lea	rcx, aAsRasx	; "¬ÌËÏ‡ÌËÂ!"
		xor	r8d, r8d
		call	cs:UF_UI_display_nonmodal_msg
		jmp	sub_180003590
; ---------------------------------------------------------------------------

loc_1800011DD:				; CODE XREF: sub_1800010F0+CFj
		mov	rcx, [rdi+8]
sub_1800010F0	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================


sub_1800011E1	proc near		; DATA XREF: .rdata:0000000180007B3Co
					; .rdata:0000000180007B4Co ...

arg_18		= qword	ptr  20h
arg_20		= qword	ptr  28h
arg_48		= byte ptr  50h
arg_60		= byte ptr  68h
arg_68		= qword	ptr  70h
arg_70		= qword	ptr  78h
arg_368		= xmmword ptr  370h
arg_378		= xmmword ptr  380h
arg_388		= xmmword ptr  390h
arg_398		= xmmword ptr  3A0h

		movaps	[rsp+arg_398], xmm6
		movaps	[rsp+arg_388], xmm7
		movaps	[rsp+arg_378], xmm8
		movaps	[rsp+arg_368], xmm9
		call	cs:atoi
		dec	eax
		cmp	eax, 0CDh	; switch 206 cases
		ja	loc_180003557	; jumptable 0000000180001231 default case
		lea	rdx, cs:180000000h
		cdqe
		movzx	eax, ds:(byte_180003648	- 180000000h)[rdx+rax]
		mov	ecx, dword ptr ds:(loc_1800035C8 - 180000000h)[rdx+rax*4]
		add	rcx, rdx
		jmp	rcx		; switch jump
; ---------------------------------------------------------------------------

loc_180001233:				; CODE XREF: sub_1800011E1+50j
		lea	r9, qword_1800098C8 ; jumptable	0000000180001231 case 0
		lea	r8, unk_180005404
		lea	rdx, aPost_point ; "post_point"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_1800098D0
		lea	r8, a1		; "1"
		lea	rdx, aPost_point ; "post_point"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_1800098D8
		lea	r8, a2		; "2"
		lea	rdx, aPost_point ; "post_point"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		mov	r8d, 3
		lea	r9, qword_1800098C8
		lea	ecx, [r8-2]
		lea	rdx, qword_1800098C8
		call	cs:UF_CSYS_map_point
		lea	r8, unk_180005404
		lea	rdx, aPost_point_pos ; "post_point_pos"
		movsd	xmm3, cs:qword_1800098C8
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, a1		; "1"
		lea	rdx, aPost_point_pos ; "post_point_pos"
		movsd	xmm3, cs:qword_1800098D0
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, a2		; "2"
		lea	rdx, aPost_point_pos ; "post_point_pos"
		movsd	xmm3, cs:qword_1800098D8
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		jmp	loc_180003557	; jumptable 0000000180001231 default case
; ---------------------------------------------------------------------------

loc_18000130D:				; CODE XREF: sub_1800011E1+50j
		lea	r9, qword_180009838 ; jumptable	0000000180001231 case 1
		lea	r8, unk_180005404
		lea	rdx, aContact_normal ; "contact_normal"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009840
		lea	r8, a1		; "1"
		lea	rdx, aContact_normal ; "contact_normal"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009848
		lea	r8, a2		; "2"
		lea	rdx, aContact_normal ; "contact_normal"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009890
		lea	r8, unk_180005404
		lea	rdx, aTool_axis	; "tool_axis"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009898
		lea	r8, a1		; "1"
		lea	rdx, aTool_axis	; "tool_axis"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_1800098A0
		lea	r8, a2		; "2"
		lea	rdx, aTool_axis	; "tool_axis"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009880
		lea	r8, unk_180005404
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009888
		lea	r8, a1		; "1"
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		movsd	xmm6, cs:qword_180009880
		movsd	xmm8, cs:qword_180009888
		mulsd	xmm6, cs:qword_180007968
		mulsd	xmm8, cs:qword_180007960
		divsd	xmm6, cs:qword_180007958
		divsd	xmm8, cs:qword_180007958
		movapd	xmm0, xmm6	; X
		movsd	cs:qword_1800098E0, xmm6
		movsd	cs:qword_1800098E8, xmm8
		call	cos
		movapd	xmm7, xmm0
		movapd	xmm0, xmm6	; X
		call	sin
		movapd	xmm9, xmm7
		movapd	xmm1, xmm0
		mulsd	xmm0, cs:qword_180009838
		mulsd	xmm1, cs:qword_180009848
		mulsd	xmm7, cs:qword_180009848
		addsd	xmm0, xmm7
		movsd	cs:qword_180009860, xmm0
		movapd	xmm0, xmm8	; X
		mulsd	xmm9, cs:qword_180009838
		subsd	xmm9, xmm1
		call	cos
		movapd	xmm6, xmm0
		movapd	xmm0, xmm8	; X
		call	sin
		movapd	xmm2, xmm6
		lea	r8, qword_1800098F0
		lea	rdx, qword_180009890
		lea	rcx, qword_180009850
		movapd	xmm1, xmm0
		mulsd	xmm6, xmm9
		mulsd	xmm2, cs:qword_180009840
		mulsd	xmm0, cs:qword_180009840
		subsd	xmm6, xmm0
		movsd	cs:qword_180009850, xmm6
		mulsd	xmm1, xmm9
		addsd	xmm2, xmm1
		movsd	cs:qword_180009858, xmm2
		call	cs:UF_VEC3_dot
		movsd	xmm2, cs:qword_1800098F0
		movsd	xmm1, cs:qword_1800098A0
		movsd	xmm5, cs:qword_180009890
		lea	r9, qword_1800098A8
		lea	r8, unk_1800098C0
		lea	rcx, qword_1800098A8
		mulsd	xmm1, xmm2
		mulsd	xmm5, xmm2
		subsd	xmm1, cs:qword_180009860
		movsd	xmm0, cs:qword_180009898
		subsd	xmm5, cs:qword_180009850
		mulsd	xmm0, xmm2
		subsd	xmm0, cs:qword_180009858
		movsd	cs:qword_1800098B8, xmm1
		movsd	xmm1, cs:qword_180007950
		movsd	cs:qword_1800098A8, xmm5
		movsd	cs:qword_1800098B0, xmm0
		call	cs:UF_VEC3_unitize
		lea	r8, unk_180005404
		lea	rdx, aV_vector	; "v_vector"
		movsd	xmm3, cs:qword_1800098A8
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, a1		; "1"
		lea	rdx, aV_vector	; "v_vector"
		movsd	xmm3, cs:qword_1800098B0
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, a2		; "2"
		lea	rdx, aV_vector	; "v_vector"
		movsd	xmm3, cs:qword_1800098B8
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, unk_180005404
		lea	rdx, aContact_normal ; "contact_normal"
		movsd	xmm3, cs:qword_180009850
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, a1		; "1"
		lea	rdx, aContact_normal ; "contact_normal"
		movsd	xmm3, cs:qword_180009858
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, a2		; "2"
		lea	rdx, aContact_normal ; "contact_normal"
		movsd	xmm3, cs:qword_180009860
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, unk_180005404
		lea	rdx, aComp_vector ; "comp_vector"
		movsd	xmm3, cs:qword_180009890
		subsd	xmm3, cs:qword_180009850
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, a1		; "1"
		lea	rdx, aComp_vector ; "comp_vector"
		movsd	xmm3, cs:qword_180009898
		subsd	xmm3, cs:qword_180009858
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, a2		; "2"
		lea	rdx, aComp_vector ; "comp_vector"
		movsd	xmm3, cs:qword_1800098A0
		subsd	xmm3, cs:qword_180009860
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		jmp	loc_180003557	; jumptable 0000000180001231 default case
; ---------------------------------------------------------------------------

loc_1800016B2:				; CODE XREF: sub_1800011E1+50j
		lea	r9, unk_180009058 ; jumptable 0000000180001231 case 2
		lea	r8, unk_180005404
		lea	rdx, aPos	; "pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, unk_180009060
		lea	r8, a1		; "1"
		lea	rdx, aPos	; "pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+0C8h]
		lea	r8, qword_180009830
		xorpd	xmm5, xmm5
		movsd	xmm1, cs:qword_180007950
		lea	rcx, unk_180009058
		movsd	cs:qword_180009068, xmm5
		call	cs:UF_VEC3_unitize
		lea	r9, qword_180009828
		lea	r8, unk_180009040
		lea	rdx, unk_180009058
		lea	rcx, unk_180009028
		call	cs:UF_VEC3_angle_between
		movsd	xmm2, cs:qword_180009828
		mulsd	xmm2, cs:qword_180007958
		divsd	xmm2, cs:qword_180007960
		comisd	xmm2, cs:qword_180007958
		movsd	cs:qword_180009828, xmm2
		jbe	short loc_180001779
		subsd	xmm2, cs:qword_180007948
		movsd	cs:qword_180009828, xmm2

loc_180001779:				; CODE XREF: sub_1800011E1+586j
		lea	rdx, aPoly_ang	; "poly_ang"
		mov	rcx, rbx
		call	cs:UF_MOM_set_double
		lea	rdx, aPoly_dlina ; "poly_dlina"
		mov	rcx, rbx
		movsd	xmm2, cs:qword_180009830
		call	cs:UF_MOM_set_double
		jmp	loc_180003557	; jumptable 0000000180001231 default case
; ---------------------------------------------------------------------------

loc_1800017A6:				; CODE XREF: sub_1800011E1+50j
		call	cs:UF_UI_close_listing_window ;	jumptable 0000000180001231 case	3
		mov	ecx, 1
		call	cs:UF_UI_lock_ug_access
		lea	r11, [rsp+arg_48]
		lea	rax, [rsp+arg_68]
		mov	[rsp+arg_20], r11
		lea	r9, [rsp+arg_60]
		lea	rdx, [rbp+210h]
		lea	rcx, unk_1800054A0
		mov	r8d, 2
		mov	[rsp+arg_18], rax
		call	cs:uc1608
		lea	rdx, aKin_retract_di ; "kin_retract_distance"
		mov	rcx, rbx
		movsd	xmm2, [rsp+arg_68]
		call	cs:UF_MOM_set_double
		lea	rdx, aKin_reengage_d ; "kin_reengage_distance"
		mov	rcx, rbx
		movsd	xmm2, [rsp+arg_70]
		call	cs:UF_MOM_set_double
		mov	ecx, 1
		call	cs:UF_UI_unlock_ug_access
		jmp	loc_180003557	; jumptable 0000000180001231 default case
; ---------------------------------------------------------------------------

loc_180001826:				; CODE XREF: sub_1800011E1+50j
		lea	rcx, unk_180005500 ; jumptable 0000000180001231	case 4
		xor	edx, edx
sub_1800011E1	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================


sub_18000182F	proc near		; DATA XREF: .rdata:0000000180007B5Co
					; .rdata:0000000180007B70o ...

String		= qword	ptr  58h
arg_358		= xmmword ptr  360h

		movaps	[rsp+arg_358], xmm10
		call	cs:uc1601
		lea	r9, [rbp+18h]
		lea	r8, unk_180005404
		lea	rdx, aPrev_mcs_goto ; "prev_mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+20h]
		lea	r8, a1		; "1"
		lea	rdx, aPrev_mcs_goto ; "prev_mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+28h]
		lea	r8, a2		; "2"
		lea	rdx, aPrev_mcs_goto ; "prev_mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+0]
		lea	r8, unk_180005404
		lea	rdx, aPrev_tool_axis ; "prev_tool_axis"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+8]
		lea	r8, a1		; "1"
		lea	rdx, aPrev_tool_axis ; "prev_tool_axis"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+10h]
		lea	r8, a2		; "2"
		lea	rdx, aPrev_tool_axis ; "prev_tool_axis"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r8, [rsp+String]
		lea	rdx, aKin_retract_di ; "kin_retract_distance"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		lea	r8, [rbp-78h]
		lea	rdx, aKin_reengage_d ; "kin_reengage_distance"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		mov	rcx, [rsp+String] ; String
		call	cs:atof
		mov	rcx, [rbp-78h]	; String
		movapd	xmm6, xmm0
		call	cs:atof
		mov	rcx, [rsp+String]
		movapd	xmm7, xmm0
		call	cs:UF_free
		lea	r8, unk_180005404
		movsd	xmm10, qword ptr [rbp+0]
		movsd	xmm9, qword ptr	[rbp+8]
		movsd	xmm8, qword ptr	[rbp+10h]
		lea	rdx, aPos	; "pos"
		mov	rcx, rbx
		movapd	xmm3, xmm10
		movapd	xmm1, xmm9
		movapd	xmm0, xmm8
		mulsd	xmm10, xmm7
		mulsd	xmm9, xmm7
		mulsd	xmm8, xmm7
		addsd	xmm10, qword ptr [rbp+18h]
		addsd	xmm9, qword ptr	[rbp+20h]
		addsd	xmm8, qword ptr	[rbp+28h]
		mulsd	xmm3, xmm6
		mulsd	xmm1, xmm6
		mulsd	xmm0, xmm6
		addsd	xmm3, qword ptr	[rbp+18h]
		addsd	xmm1, qword ptr	[rbp+20h]
		addsd	xmm0, qword ptr	[rbp+28h]
		movsd	qword ptr [rbp-30h], xmm3
		movsd	qword ptr [rbp-28h], xmm1
		movsd	qword ptr [rbp-20h], xmm0
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, a1		; "1"
		lea	rdx, aPos	; "pos"
		mov	rcx, rbx
		movsd	xmm3, qword ptr	[rbp-28h]
		call	cs:UF_MOM_set_assoc_double_array
		movsd	xmm3, qword ptr	[rbp-20h]
		lea	r8, a2		; "2"
		lea	rdx, aPos	; "pos"
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, unk_180005404
		lea	rdx, aPos_reen	; "pos_reen"
		movapd	xmm3, xmm10
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, a1		; "1"
		lea	rdx, aPos_reen	; "pos_reen"
		movapd	xmm3, xmm9
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, a2		; "2"
		lea	rdx, aPos_reen	; "pos_reen"
		movapd	xmm3, xmm8
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		movaps	xmm10, [rsp+arg_358]
		jmp	loc_180003557	; jumptable 0000000180001231 default case
sub_18000182F	endp


; =============== S U B	R O U T	I N E =======================================

; jumptable 0000000180001231 case 5

sub_180001A4E	proc near		; CODE XREF: sub_1800011E1+50j
					; DATA XREF: .pdata:000000018000A024o ...

arg_18		= qword	ptr  20h
arg_20		= qword	ptr  28h
arg_28		= qword	ptr  30h
arg_30		= qword	ptr  38h
String		= qword	ptr  40h
arg_40		= dword	ptr  48h
arg_44		= dword	ptr  4Ch
arg_58		= byte ptr  60h
arg_368		= xmmword ptr  370h
arg_378		= xmmword ptr  380h
arg_388		= xmmword ptr  390h
arg_398		= xmmword ptr  3A0h

		lea	r9, [rbp+30h]
		lea	r8, unk_180005404
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+38h]
		lea	r8, a1		; "1"
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		movsd	xmm0, qword ptr	[rbp+30h]
		mulsd	xmm0, cs:qword_180007960
		divsd	xmm0, cs:qword_180007958 ; X
		call	cos
		lea	r8, Format	; "MOM_output_literal \"\\043600=\\133\\13"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		movapd	xmm3, xmm0
		movq	r9, xmm3
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180001ACC:				; CODE XREF: sub_1800011E1+50j
		lea	r8, [rsp+String] ; jumptable 0000000180001231 case 6
		lea	rdx, aAngle_tool_new ; "angle_tool_new"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		lea	r8, [rsp+arg_58]
		lea	rdx, aInput_zero_int ; "input_zero_int"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		mov	rcx, [rsp+String] ; String
		call	cs:atof
		lea	r8, aMom_output_l_0 ; "MOM_output_literal \"G0 B%.3lf\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		movapd	xmm3, xmm0
		movq	r9, xmm3
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output_l_1 ; "MOM_output_literal \"M107\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180001B58:				; CODE XREF: sub_1800011E1+50j
		lea	r8, [rsp+String] ; jumptable 0000000180001231 case 7
		lea	rdx, aAngle_tool_new ; "angle_tool_new"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		lea	r8, [rsp+arg_58]
		lea	rdx, aInput_zero_int ; "input_zero_int"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		mov	rcx, [rsp+String] ; String
		call	cs:atof
		lea	r8, aMom_output_l_0 ; "MOM_output_literal \"G0 B%.3lf\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		movapd	xmm3, xmm0
		movq	r9, xmm3
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output_l_1 ; "MOM_output_literal \"M107\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aPutsOfile60060 ; "puts $ofile  \"#600=[[#[60000+#3020]+30"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		jmp	loc_180003557	; jumptable 0000000180001231 default case
; ---------------------------------------------------------------------------

loc_180001C06:				; CODE XREF: sub_1800011E1+50j
		mov	cs:dword_180009820, 0 ;	jumptable 0000000180001231 case	8
		jmp	loc_180003557	; jumptable 0000000180001231 default case
; ---------------------------------------------------------------------------

loc_180001C15:				; CODE XREF: sub_1800011E1+50j
		lea	rdx, aMom_output_l_2 ; jumptable 0000000180001231 case 9
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180001C21:				; CODE XREF: sub_1800011E1+50j
		lea	r8, [rsp+String] ; jumptable 0000000180001231 case 17
		lea	rdx, aAngle_tool_new ; "angle_tool_new"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		lea	r8, [rsp+arg_58]
		lea	rdx, aInput_zero_int ; "input_zero_int"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		mov	rcx, [rsp+String] ; String
		call	cs:atof
		lea	rdx, aMom_output_l_3 ; "MOM_output_literal \"G49\""
		mov	rcx, rbx
		movapd	xmm6, xmm0
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output_l_0 ; "MOM_output_literal \"G0 B%.3lf\""
		movapd	xmm3, xmm6
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		movq	r9, xmm3
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output_l_1 ; "MOM_output_literal \"M107\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output_l_4 ; "MOM_output_literal \"G43 P1 H$mom_tool_"...
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180001CD1:				; CODE XREF: sub_1800011E1+50j
		lea	r9, [rbp+30h]	; jumptable 0000000180001231 case 18
		lea	r8, unk_180005404
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+38h]
		lea	r8, a1		; "1"
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+0B0h]
		lea	r8, unk_180005404
		lea	rdx, aPrev_out_angle ; "prev_out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+0B8h]
		lea	r8, a1		; "1"
		lea	rdx, aPrev_out_angle ; "prev_out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp-30h]
		lea	r8, unk_180005404
		lea	rdx, aPos	; "pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp-28h]
		lea	r8, a1		; "1"
		lea	rdx, aPos	; "pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp-20h]
		lea	r8, a2		; "2"
		lea	rdx, aPos	; "pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r8, [rbp-68h]
		lea	rdx, aP_num	; "P_num"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		mov	rcx, [rbp-68h]	; String
		call	cs:atof
		movsd	xmm0, qword ptr	[rbp+30h]
		mulsd	xmm0, cs:qword_180007960
		divsd	xmm0, cs:qword_180007958 ; X
		call	cos
		lea	r8, aMom_output_l_5 ; "MOM_output_literal \"\\043600=\\133\\13"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		movapd	xmm3, xmm0
		movq	r9, xmm3
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180001DFA:				; CODE XREF: sub_1800011E1+50j
		lea	r8, aPb_cmd_output_ ; jumptable	0000000180001231 case 19
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180001E1F:				; CODE XREF: sub_1800011E1+50j
		lea	r8, aMom_output_l_6 ; jumptable	0000000180001231 case 20
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output_l_7 ; "MOM_output_literal \"G18\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output_l_8 ; "MOM_output_literal \"M202\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output_l_9 ; "MOM_output_literal \"G123.1\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180001EBF:				; CODE XREF: sub_1800011E1+50j
		lea	r8, aMom_output__10 ; jumptable	0000000180001231 case 21
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180001EE4:				; CODE XREF: sub_1800011E1+50j
		lea	r8, aMom_output__11 ; jumptable	0000000180001231 case 22
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__12 ; "MOM_output_literal \"\\043702=0\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__13 ; "MOM_output_literal \"\\043751 = \\04391"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180001F5B:				; CODE XREF: sub_1800011E1+50j
		lea	r8, aMom_output_l_6 ; jumptable	0000000180001231 case 23
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180001F80:				; CODE XREF: sub_1800011E1+50j
		lea	r8, aMom_output__14 ; jumptable	0000000180001231 case 24
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__15 ; "MOM_output_literal \"G12.1 (INTERPOLYAZ"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180001FCE:				; CODE XREF: sub_1800011E1+50j
		lea	r8, aMom_output__16 ; jumptable	0000000180001231 case 25
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180001FF3:				; CODE XREF: sub_1800011E1+50j
		lea	r8, aMom_output__17 ; jumptable	0000000180001231 case 26
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180002018:				; CODE XREF: sub_1800011E1+50j
		lea	r8, aMom_output__18 ; jumptable	0000000180001231 case 29
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__19 ; "MOM_output_literal \"G0 G53 X0.\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__20 ; "MOM_output_literal \"G0 G53 Y-125. Z0.\"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_18000208F:				; CODE XREF: sub_1800011E1+50j
		lea	r8, [rbp-70h]	; jumptable 0000000180001231 case 30
		lea	rdx, aC_val	; "C_VAL"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		lea	r8, [rbp-58h]
		lea	rdx, aU_val	; "U_VAL"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		mov	rcx, [rbp-70h]	; String
		call	cs:atof
		mov	rcx, [rbp-58h]	; String
		movapd	xmm7, xmm0
		call	cs:atof
		lea	r8, aMom_output__21 ; "MOM_output_literal \"M00\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		movapd	xmm6, xmm0
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__22 ; "MOM_output_literal \"M202 M302\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__23 ; "MOM_output_literal \"M205 M305\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__24 ; "MOM_output_literal \"M902\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__25 ; "MOM_output_literal \"M300\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__26 ; "MOM_output_literal \"G55	G0 G90 U%.3lf\"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		movapd	xmm3, xmm6
		movq	r9, xmm3
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__27 ; "MOM_output_literal \"M901\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__28 ; "MOM_output_literal \"M200\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__29 ; "MOM_output_literal \"G54	G0 G90 C%.3lf\"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		movapd	xmm3, xmm7
		movq	r9, xmm3
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__30 ; "MOM_output_literal \"M306\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__31 ; "MOM_output_literal \"M542\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__32 ; "MOM_output_literal \"G0 W\\133\\043750\"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__33 ; "MOM_output_literal \"M508\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__34 ; "MOM_output_literal \"G1 G94 W\\133-\\04"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_18000231F:				; CODE XREF: sub_1800011E1+50j
		lea	r8, aMom_output_lit ; jumptable	0000000180001231 case 31
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__35 ; "MOM_output_literal \"\\0435243 =	\\0435"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__36 ; "MOM_output_literal \"\\0435248 =	\\0435"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__37 ; "MOM_output_literal \"G10.9X0\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__38 ; "MOM_output_literal \"\\0435241 =	-490.\"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_1800023E8:				; CODE XREF: sub_1800011E1+50j
		lea	r8, [rbp-60h]	; jumptable 0000000180001231 case 32
		lea	rdx, aAlt_x	; "alt_X"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		lea	r8, [rbp-50h]
		lea	rdx, aAlt_y	; "alt_Y"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		lea	r8, [rbp-80h]
		lea	rdx, aAlt_z	; "alt_Z"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_string
		mov	rcx, [rbp-60h]	; String
		call	cs:atof
		mov	rcx, [rbp-50h]	; String
		movapd	xmm6, xmm0
		call	cs:atof
		mov	rcx, [rbp-80h]	; String
		movapd	xmm8, xmm0
		call	cs:atof
		lea	r8, aMom_output__18 ; "MOM_output_literal \"G10.9X1\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		movapd	xmm7, xmm0
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__39 ; "MOM_output_literal \"G0 G53 X%.3lf\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		movapd	xmm3, xmm6
		movq	r9, xmm3
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__40 ; "MOM_output_literal \"G0 G53 Y%.3lf Z%.3"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		movapd	xmm3, xmm8
		movsd	[rsp+arg_18], xmm7
		movq	r9, xmm3
		mov	edx, 1F4h	; SizeInBytes
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_1800024DF:				; CODE XREF: sub_1800011E1+50j
		lea	rcx, aHttpWww_postpr ; jumptable 0000000180001231 case 199
		mov	edx, 1
		call	cs:uc1601
		lea	r9, [rbp-48h]
		lea	r8, unk_180005404
		lea	rdx, aMcs_goto	; "mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp-40h]
		lea	r8, a1		; "1"
		lea	rdx, aMcs_goto	; "mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp-38h]
		lea	r8, a2		; "2"
		lea	rdx, aMcs_goto	; "mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009880
		lea	r8, unk_180005404
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009888
		lea	r8, a1		; "1"
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	rdx, aSetG43_4_flag0 ; "set G43_4_flag 0"
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output_l_3 ; "MOM_output_literal \"G49\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__41 ; "MOM_output_literal \"G68.2 P1 X%.3lf Y%"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		movsd	xmm0, cs:qword_180009880
		movsd	xmm5, cs:qword_180009888
		movsd	xmm3, qword ptr	[rbp-48h]
		movq	r9, xmm3
		mov	edx, 1F4h	; SizeInBytes
		movsd	xmm1, qword ptr	[rbp-38h]
		movsd	[rsp+arg_30], xmm5
		movsd	[rsp+arg_28], xmm0
		movsd	xmm0, qword ptr	[rbp-40h]
		movsd	[rsp+arg_20], xmm1
		movsd	[rsp+arg_18], xmm0
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__42 ; "MOM_output_literal \"G53.1\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__43 ; "MOM_output_literal \"#600=\\[#\\[60000+"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__44 ; "MOM_output_literal \"G1	G43 G91	Z\\[-#6"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__45 ; "MOM_output_literal \"G90\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__46 ; "MOM_output_literal \"G31 X0 Y0 Z0 F[for"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__47 ; "MOM_output_literal \"#501 = #5061 - #60"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__48 ; "MOM_output_literal \"#502 = #5062\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__49 ; "MOM_output_literal \"#504 = 2.0*SQRT\\["...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		movsd	xmm1, qword ptr	[rbp-40h]
		movsd	xmm0, qword ptr	[rbp-48h]
		mulsd	xmm0, xmm0
		mulsd	xmm1, xmm1
		addsd	xmm0, xmm1	; X
		call	sqrt
		mulsd	xmm0, cs:qword_180007940
		lea	r8, aMom_output__50 ; "MOM_output_literal \"#500 = %.3lf\""
		lea	rcx, [rbp+0E0h]	; DstBuf
		mov	edx, 1F4h	; SizeInBytes
		movapd	xmm3, xmm0
		movq	r9, xmm3
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__51 ; "MOM_output_literal \"DPRNT\\[----------"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__52 ; "MOM_output_literal \"DPRNT\\[MEASURED*D"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__53 ; "MOM_output_literal \"DPRNT\\[NOMINAL*DI"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__54 ; "MOM_output_literal \"#501 = #500-#504\""

loc_18000270F:				; CODE XREF: sub_180001A4E+EEEj
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__55 ; "MOM_output_literal \"DPRNT\\[----------"...

loc_18000271F:				; CODE XREF: sub_180001A4E+10BBj
					; sub_180001A4E+12F8j
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__56 ; "MOM_output_literal \"G69\""
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180002734:				; CODE XREF: sub_1800011E1+50j
		lea	rcx, aHttpWww_postpr ; jumptable 0000000180001231 case 200
		xor	edx, edx
		call	cs:uc1601
		lea	r9, [rbp-48h]
		lea	r8, unk_180005404
		lea	rdx, aMcs_goto	; "mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp-40h]
		lea	r8, a1		; "1"
		lea	rdx, aMcs_goto	; "mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp-38h]
		lea	r8, a2		; "2"
		lea	rdx, aMcs_goto	; "mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009880
		lea	r8, unk_180005404
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009888
		lea	r8, a1		; "1"
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	rdx, aSetG43_4_flag0 ; "set G43_4_flag 0"
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output_l_3 ; "MOM_output_literal \"G49\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__41 ; "MOM_output_literal \"G68.2 P1 X%.3lf Y%"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		movsd	xmm0, cs:qword_180009880
		movsd	xmm5, cs:qword_180009888
		movsd	xmm3, qword ptr	[rbp-48h]
		movq	r9, xmm3
		mov	edx, 1F4h	; SizeInBytes
		movsd	xmm1, qword ptr	[rbp-38h]
		movsd	[rsp+arg_30], xmm5
		movsd	[rsp+arg_28], xmm0
		movsd	xmm0, qword ptr	[rbp-40h]
		movsd	[rsp+arg_20], xmm1
		movsd	[rsp+arg_18], xmm0
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__42 ; "MOM_output_literal \"G53.1\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__43 ; "MOM_output_literal \"#600=\\[#\\[60000+"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__44 ; "MOM_output_literal \"G1	G43 G91	Z\\[-#6"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__45 ; "MOM_output_literal \"G90\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__46 ; "MOM_output_literal \"G31 X0 Y0 Z0 F[for"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__57 ; "MOM_output_literal \"#511 = #5061 - #60"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__58 ; "MOM_output_literal \"#512 = #5062\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__59 ; "MOM_output_literal \"#501 = #511*COS\\["...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__60 ; "MOM_output_literal \"#502 = #511*SIN\\["...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__61 ; "MOM_output_literal \"#503 = #5063 - #60"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__62 ; "MOM_output_literal \"#504 = SQRT\\[\\[#"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__63 ; "MOM_output_literal \"DPRNT\\[----------"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__64 ; "MOM_output_literal \"DPRNT\\[DATA**#301"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__65 ; "MOM_output_literal \"DPRNT\\[MEASURED**"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__66 ; "MOM_output_literal \"DPRNT\\[ERROR*****"...
		jmp	loc_18000270F
; ---------------------------------------------------------------------------

loc_180002941:				; CODE XREF: sub_1800011E1+50j
		lea	rcx, aHttpWww_postpr ; jumptable 0000000180001231 case 201
		xor	edx, edx
		call	cs:uc1601
		lea	r9, [rbp-48h]
		lea	r8, unk_180005404
		lea	rdx, aMcs_goto	; "mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp-40h]
		lea	r8, a1		; "1"
		lea	rdx, aMcs_goto	; "mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp-38h]
		lea	r8, a2		; "2"
		lea	rdx, aMcs_goto	; "mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009880
		lea	r8, unk_180005404
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009888
		lea	r8, a1		; "1"
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	rdx, aSetMeas_pt10Mo ; "set meas_pt1(0)	$mom_mcs_goto(0)"
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aSetMeas_pt11Mo ; "set meas_pt1(1)	$mom_mcs_goto(1)"
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aSetMeas_pt12Mo ; "set meas_pt1(2)	$mom_mcs_goto(2)"
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aSetG43_4_flag0 ; "set G43_4_flag 0"
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output_l_3 ; "MOM_output_literal \"G49\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__41 ; "MOM_output_literal \"G68.2 P1 X%.3lf Y%"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		movsd	xmm0, cs:qword_180009880
		movsd	xmm5, cs:qword_180009888
		movsd	xmm3, qword ptr	[rbp-48h]
		movq	r9, xmm3
		mov	edx, 1F4h	; SizeInBytes
		movsd	xmm1, qword ptr	[rbp-38h]
		movsd	[rsp+arg_30], xmm5
		movsd	[rsp+arg_28], xmm0
		movsd	xmm0, qword ptr	[rbp-40h]
		movsd	[rsp+arg_20], xmm1
		movsd	[rsp+arg_18], xmm0
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__42 ; "MOM_output_literal \"G53.1\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__43 ; "MOM_output_literal \"#600=\\[#\\[60000+"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__44 ; "MOM_output_literal \"G1	G43 G91	Z\\[-#6"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__45 ; "MOM_output_literal \"G90\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__67 ; "MOM_output_literal \"G31 X0 Y0 Z0 F[for"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__47 ; "MOM_output_literal \"#501 = #5061 - #60"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__48 ; "MOM_output_literal \"#502 = #5062\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__61 ; "MOM_output_literal \"#503 = #5063 - #60"...
		jmp	loc_18000271F
; ---------------------------------------------------------------------------

loc_180002B0E:				; CODE XREF: sub_1800011E1+50j
		lea	rcx, aHttpWww_postpr ; jumptable 0000000180001231 case 202
		xor	edx, edx
		call	cs:uc1601
		lea	r9, [rbp-48h]
		lea	r8, unk_180005404
		lea	rdx, aMcs_goto	; "mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp-40h]
		lea	r8, a1		; "1"
		lea	rdx, aMcs_goto	; "mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp-38h]
		lea	r8, a2		; "2"
		lea	rdx, aMcs_goto	; "mcs_goto"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009880
		lea	r8, unk_180005404
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, qword_180009888
		lea	r8, a1		; "1"
		lea	rdx, aOut_angle_pos ; "out_angle_pos"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	rdx, aSetG43_4_flag0 ; "set G43_4_flag 0"
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output_l_3 ; "MOM_output_literal \"G49\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	r8, aMom_output__41 ; "MOM_output_literal \"G68.2 P1 X%.3lf Y%"...
		lea	rcx, [rbp+0E0h]	; DstBuf
		movsd	xmm0, cs:qword_180009880
		movsd	xmm5, cs:qword_180009888
		movsd	xmm3, qword ptr	[rbp-48h]
		movq	r9, xmm3
		mov	edx, 1F4h	; SizeInBytes
		movsd	xmm1, qword ptr	[rbp-38h]
		movsd	[rsp+arg_30], xmm5
		movsd	[rsp+arg_28], xmm0
		movsd	xmm0, qword ptr	[rbp-40h]
		movsd	[rsp+arg_20], xmm1
		movsd	[rsp+arg_18], xmm0
		call	cs:sprintf_s
		lea	rdx, [rbp+0E0h]
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__42 ; "MOM_output_literal \"G53.1\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__43 ; "MOM_output_literal \"#600=\\[#\\[60000+"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__44 ; "MOM_output_literal \"G1	G43 G91	Z\\[-#6"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__45 ; "MOM_output_literal \"G90\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__67 ; "MOM_output_literal \"G31 X0 Y0 Z0 F[for"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__57 ; "MOM_output_literal \"#511 = #5061 - #60"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__58 ; "MOM_output_literal \"#512 = #5062\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__68 ; "MOM_output_literal \"#513 = #5063 - #60"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aIfMom_programm ; "if {$mom_programmed_feed_rate >	0.0} { "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aIfMom_progra_0 ; "if {$mom_programmed_feed_rate <	0.0} { "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__69 ; "MOM_output_literal \"#505 = [format %.3"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__70 ; "MOM_output_literal \"DPRNT\\[----------"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__71 ; "MOM_output_literal \"DPRNT\\[MEASURED*A"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__72 ; "MOM_output_literal \"DPRNT\\[NOMINAL *T"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__73 ; "MOM_output_literal \"DPRNT\\[MEASURED*T"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__74 ; "MOM_output_literal \"#506 = #505-#504\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__75 ; "MOM_output_literal \"DPRNT\\[ERROR*****"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__76 ; "MOM_output_literal \"DPRNT\\[----------"...
		jmp	loc_18000271F
; ---------------------------------------------------------------------------

loc_180002D4B:				; CODE XREF: sub_1800011E1+50j
		lea	rcx, unk_180006B58 ; jumptable 0000000180001231	case 203
		xor	edx, edx
		call	cs:uc1601
		lea	r9, [rbp+60h]
		lea	r8, unk_180005404
		lea	rdx, aMsys_matrix ; "msys_matrix"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+68h]
		lea	r8, a1		; "1"
		lea	rdx, aMsys_matrix ; "msys_matrix"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+70h]
		lea	r8, a2		; "2"
		lea	rdx, aMsys_matrix ; "msys_matrix"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+78h]
		lea	r8, a3		; "3"
		lea	rdx, aMsys_matrix ; "msys_matrix"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+80h]
		lea	r8, a4		; "4"
		lea	rdx, aMsys_matrix ; "msys_matrix"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+88h]
		lea	r8, a5		; "5"
		lea	rdx, aMsys_matrix ; "msys_matrix"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+90h]
		lea	r8, a6		; "6"
		lea	rdx, aMsys_matrix ; "msys_matrix"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+98h]
		lea	r8, a7		; "7"
		lea	rdx, aMsys_matrix ; "msys_matrix"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+0A0h]
		lea	r8, a8		; "8"
		lea	rdx, aMsys_matrix ; "msys_matrix"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+48h]
		lea	r8, unk_180005404
		lea	rdx, aMsys_origin ; "msys_origin"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+50h]
		lea	r8, a1		; "1"
		lea	rdx, aMsys_origin ; "msys_origin"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp+58h]
		lea	r8, a2		; "2"
		lea	rdx, aMsys_origin ; "msys_origin"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	rdx, [rsp+arg_44]
		lea	rcx, [rbp+60h]
		call	cs:UF_CSYS_create_matrix
		mov	edx, [rsp+arg_44]
		lea	r8, [rsp+arg_40]
		lea	rcx, [rbp+48h]
		call	cs:UF_CSYS_create_csys
		mov	ecx, [rsp+arg_40]
		call	cs:UF_CSYS_set_wcs
		lea	r9, [rbp-18h]
		lea	r8, unk_180005404
		lea	rdx, aPost_arc_cente ; "post_arc_center"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp-10h]
		lea	r8, a1		; "1"
		lea	rdx, aPost_arc_cente ; "post_arc_center"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		lea	r9, [rbp-8]
		lea	r8, a2		; "2"
		lea	rdx, aPost_arc_cente ; "post_arc_center"
		mov	rcx, rbx
		call	cs:UF_MOM_ask_assoc_double_array
		mov	r8d, 3
		lea	r9, [rbp-18h]
		lea	ecx, [r8-2]
		lea	rdx, [rbp-18h]
		call	cs:UF_CSYS_map_point
		lea	r8, unk_180005404
		lea	rdx, aPost_arc_cente ; "post_arc_center"
		movsd	xmm3, qword ptr	[rbp-18h]
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, a1		; "1"
		lea	rdx, aPost_arc_cente ; "post_arc_center"
		movsd	xmm3, qword ptr	[rbp-10h]
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		lea	r8, a2		; "2"
		lea	rdx, aPost_arc_cente ; "post_arc_center"
		movsd	xmm3, qword ptr	[rbp-8]
		mov	rcx, rbx
		call	cs:UF_MOM_set_assoc_double_array
		jmp	loc_180003557	; jumptable 0000000180001231 default case
; ---------------------------------------------------------------------------

loc_180002F9B:				; CODE XREF: sub_1800011E1+50j
		lea	rdx, aSetG43_4_flag0 ; jumptable 0000000180001231 case 204
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output_l_3 ; "MOM_output_literal \"G49\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__77 ; "MOM_output_literal \"G68.2 P1 X[format "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__42 ; "MOM_output_literal \"G53.1\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__43 ; "MOM_output_literal \"#600=\\[#\\[60000+"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__44 ; "MOM_output_literal \"G1	G43 G91	Z\\[-#6"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__45 ; "MOM_output_literal \"G90\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[for"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__79 ; "MOM_output_literal \"G31 X[format %.3f "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__80 ; "MOM_output_literal \"#501=#5161\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__81 ; "MOM_output_literal \"#502=#5162\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__82 ; "MOM_output_literal \"#503=#5163\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[for"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__83 ; "MOM_output_literal \"G31 X0.0 Y[format "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__84 ; "MOM_output_literal \"#511=#5161\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__85 ; "MOM_output_literal \"#512=#5162\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__86 ; "MOM_output_literal \"#513=#5163\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[for"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__87 ; "MOM_output_literal \"G31 X[format %.3f "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__88 ; "MOM_output_literal \"#521=#5161\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__89 ; "MOM_output_literal \"#522=#5162\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__90 ; "MOM_output_literal \"#523=#5163\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[for"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__91 ; "MOM_output_literal \"#1=\\[#501-#511\\]"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__92 ; "MOM_output_literal \"#2=\\[#501-#521\\]"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__93 ; "MOM_output_literal \"#3=\\[#511-#521\\]"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__94 ; "MOM_output_literal \"#4=SQRT\\[2.0*#1*#"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__95 ; "MOM_output_literal \"#4=2.0*2.978+2.0*S"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__96 ; "MOM_output_literal \"#514=[format %.4f "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__97 ; "MOM_output_literal \"#515=[format %.4f "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__98 ; "MOM_output_literal \"#516=[format %.4f "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007228 ; "MOM_output_literal \"#5=#3*\\[#1+#2-#3\"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007250 ; "MOM_output_literal \"#6=#2*\\[#1+#3-#2\"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007278 ; "MOM_output_literal \"#7=#1*\\[#2+#3-#1\"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_1800072A0 ; "MOM_output_literal \"#8=#5+#6+#7\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_1800072C8 ; "MOM_output_literal \"#517=\\[#501*#5 + "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007308 ; "MOM_output_literal \"#518=\\[#502*#5 + "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007348 ; "MOM_output_literal \"#519=\\[#503*#5 + "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007388 ; "MOM_output_literal \"#520=SQRT\\[#517*#"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_1800073C0 ; "MOM_output_literal \"DPRNT\\[----------"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007410 ; "MOM_output_literal \"DPRNT\\[MEASURED*D"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007460 ; "MOM_output_literal \"DPRNT\\[ARC\\]\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007490 ; "MOM_output_literal \"DPRNT\\[POINT***#5"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_1800074E0 ; "MOM_output_literal \"DPRNT\\[POINT***#5"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007530 ; "MOM_output_literal \"DPRNT\\[POINT***#5"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007580 ; "MOM_output_literal \"DPRNT\\[XC*#517\\["...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_1800075C0 ; "MOM_output_literal \"DPRNT\\[CENTER*DEV"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007600 ; "MOM_output_literal \"DPRNT\\[********#6"...
		jmp	loc_18000354E
; ---------------------------------------------------------------------------

loc_180003297:				; CODE XREF: sub_1800011E1+50j
		lea	rdx, aSetMom_post_zM ; jumptable 0000000180001231 case 205
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[for"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__79 ; "MOM_output_literal \"G31 X[format %.3f "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__80 ; "MOM_output_literal \"#501=#5161\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__81 ; "MOM_output_literal \"#502=#5162\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__82 ; "MOM_output_literal \"#503=#5163\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[for"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__83 ; "MOM_output_literal \"G31 X0.0 Y[format "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__84 ; "MOM_output_literal \"#511=#5161\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__85 ; "MOM_output_literal \"#512=#5162\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__86 ; "MOM_output_literal \"#513=#5163\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[for"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__87 ; "MOM_output_literal \"G31 X[format %.3f "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__88 ; "MOM_output_literal \"#521=#5161\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__89 ; "MOM_output_literal \"#522=#5162\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__90 ; "MOM_output_literal \"#523=#5163\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__78 ; "MOM_output_literal \"G1	X0.0 Y0.0 Z[for"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__91 ; "MOM_output_literal \"#1=\\[#501-#511\\]"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__92 ; "MOM_output_literal \"#2=\\[#501-#521\\]"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__93 ; "MOM_output_literal \"#3=\\[#511-#521\\]"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__94 ; "MOM_output_literal \"#4=SQRT\\[2.0*#1*#"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__95 ; "MOM_output_literal \"#4=2.0*2.978+2.0*S"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, aMom_output__98 ; "MOM_output_literal \"#516=[format %.4f "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007228 ; "MOM_output_literal \"#5=#3*\\[#1+#2-#3\"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007250 ; "MOM_output_literal \"#6=#2*\\[#1+#3-#2\"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007278 ; "MOM_output_literal \"#7=#1*\\[#2+#3-#1\"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_1800072A0 ; "MOM_output_literal \"#8=#5+#6+#7\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007678 ; "MOM_output_literal \"#527=\\[#501*#5 + "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_1800076B8 ; "MOM_output_literal \"#528=\\[#502*#5 + "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_1800076F8 ; "MOM_output_literal \"#529=\\[#503*#5 + "...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007738 ; "MOM_output_literal \"#520=SQRT\\[#527*#"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007770 ; "MOM_output_literal \"#530=SQRT\\[\\[#52"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_1800077F0 ; "MOM_output_literal \"#531=ACOS\\[\\[#51"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007828 ; "MOM_output_literal \"++++++++++++++++++"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007410 ; "MOM_output_literal \"DPRNT\\[MEASURED*D"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007460 ; "MOM_output_literal \"DPRNT\\[ARC\\]\""
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007490 ; "MOM_output_literal \"DPRNT\\[POINT***#5"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_1800074E0 ; "MOM_output_literal \"DPRNT\\[POINT***#5"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007530 ; "MOM_output_literal \"DPRNT\\[POINT***#5"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007860 ; "MOM_output_literal \"DPRNT\\[XC*#527\\["...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_1800075C0 ; "MOM_output_literal \"DPRNT\\[CENTER*DEV"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_1800078A0 ; "MOM_output_literal \"DPRNT\\[AXIS***DEV"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_180007600 ; "MOM_output_literal \"DPRNT\\[********#6"...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command
		lea	rdx, asc_1800078E0 ; "MOM_output_literal \"++++++++\""

loc_18000354E:				; CODE XREF: sub_180001A4E+79j
					; sub_180001A4E+105j ...
		mov	rcx, rbx
		call	cs:UF_MOM_execute_command

loc_180003557:				; CODE XREF: sub_1800011E1+2Fj
					; sub_1800011E1+50j ...
		lea	r8, [rbp+0E0h]	; jumptable 0000000180001231 default case
		lea	rdx, [rbp+230h]
		mov	rcx, rbx
		call	cs:UF_MOM_set_string
		movaps	xmm9, [rsp+arg_368]
		movaps	xmm8, [rsp+arg_378]
		movaps	xmm7, [rsp+arg_388]
		movaps	xmm6, [rsp+arg_398]
sub_180001A4E	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================


sub_180003590	proc near		; CODE XREF: sub_1800010F0+E8j
					; DATA XREF: .pdata:000000018000A030o ...

arg_3A8		= byte ptr  3B0h

		lea	rcx, aUf_terminate ; "UF_terminate"
		xor	edx, edx
		call	cs:uc1601
		xor	eax, eax
		mov	rcx, [rbp+258h]
		xor	rcx, rsp	; StackCookie
		call	__security_check_cookie
		lea	r11, [rsp+arg_3A8]
		mov	rbx, [r11+18h]
		mov	rdi, [r11+20h]
		mov	rsp, r11
		pop	rbp
		retn
sub_180003590	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
		align 8

loc_1800035C8:				; DATA XREF: sub_1800011E1+46r
					; .pdata:000000018000A03Co ...
		xor	edx, [rdx]	; jump table for switch	statement
; ---------------------------------------------------------------------------
		dw 0
		dd 130Dh
		dq 17A6000016B2h, 1A4E00001826h, 1B5800001ACCh,	1C1500001C06h
		dq 1CD100001C21h, 1E1F00001DFAh, 1EE400001EBFh,	1F8000001F5Bh
		dq 1FF300001FCEh, 208F00002018h, 23E80000231Fh,	2734000024DFh
		dq 2B0E00002941h, 2F9B00002D4Bh, 355700003297h
byte_180003648	db 0, 1, 2, 3, 4, 5, 6,	7, 8, 9, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
					; DATA XREF: sub_1800011E1+3Er
		db 1Fh,	1Fh, 0Ah, 0Bh, 0Ch, 0Dh, 0Eh, 0Fh, 10h,	11h, 12h ; indirect table for switch statement
		db 13h,	1Fh, 1Fh, 14h, 15h, 16h, 17h, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh,	1Fh, 1Fh
		db 1Fh,	1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 18h,	19h, 1Ah
		db 1Bh,	1Ch, 1Dh, 1Eh
algn_180003716:				; DATA XREF: .pdata:000000018000A048o
		align 20h
; Exported entry   3. ufusr_ask_unload

; =============== S U B	R O U T	I N E =======================================


		public ufusr_ask_unload
ufusr_ask_unload proc near		; DATA XREF: .rdata:off_180008438o
		mov	eax, cs:dword_180009820
		neg	eax
		sbb	eax, eax
		add	eax, 2
		retn
ufusr_ask_unload endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_180003730	proc near		; CODE XREF: entry_rtv_mom_cp_part_attr+56p
					; sub_1800010F0+C7p
					; DATA XREF: ...

var_58		= qword	ptr -58h
var_50		= qword	ptr -50h
var_48		= qword	ptr -48h
var_38		= byte ptr -38h
var_30		= byte ptr -30h
var_28		= byte ptr -28h
arg_0		= dword	ptr  8
arg_8		= dword	ptr  10h
arg_10		= byte ptr  18h
arg_18		= qword	ptr  20h

		push	rbx
		push	rsi
		push	rdi
		sub	rsp, 60h
		xor	edi, edi
		mov	esi, 7FFD4240h
		mov	[rsp+78h+arg_18], rdi
		call	cs:UF_ASSEM_ask_work_part
		lea	rcx, [rsp+78h+arg_18]
		mov	ebx, eax
		call	cs:UF_PART_create_history_list
		mov	rdx, [rsp+78h+arg_18]
		mov	ecx, ebx
		call	cs:UF_PART_ask_part_history
		mov	rcx, [rsp+78h+arg_18]
		lea	rdx, [rsp+78h+arg_0]
		call	cs:UF_PART_ask_num_histories
		cmp	[rsp+78h+arg_0], edi
		jle	short loc_1800037FE
		nop	dword ptr [rax+00h]

loc_180003790:				; CODE XREF: sub_180003730+CCj
		mov	rcx, [rsp+78h+arg_18]
		lea	rax, [rsp+78h+arg_8]
		lea	r9, [rsp+78h+var_30]
		mov	[rsp+78h+var_48], rax
		lea	rax, [rsp+78h+arg_10]
		lea	r8, [rsp+78h+var_28]
		mov	[rsp+78h+var_50], rax
		lea	rax, [rsp+78h+var_38]
		mov	edx, edi
		mov	[rsp+78h+var_58], rax
		call	cs:UF_PART_ask_nth_history
		mov	r11d, [rsp+78h+arg_8]
		cmp	r11d, esi
		jle	short loc_1800037E7
		mov	eax, r11d
		sub	eax, esi
		cmp	eax, 2BF20h
		jge	short loc_18000383F

loc_1800037E7:				; CODE XREF: sub_180003730+A9j
		mov	esi, r11d
		cmp	r11d, 58676355h
		jg	short loc_18000381E
		inc	edi
		cmp	edi, [rsp+78h+arg_0]
		jl	short loc_180003790

loc_1800037FE:				; CODE XREF: sub_180003730+5Aj
		mov	rcx, [rsp+78h+arg_18]
		test	rcx, rcx
		jz	short loc_180003811
		call	cs:UF_PART_delete_history_list

loc_180003811:				; CODE XREF: sub_180003730+D9j
		mov	eax, 1
		add	rsp, 60h
		pop	rdi
		pop	rsi
		pop	rbx
		retn
; ---------------------------------------------------------------------------

loc_18000381E:				; CODE XREF: sub_180003730+C1j
		lea	rdx, aInfo@postproce ; "info@postprocessor.ru"
		lea	rcx, aMon31Dec2015 ; "Mon, 31 Dec 2015"
		xor	r8d, r8d
		call	cs:UF_UI_display_nonmodal_msg
		xor	eax, eax
		add	rsp, 60h
		pop	rdi
		pop	rsi
		pop	rbx
		retn
; ---------------------------------------------------------------------------

loc_18000383F:				; CODE XREF: sub_180003730+B5j
		lea	rcx, aMon31Dec2015 ; "Mon, 31 Dec 2015"
		mov	edx, 1
		call	cs:uc1601
		xor	eax, eax
		add	rsp, 60h
		pop	rdi
		pop	rsi
		pop	rbx
		retn
sub_180003730	endp

; ---------------------------------------------------------------------------
byte_18000385B	db 0Bh dup(0CCh)	; DATA XREF: .pdata:000000018000A054o
		align 10h
; [0000001F BYTES: COLLAPSED FUNCTION __security_check_cookie. PRESS KEYPAD CTRL-"+" TO	EXPAND]
algn_18000388F:				; DATA XREF: .pdata:000000018000A060o
		align 10h
; [0000005E BYTES: COLLAPSED FUNCTION pre_c_init. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
algn_1800038EE:				; DATA XREF: .pdata:000000018000A06Co
		align 10h
; [00000259 BYTES: COLLAPSED FUNCTION _CRT_INIT. PRESS KEYPAD CTRL-"+" TO EXPAND]
algn_180003B49:				; DATA XREF: .pdata:000000018000A078o
		align 4
; [00000139 BYTES: COLLAPSED FUNCTION __DllMainCRTStartup. PRESS KEYPAD	CTRL-"+" TO EXPAND]
algn_180003C85:				; DATA XREF: .pdata:000000018000A084o
		align 8
; [0000003D BYTES: COLLAPSED FUNCTION DllEntryPoint. PRESS KEYPAD CTRL-"+" TO EXPAND]
algn_180003CC5:				; DATA XREF: .pdata:000000018000A090o
		align 8
; [0000014A BYTES: COLLAPSED FUNCTION __report_gsfailure. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
algn_180003E12:				; DATA XREF: .pdata:000000018000A09Co
		align 4

; =============== S U B	R O U T	I N E =======================================


; void __cdecl sub_180003E14()
sub_180003E14	proc near		; DATA XREF: pre_c_init+4Ao
		lea	rcx, unk_180009810
		jmp	__clean_type_info_names_internal
sub_180003E14	endp

; [000000B0 BYTES: COLLAPSED FUNCTION _onexit_0. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000017 BYTES: COLLAPSED FUNCTION atexit. PRESS KEYPAD CTRL-"+" TO EXPAND]
algn_180003EE7:				; DATA XREF: .pdata:000000018000A0B4o
		align 8

; =============== S U B	R O U T	I N E =======================================


sub_180003EE8	proc near		; CODE XREF: pre_c_init+39p
					; DATA XREF: .pdata:000000018000A0C0o

arg_0		= qword	ptr  8

		mov	[rsp+arg_0], rbx
		push	rdi
		sub	rsp, 20h
		lea	rbx, unk_180007A28
		lea	rdi, unk_180007A28
		jmp	short loc_180003F10
; ---------------------------------------------------------------------------

loc_180003F02:				; CODE XREF: sub_180003EE8+2Bj
		mov	rax, [rbx]
		test	rax, rax
		jz	short loc_180003F0C
		call	rax

loc_180003F0C:				; CODE XREF: sub_180003EE8+20j
		add	rbx, 8

loc_180003F10:				; CODE XREF: sub_180003EE8+18j
		cmp	rbx, rdi
		jb	short loc_180003F02
		mov	rbx, [rsp+28h+arg_0]
		add	rsp, 20h
		pop	rdi
		retn
sub_180003EE8	endp


; =============== S U B	R O U T	I N E =======================================


; void __cdecl sub_180003F20()
sub_180003F20	proc near		; DATA XREF: pre_c_init+3Eo
					; .pdata:000000018000A0C0o ...

arg_0		= qword	ptr  8

		mov	[rsp+arg_0], rbx
		push	rdi
		sub	rsp, 20h
		lea	rbx, unk_180007A38
		lea	rdi, unk_180007A38
		jmp	short loc_180003F48
; ---------------------------------------------------------------------------

loc_180003F3A:				; CODE XREF: sub_180003F20+2Bj
		mov	rax, [rbx]
		test	rax, rax
		jz	short loc_180003F44
		call	rax

loc_180003F44:				; CODE XREF: sub_180003F20+20j
		add	rbx, 8

loc_180003F48:				; CODE XREF: sub_180003F20+18j
		cmp	rbx, rdi
		jb	short loc_180003F3A
		mov	rbx, [rsp+28h+arg_0]
		add	rsp, 20h
		pop	rdi
		retn
sub_180003F20	endp

; ---------------------------------------------------------------------------
algn_180003F58:				; DATA XREF: .pdata:000000018000A0CCo
		align 20h
; [0000002F BYTES: COLLAPSED FUNCTION _ValidateImageBase. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 10h
; [00000046 BYTES: COLLAPSED FUNCTION _FindPESection. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 20h
; [00000041 BYTES: COLLAPSED FUNCTION _IsNonwritableInCurrentImage. PRESS KEYPAD CTRL-"+" TO EXPAND]
algn_180004021:				; DATA XREF: .pdata:000000018000A0D8o
		align 2
; [00000006 BYTES: COLLAPSED FUNCTION _initterm. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _initterm_e. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _amsg_exit. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION __C_specific_handler. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION __CppXcptFilter. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000023 BYTES: COLLAPSED FUNCTION DllMain. PRESS KEYPAD CTRL-"+" TO	EXPAND]
algn_180004063:				; DATA XREF: .pdata:000000018000A0E4o
		align 4
; [000000B3 BYTES: COLLAPSED FUNCTION __security_init_cookie. PRESS KEYPAD CTRL-"+" TO EXPAND]
algn_180004117:				; DATA XREF: .pdata:000000018000A0F0o
		align 8
; [00000006 BYTES: COLLAPSED FUNCTION __crt_debugger_hook. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION __clean_type_info_names_internal.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _unlock. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION __dllonexit. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _lock. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION RtlVirtualUnwind.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION RtlLookupFunctionEntry. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 4
; [00000063 BYTES: COLLAPSED FUNCTION __GSHandlerCheckCommon. PRESS KEYPAD CTRL-"+" TO EXPAND]
algn_1800041A7:				; DATA XREF: .pdata:000000018000A0FCo
		align 8
; [0000001D BYTES: COLLAPSED FUNCTION __GSHandlerCheck.	PRESS KEYPAD CTRL-"+" TO EXPAND]
algn_1800041C5:				; DATA XREF: .pdata:000000018000A108o
		align 2
; [00000006 BYTES: COLLAPSED FUNCTION sin. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION cos. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION sqrt. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 20h
; [00000024 BYTES: COLLAPSED FUNCTION __DllMainCRTStartup$filt$0. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
algn_180004204:				; DATA XREF: .pdata:000000018000A114o
		align 10h
; [00000019 BYTES: COLLAPSED FUNCTION __DllMainCRTStartup$fin$1. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 2
; [0000001A BYTES: COLLAPSED FUNCTION _onexit$fin$0. PRESS KEYPAD CTRL-"+" TO EXPAND]
algn_180004244:				; DATA XREF: .pdata:000000018000A12Co
		align 10h
; [00000021 BYTES: COLLAPSED FUNCTION unknown_libname_1. PRESS KEYPAD CTRL-"+" TO EXPAND]
algn_180004271:				; DATA XREF: .pdata:000000018000A138o
		align 200h
		dq 180h	dup(?)
_text		ends

; Section 2. (virtual address 00005000)
; Virtual size			: 000034B8 (  13496.)
; Section size in file		: 00003600 (  13824.)
; Offset to raw	data for section: 00003800
; Flags	40000040: Data Readable
; Alignment	: default
;
; Imports from KERNEL32.dll
;
; ===========================================================================

; Segment type:	Externs
; _idata
; void __stdcall RtlCaptureContext(PCONTEXT ContextRecord)
		extrn RtlCaptureContext:qword ;	CODE XREF: __report_gsfailure+13p
					; DATA XREF: __report_gsfailure+13r ...
; PVOID	__stdcall DecodePointer(PVOID Ptr)
		extrn DecodePointer:qword ; CODE XREF: _CRT_INIT+9Bp
					; _CRT_INIT+B4p ...
; void __stdcall Sleep(DWORD dwMilliseconds)
		extrn Sleep:qword	; CODE XREF: _CRT_INIT+5Fp
					; _CRT_INIT+189p
					; DATA XREF: ...
; void __stdcall GetSystemTimeAsFileTime(LPFILETIME lpSystemTimeAsFileTime)
		extrn GetSystemTimeAsFileTime:qword ; CODE XREF: __security_init_cookie+37p
					; DATA XREF: __security_init_cookie+37r
; DWORD	__stdcall GetCurrentProcessId()
		extrn GetCurrentProcessId:qword	; CODE XREF: __security_init_cookie+42p
					; DATA XREF: __security_init_cookie+42r
; DWORD	__stdcall GetCurrentThreadId()
		extrn GetCurrentThreadId:qword ; CODE XREF: __security_init_cookie+4Ep
					; DATA XREF: __security_init_cookie+4Er
; DWORD	__stdcall GetTickCount()
		extrn GetTickCount:qword ; CODE	XREF: __security_init_cookie+5Ap
					; DATA XREF: __security_init_cookie+5Ar
; BOOL __stdcall QueryPerformanceCounter(LARGE_INTEGER *lpPerformanceCount)
		extrn QueryPerformanceCounter:qword ; CODE XREF: __security_init_cookie+6Bp
					; DATA XREF: __security_init_cookie+6Br
; BOOL __stdcall DisableThreadLibraryCalls(HMODULE hLibModule)
		extrn DisableThreadLibraryCalls:qword ;	CODE XREF: DllMain+13p
					; DATA XREF: DllMain+13r
; PVOID	__stdcall EncodePointer(PVOID Ptr)
		extrn EncodePointer:qword ; CODE XREF: pre_c_init+17p
					; _onexit_0+5Ep ...
; PRUNTIME_FUNCTION __stdcall RtlLookupFunctionEntry(DWORD64 ControlPc,	PDWORD64 ImageBase, PUNWIND_HISTORY_TABLE HistoryTable)
		extrn __imp_RtlLookupFunctionEntry:qword
					; DATA XREF: RtlLookupFunctionEntryr
; PEXCEPTION_ROUTINE __stdcall RtlVirtualUnwind(DWORD HandlerType, DWORD64 ImageBase, DWORD64 ControlPc, PRUNTIME_FUNCTION FunctionEntry, PCONTEXT ContextRecord, PVOID	*HandlerData, PDWORD64 EstablisherFrame, PKNONVOLATILE_CONTEXT_POINTERS	ContextPointers)
		extrn __imp_RtlVirtualUnwind:qword ; DATA XREF:	RtlVirtualUnwindr
; BOOL __stdcall IsDebuggerPresent()
		extrn IsDebuggerPresent:qword ;	CODE XREF: __report_gsfailure+F0p
					; DATA XREF: __report_gsfailure+F0r
; LPTOP_LEVEL_EXCEPTION_FILTER __stdcall SetUnhandledExceptionFilter(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter)
		extrn SetUnhandledExceptionFilter:qword	; CODE XREF: __report_gsfailure+108p
					; DATA XREF: __report_gsfailure+108r
; LONG __stdcall UnhandledExceptionFilter(struct _EXCEPTION_POINTERS *ExceptionInfo)
		extrn UnhandledExceptionFilter:qword ; CODE XREF: __report_gsfailure+115p
					; DATA XREF: __report_gsfailure+115r
; HANDLE __stdcall GetCurrentProcess()
		extrn GetCurrentProcess:qword ;	CODE XREF: __report_gsfailure:loc_180003DF6p
					; DATA XREF: __report_gsfailure:loc_180003DF6r
; BOOL __stdcall TerminateProcess(HANDLE hProcess, UINT	uExitCode)
		extrn TerminateProcess:qword ; CODE XREF: __report_gsfailure+13Cp
					; DATA XREF: __report_gsfailure+13Cr

;
; Imports from MSVCR100.dll
;
; double __cdecl cos(double X)
		extrn __imp_cos:qword	; DATA XREF: cosr
					; .rdata:0000000180007C08o
; double __cdecl atof(const char *String)
		extrn atof:qword	; CODE XREF: sub_18000182F+DFp
					; sub_18000182F+EDp ...
; double __cdecl sin(double X)
		extrn __imp_sin:qword	; DATA XREF: sinr
; _onexit_t __cdecl onexit(_onexit_t Func)
		extrn _onexit:qword	; CODE XREF: _onexit_0+24p
					; DATA XREF: _onexit_0+24r
		extrn __imp__lock:qword	; DATA XREF: _lockr
		extrn __imp___dllonexit:qword ;	DATA XREF: __dllonexitr
		extrn __imp__unlock:qword ; DATA XREF: _unlockr
		extrn __imp___clean_type_info_names_internal:qword
					; DATA XREF: __clean_type_info_names_internalr
		extrn __imp___crt_debugger_hook:qword ;	DATA XREF: __crt_debugger_hookr
		extrn __imp___CppXcptFilter:qword ; DATA XREF: __CppXcptFilterr
		extrn __imp___C_specific_handler:qword ; DATA XREF: __C_specific_handlerr
		extrn __imp__amsg_exit:qword ; DATA XREF: _amsg_exitr
		extrn _encoded_null:qword ; CODE XREF: _CRT_INIT+D2p
					; _CRT_INIT+EBp ...
; void __cdecl free(void *Memory)
		extrn free:qword	; CODE XREF: _CRT_INIT+129p
					; DATA XREF: _CRT_INIT+129r
		extrn __imp__initterm_e:qword ;	DATA XREF: _initterm_er
; int sprintf_s(char *DstBuf, size_t SizeInBytes, const	char *Format, ...)
		extrn sprintf_s:qword	; CODE XREF: sub_180001A4E+6Cp
					; sub_180001A4E+CFp ...
; int __cdecl atoi(const char *Str)
		extrn atoi:qword	; CODE XREF: sub_1800011E1+22p
					; DATA XREF: sub_1800011E1+22r
; double __cdecl sqrt(double X)
		extrn __imp_sqrt:qword	; DATA XREF: sqrtr
		extrn _malloc_crt:qword	; CODE XREF: pre_c_init+Bp
					; DATA XREF: pre_c_init+Br
		extrn __imp__initterm:qword ; DATA XREF: _inittermr

;
; Imports from libufun.dll
;
		extrn UF_PART_ask_nth_history:qword ; CODE XREF: sub_180003730+98p
					; DATA XREF: sub_180003730+98r	...
		extrn UF_PART_create_history_list:qword	; CODE XREF: sub_180003730+27p
					; DATA XREF: sub_180003730+27r
		extrn UF_MOM_extend_xlator:qword ; CODE	XREF: entry_rtv_mom_cp_part_attr+AFp
					; DATA XREF: entry_rtv_mom_cp_part_attr+AFr
		extrn UF_CSYS_create_csys:qword	; CODE XREF: sub_180001A4E+147Bp
					; DATA XREF: sub_180001A4E+147Br
		extrn UF_terminate:qword ; CODE	XREF: entry_rtv_mom_cp_part_attr+96p
					; entry_rtv_mom_cp_part_attr+C0p
					; DATA XREF: ...
		extrn UF_MOM_ask_mom:qword ; CODE XREF:	entry_rtv_mom_cp_part_attr+50p
					; DATA XREF: entry_rtv_mom_cp_part_attr+50r
		extrn UF_CSYS_map_point:qword ;	CODE XREF: sub_1800011E1+C4p
					; sub_180001A4E+14EEp
					; DATA XREF: ...
		extrn UF_MOM_set_double:qword ;	CODE XREF: sub_1800011E1+5A2p
					; sub_1800011E1+5BAp ...
		extrn UF_PART_delete_history_list:qword	; CODE XREF: sub_180003730+DBp
					; DATA XREF: sub_180003730+DBr
		extrn UF_MOM_execute_command:qword
					; CODE XREF: entry_rtv_mom_cp_part_attr+86p
					; sub_180001A4E+DFp ...
		extrn UF_VEC3_unitize:qword ; CODE XREF: sub_1800011E1+397p
					; sub_1800011E1+536p
					; DATA XREF: ...
		extrn UF_MOM_set_assoc_double_array:qword ; CODE XREF: sub_1800011E1+E3p
					; sub_1800011E1+102p ...
		extrn UF_MOM_set_string:qword ;	CODE XREF: sub_180001A4E+1B1Ap
					; DATA XREF: sub_180001A4E+1B1Ar
		extrn UF_CSYS_set_wcs:qword ; CODE XREF: sub_180001A4E+1485p
					; DATA XREF: sub_180001A4E+1485r
		extrn UF_PART_ask_num_histories:qword ;	CODE XREF: sub_180003730+4Dp
					; DATA XREF: sub_180003730+4Dr
		extrn UF_MOM_ask_string:qword ;	CODE XREF: sub_18000182F+C0p
					; sub_18000182F+D4p ...
		extrn UF_VEC3_angle_between:qword ; CODE XREF: sub_1800011E1+558p
					; DATA XREF: sub_1800011E1+558r
		extrn UF_initialize:qword ; CODE XREF: entry_rtv_mom_cp_part_attr+2Ap
					; DATA XREF: entry_rtv_mom_cp_part_attr+2Ar
		extrn UF_is_initialized:qword ;	CODE XREF: entry_rtv_mom_cp_part_attr+20p
					; DATA XREF: entry_rtv_mom_cp_part_attr+20r
		extrn UF_ASSEM_ask_work_part:qword ; CODE XREF:	sub_180003730+17p
					; DATA XREF: sub_180003730+17r
		extrn UF_UI_close_listing_window:qword
					; CODE XREF: sub_1800011E1:loc_1800017A6p
					; DATA XREF: sub_1800011E1:loc_1800017A6r
		extrn UF_VEC3_dot:qword	; CODE XREF: sub_1800011E1+318p
					; DATA XREF: sub_1800011E1+318r
		extrn UF_MOM_ask_assoc_double_array:qword ; CODE XREF: sub_1800011E1+6Ap
					; sub_1800011E1+88p ...
		extrn UF_CSYS_create_matrix:qword ; CODE XREF: sub_180001A4E+1468p
					; DATA XREF: sub_180001A4E+1468r
		extrn UF_PART_ask_part_history:qword ; CODE XREF: sub_180003730+37p
					; DATA XREF: sub_180003730+37r
		extrn UF_MOM_ask_interp_from_param:qword
					; CODE XREF: entry_rtv_mom_cp_part_attr+42p
					; DATA XREF: entry_rtv_mom_cp_part_attr+42r
		extrn UF_free:qword	; CODE XREF: sub_18000182F+FCp
					; DATA XREF: sub_18000182F+FCr

;
; Imports from libugopenint.dll
;
		extrn uc1608:qword	; CODE XREF: sub_1800011E1+603p
					; DATA XREF: sub_1800011E1+603r ...
		extrn UF_UI_display_nonmodal_msg:qword
					; CODE XREF: entry_rtv_mom_cp_part_attr+74p
					; sub_1800010F0+E2p ...
		extrn uc1601:qword	; CODE XREF: sub_18000182F+9p
					; sub_180001A4E+A9Dp ...
		extrn UF_UI_unlock_ug_access:qword ; CODE XREF:	sub_1800011E1+63Ap
					; DATA XREF: sub_1800011E1+63Ar
		extrn UF_UI_lock_ug_access:qword ; CODE	XREF: sub_1800011E1+5D0p
					; DATA XREF: sub_1800011E1+5D0r


; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	para public 'DATA' use64
		assume cs:_rdata
		;org 180005248h
unk_180005248	db    0			; DATA XREF: _CRT_INIT+1E1o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_180005250	db    0			; DATA XREF: _CRT_INIT+1DAo
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_180005258	db    0			; DATA XREF: _CRT_INIT+1C0o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		dq offset pre_c_init
unk_180005268	db    0			; DATA XREF: _CRT_INIT:loc_180003AA9o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db 0CDh	; Õ
		db  65h	; e
		db  45h	; E
		db  58h	; X
		db    0
		db    0
		db    0
		db    0
		db    2
		db    0
		db    0
		db    0
		db  9Ah	; ö
		db    0
		db    0
		db    0
		db  80h	; Ä
		db  79h	; y
		db    0
		db    0
		db  80h	; Ä
		db  61h	; a
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
qword_180005290	dq 0			; DATA XREF: __DllMainCRTStartup:loc_180003B97r
					; __DllMainCRTStartup+B8r ...
; struct _EXCEPTION_POINTERS ExceptionInfo
ExceptionInfo	_EXCEPTION_POINTERS <offset dword_1800092A0, offset ContextRecord>
					; DATA XREF: __report_gsfailure+10Eo
		align 10h
unk_1800052B0	db 0CDh	; Õ		; DATA XREF: entry_rtv_mom_cp_part_attr+60o
					; sub_1800010F0+D1o ...
		db 0C0h	; ¿
		db  20h
		db 0DDh	; ›
		db 0D2h	; “
		db 0CEh	; Œ
		db 0CCh	; Ã
		db  20h
		db 0D0h	; –
		db 0C0h	; ¿
		db 0C1h	; ¡
		db 0CEh	; Œ
		db 0D7h	; ◊
		db 0C5h	; ≈
		db 0CCh	; Ã
		db  20h
		db 0CCh	; Ã
		db 0C5h	; ≈
		db 0D1h	; —
		db 0D2h	; “
		db 0C5h	; ≈
		db  20h
		db 0CFh	; œ
		db 0CEh	; Œ
		db 0D1h	; —
		db 0D2h	; “
		db 0CFh	; œ
		db 0D0h	; –
		db 0CEh	; Œ
		db 0D6h	; ÷
		db 0C5h	; ≈
		db 0D1h	; —
		db 0D1h	; —
		db 0CEh	; Œ
		db 0D0h	; –
		db  20h
		db 0CDh	; Õ
		db 0C5h	; ≈
		db  20h
		db 0CCh	; Ã
		db 0CEh	; Œ
		db 0C6h	; ∆
		db 0C5h	; ≈
		db 0D2h	; “
		db  20h
		db 0C1h	; ¡
		db 0DBh	; €
		db 0D2h	; “
		db 0DCh	; ‹
		db  20h
		db 0C7h	; «
		db 0C0h	; ¿
		db 0CFh	; œ
		db 0D3h	; ”
		db 0D9h	; Ÿ
		db 0C5h	; ≈
		db 0CDh	; Õ
		db  0Ah
		db  0Ah
		db  0Ah
		db 0CCh	; Ã
		db 0EEh	; Ó
		db 0F1h	; Ò
		db 0EAh	; Í
		db 0E2h	; ‚
		db 0E0h	; ‡
		db  2Ch	; ,
		db  20h
		db  28h	; (
		db 0C7h	; «
		db 0C0h	; ¿
		db 0CEh	; Œ
		db  20h
		db  22h	; "
		db 0CFh	; œ
		db 0EEh	; Ó
		db 0F1h	; Ò
		db 0F2h	; Ú
		db 0EFh	; Ô
		db 0F0h	; 
		db 0EEh	; Ó
		db 0F6h	; ˆ
		db 0E5h	; Â
		db 0F1h	; Ò
		db 0F1h	; Ò
		db 0EEh	; Ó
		db 0F0h	; 
		db  22h	; "
		db  29h	; )
		db  2Ch	; ,
		db  0Ah
		db 0D2h	; “
		db 0E5h	; Â
		db 0EBh	; Î
		db 0E5h	; Â
		db 0F4h	; Ù
		db 0EEh	; Ó
		db 0EDh	; Ì
		db  3Ah	; :
		db  20h
		db  2Bh	; +
		db  37h	; 7
		db  20h
		db  28h	; (
		db  34h	; 4
		db  39h	; 9
		db  39h	; 9
		db  29h	; )
		db  20h
		db  37h	; 7
		db  30h	; 0
		db  32h	; 2
		db  2Dh	; -
		db  38h	; 8
		db  33h	; 3
		db  2Dh	; -
		db  34h	; 4
		db  39h	; 9
		db  20h
		db  0Ah
		db  65h	; e
		db  2Dh	; -
		db  6Dh	; m
		db  61h	; a
		db  69h	; i
		db  6Ch	; l
		db  3Ah	; :
		db  20h
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db  61h	; a
		db  72h	; r
		db  65h	; e
		db  76h	; v
		db  40h	; @
		db  70h	; p
		db  6Fh	; o
		db  73h	; s
		db  74h	; t
		db  70h	; p
		db  72h	; r
		db  6Fh	; o
		db  63h	; c
		db  65h	; e
		db  73h	; s
		db  73h	; s
		db  6Fh	; o
		db  72h	; r
		db  2Eh	; .
		db  72h	; r
		db  75h	; u
		db  2Ch	; ,
		db  20h
		db  63h	; c
		db  68h	; h
		db  69h	; i
		db  67h	; g
		db  69h	; i
		db  73h	; s
		db  68h	; h
		db  65h	; e
		db  76h	; v
		db  40h	; @
		db  70h	; p
		db  6Fh	; o
		db  73h	; s
		db  74h	; t
		db  70h	; p
		db  72h	; r
		db  6Fh	; o
		db  63h	; c
		db  65h	; e
		db  73h	; s
		db  73h	; s
		db  6Fh	; o
		db  72h	; r
		db  2Eh	; .
		db  72h	; r
		db  75h	; u
		db  20h
		db  0Ah
		db  48h	; H
		db  54h	; T
		db  54h	; T
		db  50h	; P
		db  3Ah	; :
		db  20h
		db  68h	; h
		db  74h	; t
		db  74h	; t
		db  70h	; p
		db  3Ah	; :
		db  2Fh	; /
		db  2Fh	; /
		db  77h	; w
		db  77h	; w
		db  77h	; w
		db  2Eh	; .
		db  70h	; p
		db  6Fh	; o
		db  73h	; s
		db  74h	; t
		db  70h	; p
		db  72h	; r
		db  6Fh	; o
		db  63h	; c
		db  65h	; e
		db  73h	; s
		db  73h	; s
		db  6Fh	; o
		db  72h	; r
		db  2Eh	; .
		db  72h	; r
		db  75h	; u
		db  0Ah
		db  0Ah
		db  28h	; (
		db  63h	; c
		db  29h	; )
		db  20h
		db  32h	; 2
		db  30h	; 0
		db  31h	; 1
		db  32h	; 2
		db  2Eh	; .
		db  0Ah
		db  0Ah
		db  0Ah
		db 0CFh	; œ
		db 0EEh	; Ó
		db 0F1h	; Ò
		db 0EBh	; Î
		db 0E5h	; Â
		db 0E4h	; ‰
		db 0EDh	; Ì
		db 0FFh
		db 0FFh
		db  20h
		db 0F0h	; 
		db 0E5h	; Â
		db 0E4h	; ‰
		db 0E0h	; ‡
		db 0EAh	; Í
		db 0F6h	; ˆ
		db 0E8h	; Ë
		db 0FFh
		db  20h
		db  32h	; 2
		db  30h	; 0
		db  31h	; 1
		db  35h	; 5
		db    0
		db    0
		db    0
		db    0
aAsRasx		db '¬ÌËÏ‡ÌËÂ!',0        ; DATA XREF: entry_rtv_mom_cp_part_attr+67o
					; sub_1800010F0+D8o
		align 20h
aMom_abort	db 'MOM_abort ""',0     ; DATA XREF: entry_rtv_mom_cp_part_attr+7Fo
		align 10h
aExtn_rtv_mom_c	db 'EXTN_rtv_mom_cp_part_attr',0 ; DATA XREF: entry_rtv_mom_cp_part_attr+A8o
		align 4
dword_1800053EC	dd 0EEE2F2CEh		; DATA XREF: sub_1800010F0+2Br
word_1800053F0	dw 0E4h			; DATA XREF: sub_1800010F0+47r
		align 8
qword_1800053F8	dq 65E8EDE0E7E5F0C2h	; DATA XREF: sub_1800010F0+77r
byte_180005400	db 0			; DATA XREF: sub_1800010F0+85r
		align 4
unk_180005404	db  30h	; 0		; DATA XREF: sub_1800011E1+59o
					; sub_1800011E1+CAo ...
		db    0
		db    0
		db    0
aPost_point	db 'post_point',0       ; DATA XREF: sub_1800011E1+60o
					; sub_1800011E1+7Eo ...
		align 4
a1		db '1',0                ; DATA XREF: sub_1800011E1+77o
					; sub_1800011E1+E9o ...
		align 8
a2		db '2',0                ; DATA XREF: sub_1800011E1+95o
					; sub_1800011E1+108o ...
		align 20h
aPost_point_pos	db 'post_point_pos',0   ; DATA XREF: sub_1800011E1+D1o
					; sub_1800011E1+F0o ...
		align 10h
aContact_normal	db 'contact_normal',0   ; DATA XREF: sub_1800011E1+13Ao
					; sub_1800011E1+158o ...
		align 20h
aTool_axis	db 'tool_axis',0        ; DATA XREF: sub_1800011E1+194o
					; sub_1800011E1+1B2o ...
		align 10h
aOut_angle_pos	db 'out_angle_pos',0    ; DATA XREF: sub_1800011E1+1EEo
					; sub_1800011E1+20Co ...
		align 20h
aV_vector	db 'v_vector',0         ; DATA XREF: sub_1800011E1+3A4o
					; sub_1800011E1+3C3o ...
		align 10h
aComp_vector	db 'comp_vector',0      ; DATA XREF: sub_1800011E1+45Eo
					; sub_1800011E1+485o ...
aPos		db 'pos',0              ; DATA XREF: sub_1800011E1+4DFo
					; sub_1800011E1+4FDo ...
aPoly_ang	db 'poly_ang',0         ; DATA XREF: sub_1800011E1:loc_180001779o
		align 10h
aPoly_dlina	db 'poly_dlina',0       ; DATA XREF: sub_1800011E1+5A8o
		align 20h
unk_1800054A0	db 0C2h	; ¬		; DATA XREF: sub_1800011E1+5F1o
		db 0E2h	; ‚
		db 0E5h	; Â
		db 0E4h	; ‰
		db 0E8h	; Ë
		db 0F2h	; Ú
		db 0E5h	; Â
		db  20h
		db 0E7h	; Á
		db 0EDh	; Ì
		db 0E0h	; ‡
		db 0F7h	; ˜
		db 0E5h	; Â
		db 0EDh	; Ì
		db 0E8h	; Ë
		db 0FFh
		db  20h
		db 0EEh	; Ó
		db 0F2h	; Ú
		db 0E2h	; ‚
		db 0EEh	; Ó
		db 0E4h	; ‰
		db 0E0h	; ‡
		db  20h
		db 0E8h	; Ë
		db  20h
		db 0E2h	; ‚
		db 0F0h	; 
		db 0E5h	; Â
		db 0E7h	; Á
		db 0E0h	; ‡
		db 0EDh	; Ì
		db 0E8h	; Ë
		db 0FFh
		db  20h
		db 0E8h	; Ë
		db 0EDh	; Ì
		db 0F1h	; Ò
		db 0F2h	; Ú
		db 0F0h	; 
		db 0F3h	; Û
		db 0ECh	; Ï
		db 0E5h	; Â
		db 0EDh	; Ì
		db 0F2h	; Ú
		db 0E0h	; ‡
		db    0
		db    0
aKin_retract_di	db 'kin_retract_distance',0 ; DATA XREF: sub_1800011E1+609o
					; sub_18000182F+B6o
		align 8
aKin_reengage_d	db 'kin_reengage_distance',0 ; DATA XREF: sub_1800011E1+61Fo
					; sub_18000182F+CAo
		align 20h
unk_180005500	db 0C2h	; ¬		; DATA XREF: sub_1800011E1:loc_180001826o
		db 0E2h	; ‚
		db 0EEh	; Ó
		db 0E4h	; ‰
		db  20h
		db 0E4h	; ‰
		db 0E8h	; Ë
		db 0F1h	; Ò
		db 0F2h	; Ú
		db 0E0h	; ‡
		db 0EDh	; Ì
		db 0F6h	; ˆ
		db 0E8h	; Ë
		db 0E9h	; È
		db  20h
		db 0EEh	; Ó
		db 0F2h	; Ú
		db 0E2h	; ‚
		db 0EEh	; Ó
		db 0E4h	; ‰
		db 0E0h	; ‡
		db  20h
		db 0E8h	; Ë
		db  20h
		db 0E2h	; ‚
		db 0F0h	; 
		db 0E5h	; Â
		db 0E7h	; Á
		db 0E0h	; ‡
		db 0EDh	; Ì
		db 0E8h	; Ë
		db 0FFh
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
aPrev_mcs_goto	db 'prev_mcs_goto',0    ; DATA XREF: sub_18000182F+1Ao
					; sub_18000182F+35o ...
		align 8
aPrev_tool_axis	db 'prev_tool_axis',0   ; DATA XREF: sub_18000182F+6Bo
					; sub_18000182F+86o ...
		align 8
aPos_reen	db 'pos_reen',0         ; DATA XREF: sub_18000182F+1C4o
					; sub_18000182F+1E0o ...
		align 20h
; char Format[]
Format		db 'MOM_output_literal "\043600=\133\133\043\13360000+\0433020\135+\0'
					; DATA XREF: sub_180001A4E+50o
		db '4358203\135*\133%.8lf\135\135"',0
aAngle_tool_new	db 'angle_tool_new',0   ; DATA XREF: sub_180001A4E+83o
					; sub_180001A4E+10Fo ...
		align 10h
aInput_zero_int	db 'input_zero_int',0   ; DATA XREF: sub_180001A4E+98o
					; sub_180001A4E+124o ...
		align 20h
; char aMom_output_l_0[]
aMom_output_l_0	db 'MOM_output_literal "G0 B%.3lf"',0 ; DATA XREF: sub_180001A4E+B3o
					; sub_180001A4E+13Fo ...
		align 20h
; char aMom_output_l_1[]
aMom_output_l_1	db 'MOM_output_literal "M107"',0 ; DATA XREF: sub_180001A4E+E5o
					; sub_180001A4E+171o ...
		align 20h
; char aPutsOfile60060[]
aPutsOfile60060	db 'puts $ofile  "#600=[[#[60000+#3020]+300.086]]"',0
					; DATA XREF: sub_180001A4E+19Ao
		align 10h
aMom_output_l_2	db 'MOM_output_literal "(DLL VERSION 24.02.2015)"',0
					; DATA XREF: sub_180001A4E:loc_180001C15o
		align 20h
aMom_output_l_3	db 'MOM_output_literal "G49"',0 ; DATA XREF: sub_180001A4E+208o
					; sub_180001A4E+B40o ...
		align 20h
aMom_output_l_4	db 'MOM_output_literal "G43 P1 H$mom_tool_number"',0
					; DATA XREF: sub_180001A4E+277o
		align 10h
aPrev_out_angle	db 'prev_out_angle_pos',0 ; DATA XREF: sub_180001A4E+2C7o
					; sub_180001A4E+2E5o
		align 4
aP_num		db 'P_num',0            ; DATA XREF: sub_180001A4E+34Ao
		align 10h
; char aMom_output_l_5[]
aMom_output_l_5	db 'MOM_output_literal "\043600=\133\133\043\13360000+\0433020\135+30'
					; DATA XREF: sub_180001A4E+37Eo
		db '0.086\135*\133%.8lf\135\135"',0
		align 10h
; char aPb_cmd_output_[]
aPb_cmd_output_	db 'PB_CMD_output_spindle',0 ; DATA XREF: sub_180001A4E:loc_180001DFAo
		align 8
; char aMom_output_l_6[]
aMom_output_l_6	db 'MOM_output_literal "G53.5 Z\133\043751\135"',0
					; DATA XREF: sub_180001A4E:loc_180001E1Fo
					; sub_180001A4E:loc_180001F5Bo
		align 8
; char aMom_output_l_7[]
aMom_output_l_7	db 'MOM_output_literal "G18"',0 ; DATA XREF: sub_180001A4E+3FAo
		align 8
; char aMom_output_l_8[]
aMom_output_l_8	db 'MOM_output_literal "M202"',0 ; DATA XREF: sub_180001A4E+423o
		align 8
; char aMom_output_l_9[]
aMom_output_l_9	db 'MOM_output_literal "G123.1"',0 ; DATA XREF: sub_180001A4E+44Co
		align 8
; char aMom_output__10[]
aMom_output__10	db 'MOM_output_literal "G0 G53 X0.0"',0
					; DATA XREF: sub_180001A4E:loc_180001EBFo
		align 20h
; char aMom_output__11[]
aMom_output__11	db 'MOM_output_literal "\043701=0"',0
					; DATA XREF: sub_180001A4E:loc_180001EE4o
		align 20h
; char aMom_output__12[]
aMom_output__12	db 'MOM_output_literal "\043702=0"',0 ; DATA XREF: sub_180001A4E+4BFo
		align 20h
; char aMom_output__13[]
aMom_output__13	db 'MOM_output_literal "\043751 = \0439101"',0
					; DATA XREF: sub_180001A4E+4E8o
; char aMom_output__14[]
aMom_output__14	db 'MOM_output_literal "G17 U0.0 H0.0"',0
					; DATA XREF: sub_180001A4E:loc_180001F80o
		align 10h
; char aMom_output__15[]
aMom_output__15	db 'MOM_output_literal "G12.1 (INTERPOLYAZIA VKL)"',0
					; DATA XREF: sub_180001A4E+55Bo
		align 20h
; char aMom_output__16[]
aMom_output__16	db 'MOM_output_literal "G18 W0.0 H0.0"',0
					; DATA XREF: sub_180001A4E:loc_180001FCEo
		align 8
; char aMom_output__17[]
aMom_output__17	db 'MOM_output_literal "G122.1"',0 ; DATA XREF: sub_180001A4E:loc_180001FF3o
		align 8
; char aMom_output__18[]
aMom_output__18	db 'MOM_output_literal "G10.9X1"',0
					; DATA XREF: sub_180001A4E:loc_180002018o
					; sub_180001A4E+9FDo
		align 8
; char aMom_output__19[]
aMom_output__19	db 'MOM_output_literal "G0 G53 X0."',0 ; DATA XREF: sub_180001A4E+5F3o
; char aMom_output__20[]
aMom_output__20	db 'MOM_output_literal "G0 G53 Y-125. Z0."',0
					; DATA XREF: sub_180001A4E+61Co
		align 10h
aC_val		db 'C_VAL',0            ; DATA XREF: sub_180001A4E+645o
		align 8
aU_val		db 'U_VAL',0            ; DATA XREF: sub_180001A4E+659o
		align 20h
; char aMom_output__21[]
aMom_output__21	db 'MOM_output_literal "M00"',0 ; DATA XREF: sub_180001A4E+681o
		align 20h
; char aMom_output__22[]
aMom_output__22	db 'MOM_output_literal "M202 M302"',0 ; DATA XREF: sub_180001A4E+6AEo
		align 20h
; char aMom_output__23[]
aMom_output__23	db 'MOM_output_literal "M205 M305"',0 ; DATA XREF: sub_180001A4E+6D7o
		align 20h
; char aMom_output__24[]
aMom_output__24	db 'MOM_output_literal "M902"',0 ; DATA XREF: sub_180001A4E+700o
		align 20h
; char aMom_output__25[]
aMom_output__25	db 'MOM_output_literal "M300"',0 ; DATA XREF: sub_180001A4E+729o
		align 20h
; char aMom_output__26[]
aMom_output__26	db 'MOM_output_literal "G55 G0 G90 U%.3lf"',0
					; DATA XREF: sub_180001A4E+752o
		align 8
; char aMom_output__27[]
aMom_output__27	db 'MOM_output_literal "M901"',0 ; DATA XREF: sub_180001A4E+784o
		align 8
; char aMom_output__28[]
aMom_output__28	db 'MOM_output_literal "M200"',0 ; DATA XREF: sub_180001A4E+7ADo
		align 8
; char aMom_output__29[]
aMom_output__29	db 'MOM_output_literal "G54 G0 G90 C%.3lf"',0
					; DATA XREF: sub_180001A4E+7D6o
		align 10h
; char aMom_output__30[]
aMom_output__30	db 'MOM_output_literal "M306"',0 ; DATA XREF: sub_180001A4E+808o
		align 10h
; char aMom_output__31[]
aMom_output__31	db 'MOM_output_literal "M542"',0 ; DATA XREF: sub_180001A4E+831o
		align 10h
; char aMom_output__32[]
aMom_output__32	db 'MOM_output_literal "G0 W\133\043750\135"',0
					; DATA XREF: sub_180001A4E+85Ao
		align 20h
; char aMom_output__33[]
aMom_output__33	db 'MOM_output_literal "M508"',0 ; DATA XREF: sub_180001A4E+883o
		align 20h
; char aMom_output__34[]
aMom_output__34	db 'MOM_output_literal "G1 G94 W\133-\043751\135 F500."',0
					; DATA XREF: sub_180001A4E+8ACo
		align 8
; char aMom_output_lit[23]
aMom_output_lit	db 'MOM_output_literal "(œÂ' ; DATA XREF: sub_180001A4E:loc_18000231Fo
		db 0F0h	; 
		db 0E5h	; Â
		db 0EDh	; Ì
		db 0EEh	; Ó
		db 0F1h	; Ò
		db  20h
		db 0EDh	; Ì
		db 0F3h	; Û
		db 0EBh	; Î
		db 0FFh
		db  21h	; !
		db  21h	; !
		db  21h	; !
		db  29h	; )
		db  22h	; "
		db    0
		db    0
; char aMom_output__35[]
aMom_output__35	db 'MOM_output_literal "\0435243 = \0435223 - \133\0435226 - \043751\'
					; DATA XREF: sub_180001A4E+8FAo
		db '135"',0
		align 10h
; char aMom_output__36[]
aMom_output__36	db 'MOM_output_literal "\0435248 = \0435228 - \133\0435226 - \043751\'
					; DATA XREF: sub_180001A4E+923o
		db '135"',0
		align 8
; char aMom_output__37[]
aMom_output__37	db 'MOM_output_literal "G10.9X0"',0 ; DATA XREF: sub_180001A4E+94Co
		align 8
; char aMom_output__38[]
aMom_output__38	db 'MOM_output_literal "\0435241 = -490."',0 ; DATA XREF: sub_180001A4E+975o
		align 20h
aAlt_x		db 'alt_X',0            ; DATA XREF: sub_180001A4E+99Eo
		align 8
aAlt_y		db 'alt_Y',0            ; DATA XREF: sub_180001A4E+9B2o
		align 10h
aAlt_z		db 'alt_Z',0            ; DATA XREF: sub_180001A4E+9C6o
		align 8
; char aMom_output__39[]
aMom_output__39	db 'MOM_output_literal "G0 G53 X%.3lf"',0 ; DATA XREF: sub_180001A4E+A2Ao
		align 20h
; char aMom_output__40[]
aMom_output__40	db 'MOM_output_literal "G0 G53 Y%.3lf Z%.3lf"',0
					; DATA XREF: sub_180001A4E+A5Co
		align 10h
aHttpWww_postpr	db 'http://www.postprocessor.ru, «¿Œ  √ "œŒ—“œ–Œ÷≈——Œ–"',0
					; DATA XREF: sub_180001A4E:loc_1800024DFo
					; sub_180001A4E:loc_180002734o	...
		align 8
aMcs_goto	db 'mcs_goto',0         ; DATA XREF: sub_180001A4E+AAEo
					; sub_180001A4E+AC9o ...
		align 8
aSetG43_4_flag0	db 'set G43_4_flag 0',0 ; DATA XREF: sub_180001A4E+B30o
					; sub_180001A4E+D82o ...
		align 10h
; char aMom_output__41[]
aMom_output__41	db 'MOM_output_literal "G68.2 P1 X%.3lf Y%.3lf Z%.3lf I0.0 J%.3lf K%.'
					; DATA XREF: sub_180001A4E+B50o
					; sub_180001A4E+DA2o ...
		db '3lf"',0
		align 8
aMom_output__42	db 'MOM_output_literal "G53.1"',0 ; DATA XREF: sub_180001A4E+BB5o
					; sub_180001A4E+E07o ...
		align 8
aMom_output__43	db 'MOM_output_literal "#600=\[#\[60000+#3020\]+#58203\]"',0
					; DATA XREF: sub_180001A4E+BC5o
					; sub_180001A4E+E17o ...
		align 10h
aMom_output__44	db 'MOM_output_literal "G1 G43 G91 Z\[-#600\] F5.0 H$mom_tool_number"'
					; DATA XREF: sub_180001A4E+BD5o
					; sub_180001A4E+E27o ...
		db 0
		align 8
aMom_output__45	db 'MOM_output_literal "G90"',0 ; DATA XREF: sub_180001A4E+BE5o
					; sub_180001A4E+E37o ...
		align 20h
aMom_output__46	db 'MOM_output_literal "G31 X0 Y0 Z0 F[format %.3f $mom_feed_rate]"',0
					; DATA XREF: sub_180001A4E+BF5o
					; sub_180001A4E+E47o
aMom_output__47	db 'MOM_output_literal "#501 = #5061 - #600*SIN\[[format %.3f $mom_ou'
					; DATA XREF: sub_180001A4E+C05o
					; sub_180001A4E+1094o
		db 't_angle_pos(0)]\]"',0
		align 8
aMom_output__48	db 'MOM_output_literal "#502 = #5062"',0 ; DATA XREF: sub_180001A4E+C15o
					; sub_180001A4E+10A4o
		align 20h
aMom_output__49	db 'MOM_output_literal "#504 = 2.0*SQRT\[#501*#501+#502*#502\]-2.0*2.'
					; DATA XREF: sub_180001A4E+C25o
		db '978"',0
		align 8
; char aMom_output__50[]
aMom_output__50	db 'MOM_output_literal "#500 = %.3lf"',0 ; DATA XREF: sub_180001A4E+C58o
		align 10h
aMom_output__51	db 'MOM_output_literal "DPRNT\[---------------ONE*POINT*DIAMETER*MEAS'
					; DATA XREF: sub_180001A4E+C8Ao
		db 'UREMENT----------------\]"',0
		align 10h
aMom_output__52	db 'MOM_output_literal "DPRNT\[MEASURED*DIAMETER*#504\[53\]\]"',0
					; DATA XREF: sub_180001A4E+C9Ao
		align 10h
aMom_output__53	db 'MOM_output_literal "DPRNT\[NOMINAL*DIAMETER *#500\[53\]\]"',0
					; DATA XREF: sub_180001A4E+CAAo
		align 10h
aMom_output__54	db 'MOM_output_literal "#501 = #500-#504"',0 ; DATA XREF: sub_180001A4E+CBAo
		align 20h
aMom_output__55	db 'MOM_output_literal "DPRNT\[--------------------------------------'
					; DATA XREF: sub_180001A4E+CCAo
		db '-----------------------\]"',0
		align 20h
aMom_output__56	db 'MOM_output_literal "G69"',0 ; DATA XREF: sub_180001A4E+CDAo
		align 20h
aMom_output__57	db 'MOM_output_literal "#511 = #5061 - #600*SIN\[[format %.3f $mom_ou'
					; DATA XREF: sub_180001A4E+E57o
					; sub_180001A4E+1231o
		db 't_angle_pos(0)]\]"',0
		align 8
aMom_output__58	db 'MOM_output_literal "#512 = #5062"',0 ; DATA XREF: sub_180001A4E+E67o
					; sub_180001A4E+1241o
		align 20h
aMom_output__59	db 'MOM_output_literal "#501 = #511*COS\[[format %.3f $mom_out_angle_'
					; DATA XREF: sub_180001A4E+E77o
		db 'pos(1)]\] - #512*SIN\[[format %.3f $mom_out_angle_pos(1)]\]"',0
		align 20h
aMom_output__60	db 'MOM_output_literal "#502 = #511*SIN\[[format %.3f $mom_out_angle_'
					; DATA XREF: sub_180001A4E+E87o
		db 'pos(1)]\] + #512*COS\[[format %.3f $mom_out_angle_pos(1)]\]"',0
		align 20h
aMom_output__61	db 'MOM_output_literal "#503 = #5063 - #600*COS\[[format %.3f $mom_ou'
					; DATA XREF: sub_180001A4E+E97o
					; sub_180001A4E+10B4o
		db 't_angle_pos(0)]\]"',0
		align 20h
aMom_output__62	db 'MOM_output_literal "#504 = SQRT\[\[#501-\[[format %.3f $mom_mcs_g'
					; DATA XREF: sub_180001A4E+EA7o
		db 'oto(0)]\]\]*\[#501-\[[format %.3f $mom_mcs_goto(0)]\]\]+\[#502-\['
		db '[format %.3f $mom_mcs_goto(1)]\]\]*\[#502-\[[format %.3f $mom_mcs'
		db '_goto(1)]\]\]+ \[#503-\[[format %.3f $mom_mcs_goto(2)]\]\]*\[#503'
		db '-\[[format %.3f $mom_mcs_goto(2)]\]\]\]-2.978"',0
		align 20h
aMom_output__63	db 'MOM_output_literal "DPRNT\[---------------SURFACE*POINT*MEASUREME'
					; DATA XREF: sub_180001A4E+EB7o
		db 'NT---------------------\]"',0
		align 20h
aMom_output__64	db 'MOM_output_literal "DPRNT\[DATA**#3011\[80\]***TIME**#3012\[60\]-'
					; DATA XREF: sub_180001A4E+EC7o
		db '-------------------\]"',0
		align 20h
aMom_output__65	db 'MOM_output_literal "DPRNT\[MEASURED**X**#501\[43\]***Y*=*#502\[43'
					; DATA XREF: sub_180001A4E+ED7o
		db '\]***Z*=*#503\[43\]\]"',0
aMom_output__66	db 'MOM_output_literal "DPRNT\[ERROR********#504\[43\]\]"',0
					; DATA XREF: sub_180001A4E+EE7o
		align 10h
aSetMeas_pt10Mo	db 'set meas_pt1(0) $mom_mcs_goto(0)',0 ; DATA XREF: sub_180001A4E+F8Fo
		align 8
aSetMeas_pt11Mo	db 'set meas_pt1(1) $mom_mcs_goto(1)',0 ; DATA XREF: sub_180001A4E+F9Fo
		align 20h
aSetMeas_pt12Mo	db 'set meas_pt1(2) $mom_mcs_goto(2)',0 ; DATA XREF: sub_180001A4E+FAFo
		align 10h
aMom_output__67	db 'MOM_output_literal "G31 X0 Y0 Z0 F[format %.3f [expr abs($mom_pro'
					; DATA XREF: sub_180001A4E+1084o
					; sub_180001A4E+1221o
		db 'grammed_feed_rate)]]"',0
		align 10h
aMom_output__68	db 'MOM_output_literal "#513 = #5063 - #600*COS\[[format %.3f $mom_ou'
					; DATA XREF: sub_180001A4E+1251o
		db 't_angle_pos(0)]\]"',0
		align 10h
aIfMom_programm	db 'if {$mom_programmed_feed_rate > 0.0} { MOM_output_literal "#504 ='
					; DATA XREF: sub_180001A4E+1261o
		db ' SQRT\[\[#501-#511\]*\[#501-#511\]+\[#502-#512\]*\[#502-#512\]+\['
		db '#503-#513\]*\[#503-#513\]\]-2.0*2.978" } ',0
		align 20h
aIfMom_progra_0	db 'if {$mom_programmed_feed_rate < 0.0} { MOM_output_literal "#504 ='
					; DATA XREF: sub_180001A4E+1271o
		db ' SQRT\[\[#501-#511\]*\[#501-#511\]+\[#502-#512\]*\[#502-#512\]+\['
		db '#503-#513\]*\[#503-#513\]\]+2.0*2.978" } ',0
		align 10h
aMom_output__69	db 'MOM_output_literal "#505 = [format %.3f [expr sqrt(($mom_mcs_goto'
					; DATA XREF: sub_180001A4E+1281o
		db '(0)-$meas_pt1(0))*($mom_mcs_goto(0)-$meas_pt1(0)) + ($mom_mcs_got'
		db 'o(1)-$meas_pt1(1))*($mom_mcs_goto(1)-$meas_pt1(1)) + ($mom_mcs_go'
		db 'to(2)-$meas_pt1(2))*($mom_mcs_goto(2)-$meas_pt1(2)))]]"',0
		align 10h
aMom_output__70	db 'MOM_output_literal "DPRNT\[---------------WALL*THICKNESS*MEASUREM'
					; DATA XREF: sub_180001A4E+1291o
		db 'ENT----------------\]"',0
		align 10h
aMom_output__71	db 'MOM_output_literal "DPRNT\[MEASURED*AT*POINT***X=#501\[53\]*Y=#50'
					; DATA XREF: sub_180001A4E+12A1o
		db '2\[53\]*Z=#503\[53\]\]"',0
		align 10h
aMom_output__72	db 'MOM_output_literal "DPRNT\[NOMINAL *THICKNESS****#505\[53\]\]"',0
					; DATA XREF: sub_180001A4E+12B1o
		align 10h
aMom_output__73	db 'MOM_output_literal "DPRNT\[MEASURED*THICKNESS****#504\[53\]\]"',0
					; DATA XREF: sub_180001A4E+12C1o
		align 10h
aMom_output__74	db 'MOM_output_literal "#506 = #505-#504"',0
					; DATA XREF: sub_180001A4E+12D1o
		align 8
aMom_output__75	db 'MOM_output_literal "DPRNT\[ERROR*****************#506\[34\]\]"',0
					; DATA XREF: sub_180001A4E+12E1o
		align 20h
aMom_output__76	db 'MOM_output_literal "DPRNT\[--------------------------------------'
					; DATA XREF: sub_180001A4E+12F1o
		db '-------------------\]"',0
unk_180006B58	db 0C2h	; ¬		; DATA XREF: sub_180001A4E:loc_180002D4Bo
		db 0FBh	; ˚
		db 0F7h	; ˜
		db 0E8h	; Ë
		db 0F1h	; Ò
		db 0EBh	; Î
		db 0E5h	; Â
		db 0EDh	; Ì
		db 0E8h	; Ë
		db 0E5h	; Â
		db  20h
		db 0EAh	; Í
		db 0EEh	; Ó
		db 0EEh	; Ó
		db 0F0h	; 
		db 0E4h	; ‰
		db 0E8h	; Ë
		db 0EDh	; Ì
		db 0E0h	; ‡
		db 0F2h	; Ú
		db  20h
		db 0F6h	; ˆ
		db 0E5h	; Â
		db 0EDh	; Ì
		db 0F2h	; Ú
		db 0F0h	; 
		db 0E0h	; ‡
		db  20h
		db 0EEh	; Ó
		db 0F2h	; Ú
		db 0E2h	; ‚
		db 0E5h	; Â
		db 0F0h	; 
		db 0F1h	; Ò
		db 0F2h	; Ú
		db 0E8h	; Ë
		db 0FFh
		db    0
		db    0
		db    0
aMsys_matrix	db 'msys_matrix',0      ; DATA XREF: sub_180001A4E+1317o
					; sub_180001A4E+1332o ...
a3		db '3',0                ; DATA XREF: sub_180001A4E+1361o
		align 10h
a4		db '4',0                ; DATA XREF: sub_180001A4E+137Fo
		align 4
a5		db '5',0                ; DATA XREF: sub_180001A4E+139Do
		align 8
a6		db '6',0                ; DATA XREF: sub_180001A4E+13BBo
		align 4
a7		db '7',0                ; DATA XREF: sub_180001A4E+13D9o
		align 20h
a8		db '8',0                ; DATA XREF: sub_180001A4E+13F7o
		align 8
aMsys_origin	db 'msys_origin',0      ; DATA XREF: sub_180001A4E+1419o
					; sub_180001A4E+1434o ...
		align 8
aPost_arc_cente	db 'post_arc_center',0  ; DATA XREF: sub_180001A4E+1496o
					; sub_180001A4E+14B1o ...
		align 10h
aMom_output__77	db 'MOM_output_literal "G68.2 P1 X[format %.3f $mom_post_arc_center(0'
					; DATA XREF: sub_180001A4E+156Do
		db ')] Y[format %.3f $mom_post_arc_center(1)] Z[format %.3f $mom_post'
		db '_arc_center(2)] I0.0 J[format %.3f $mom_out_angle_pos(0)] K[forma'
		db 't %.3f $mom_out_angle_pos(1)]"',0
		align 20h
aMom_output__78	db 'MOM_output_literal "G1 X0.0 Y0.0 Z[format %.3f $mom_post_z] F[for'
					; DATA XREF: sub_180001A4E+15BDo
					; sub_180001A4E+160Do ...
		db 'mat %.3f $mom_post_f]"',0
		align 20h
aMom_output__79	db 'MOM_output_literal "G31 X[format %.3f [expr 0.5*$mom_post_d]] Y0.'
					; DATA XREF: sub_180001A4E+15CDo
					; sub_180001A4E+1869o
		db '0 Z[format %.3f $mom_post_z] F100.0"',0
		align 8
aMom_output__80	db 'MOM_output_literal "#501=#5161"',0 ; DATA XREF: sub_180001A4E+15DDo
					; sub_180001A4E+1879o
aMom_output__81	db 'MOM_output_literal "#502=#5162"',0 ; DATA XREF: sub_180001A4E+15EDo
					; sub_180001A4E+1889o
aMom_output__82	db 'MOM_output_literal "#503=#5163"',0 ; DATA XREF: sub_180001A4E+15FDo
					; sub_180001A4E+1899o
		align 10h
aMom_output__83	db 'MOM_output_literal "G31 X0.0 Y[format %.3f [expr 0.5*$mom_post_d]'
					; DATA XREF: sub_180001A4E+161Do
					; sub_180001A4E+18B9o
		db '] Z[format %.3f $mom_post_z] F100.0"',0
		align 8
aMom_output__84	db 'MOM_output_literal "#511=#5161"',0 ; DATA XREF: sub_180001A4E+162Do
					; sub_180001A4E+18C9o
aMom_output__85	db 'MOM_output_literal "#512=#5162"',0 ; DATA XREF: sub_180001A4E+163Do
					; sub_180001A4E+18D9o
aMom_output__86	db 'MOM_output_literal "#513=#5163"',0 ; DATA XREF: sub_180001A4E+164Do
					; sub_180001A4E+18E9o
		align 20h
aMom_output__87	db 'MOM_output_literal "G31 X[format %.3f [expr -0.5*$mom_post_d]] Y0'
					; DATA XREF: sub_180001A4E+166Do
					; sub_180001A4E+1909o
		db '.0 Z[format %.3f $mom_post_z] F100.0"',0
		align 8
aMom_output__88	db 'MOM_output_literal "#521=#5161"',0 ; DATA XREF: sub_180001A4E+167Do
					; sub_180001A4E+1919o
aMom_output__89	db 'MOM_output_literal "#522=#5162"',0 ; DATA XREF: sub_180001A4E+168Do
					; sub_180001A4E+1929o
aMom_output__90	db 'MOM_output_literal "#523=#5163"',0 ; DATA XREF: sub_180001A4E+169Do
					; sub_180001A4E+1939o
		align 10h
aMom_output__91	db 'MOM_output_literal "#1=\[#501-#511\]*\[#501-#511\]+\[#502-#512\]*'
					; DATA XREF: sub_180001A4E+16BDo
					; sub_180001A4E+1959o
		db '\[#502-#512\]+\[#503-#513\]*\[#503-#513\]"',0
		align 20h
aMom_output__92	db 'MOM_output_literal "#2=\[#501-#521\]*\[#501-#521\]+\[#502-#522\]*'
					; DATA XREF: sub_180001A4E+16CDo
					; sub_180001A4E+1969o
		db '\[#502-#522\]+\[#503-#523\]*\[#503-#523\]"',0
		align 10h
aMom_output__93	db 'MOM_output_literal "#3=\[#511-#521\]*\[#511-#521\]+\[#512-#522\]*'
					; DATA XREF: sub_180001A4E+16DDo
					; sub_180001A4E+1979o
		db '\[#512-#522\]+\[#513-#523\]*\[#513-#523\]"',0
		align 20h
aMom_output__94	db 'MOM_output_literal "#4=SQRT\[2.0*#1*#2+2.0*#1*#3+2.0*#3*#2-#1*#1-'
					; DATA XREF: sub_180001A4E+16EDo
					; sub_180001A4E+1989o
		db '#2*#2-#3*#3\]"',0
aMom_output__95	db 'MOM_output_literal "#4=2.0*2.978+2.0*SQRT\[#1*#2*#3\]/#4"',0
					; DATA XREF: sub_180001A4E+16FDo
					; sub_180001A4E+1999o
		align 10h
aMom_output__96	db 'MOM_output_literal "#514=[format %.4f $mom_out_angle_pos(0)]"',0
					; DATA XREF: sub_180001A4E+170Do
		align 10h
aMom_output__97	db 'MOM_output_literal "#515=[format %.4f $mom_out_angle_pos(1)]"',0
					; DATA XREF: sub_180001A4E+171Do
		align 10h
aMom_output__98	db 'MOM_output_literal "#516=[format %.4f $mom_post_z]"',0
					; DATA XREF: sub_180001A4E+172Do
					; sub_180001A4E+19A9o
		align 8
asc_180007228	db 'MOM_output_literal "#5=#3*\[#1+#2-#3\]"',0
					; DATA XREF: sub_180001A4E+173Do
					; sub_180001A4E+19B9o
asc_180007250	db 'MOM_output_literal "#6=#2*\[#1+#3-#2\]"',0
					; DATA XREF: sub_180001A4E+174Do
					; sub_180001A4E+19C9o
asc_180007278	db 'MOM_output_literal "#7=#1*\[#2+#3-#1\]"',0
					; DATA XREF: sub_180001A4E+175Do
					; sub_180001A4E+19D9o
asc_1800072A0	db 'MOM_output_literal "#8=#5+#6+#7"',0 ; DATA XREF: sub_180001A4E+176Do
					; sub_180001A4E+19E9o
		align 8
asc_1800072C8	db 'MOM_output_literal "#517=\[#501*#5 + #511*#6 + #521*#7\]/#8"',0
					; DATA XREF: sub_180001A4E+177Do
		align 8
asc_180007308	db 'MOM_output_literal "#518=\[#502*#5 + #512*#6 + #522*#7\]/#8"',0
					; DATA XREF: sub_180001A4E+178Do
		align 8
asc_180007348	db 'MOM_output_literal "#519=\[#503*#5 + #513*#6 + #523*#7\]/#8"',0
					; DATA XREF: sub_180001A4E+179Do
		align 8
asc_180007388	db 'MOM_output_literal "#520=SQRT\[#517*#517+#518*#518\]"',0
					; DATA XREF: sub_180001A4E+17ADo
		align 20h
asc_1800073C0	db 'MOM_output_literal "DPRNT\[---------------BOSS*BORE*MEAS---------'
					; DATA XREF: sub_180001A4E+17BDo
		db '-------\]"',0
		align 10h
asc_180007410	db 'MOM_output_literal "DPRNT\[MEASURED*DIAMETER*FOR*Z=#516\[44\]*=*#'
					; DATA XREF: sub_180001A4E+17CDo
					; sub_180001A4E+1A69o
		db '4\[44\]\]"',0
		align 20h
asc_180007460	db 'MOM_output_literal "DPRNT\[ARC\]"',0 ; DATA XREF: sub_180001A4E+17DDo
					; sub_180001A4E+1A79o
		align 10h
asc_180007490	db 'MOM_output_literal "DPRNT\[POINT***#501\[44\]***#502\[44\]***#503'
					; DATA XREF: sub_180001A4E+17EDo
					; sub_180001A4E+1A89o
		db '\[44\]\]"',0
		align 20h
asc_1800074E0	db 'MOM_output_literal "DPRNT\[POINT***#511\[44\]***#512\[44\]***#513'
					; DATA XREF: sub_180001A4E+17FDo
					; sub_180001A4E+1A99o
		db '\[44\]\]"',0
		align 10h
asc_180007530	db 'MOM_output_literal "DPRNT\[POINT***#521\[44\]***#522\[44\]***#523'
					; DATA XREF: sub_180001A4E+180Do
					; sub_180001A4E+1AA9o
		db '\[44\]\]"',0
		align 20h
asc_180007580	db 'MOM_output_literal "DPRNT\[XC*#517\[44\]***YC*#518\[44\]\]"',0
					; DATA XREF: sub_180001A4E+181Do
		align 20h
asc_1800075C0	db 'MOM_output_literal "DPRNT\[CENTER*DEVIATION***#520\[44\]\]"',0
					; DATA XREF: sub_180001A4E+182Do
					; sub_180001A4E+1AC9o
		align 20h
asc_180007600	db 'MOM_output_literal "DPRNT\[********#600\[44\]***#514\[44\]***#515'
					; DATA XREF: sub_180001A4E+183Do
					; sub_180001A4E+1AE9o
		db '\[44\]\]"',0
		align 10h
aSetMom_post_zM	db 'set mom_post_z $mom_post_second_depth',0
					; DATA XREF: sub_180001A4E:loc_180003297o
		align 8
asc_180007678	db 'MOM_output_literal "#527=\[#501*#5 + #511*#6 + #521*#7\]/#8"',0
					; DATA XREF: sub_180001A4E+19F9o
		align 8
asc_1800076B8	db 'MOM_output_literal "#528=\[#502*#5 + #512*#6 + #522*#7\]/#8"',0
					; DATA XREF: sub_180001A4E+1A09o
		align 8
asc_1800076F8	db 'MOM_output_literal "#529=\[#503*#5 + #513*#6 + #523*#7\]/#8"',0
					; DATA XREF: sub_180001A4E+1A19o
		align 8
asc_180007738	db 'MOM_output_literal "#520=SQRT\[#527*#527+#528*#528\]"',0
					; DATA XREF: sub_180001A4E+1A29o
		align 10h
asc_180007770	db 'MOM_output_literal "#530=SQRT\[\[#527-#517\]*\[#527-#517\] + \[#5'
					; DATA XREF: sub_180001A4E+1A39o
		db '28-#518\]*\[#528-#518\] + \[#529-#519\]*\[#529-#519\]\]"',0
		align 10h
asc_1800077F0	db 'MOM_output_literal "#531=ACOS\[\[#519 - #529\]/#530\]"',0
					; DATA XREF: sub_180001A4E+1A49o
		align 8
asc_180007828	db 'MOM_output_literal "+++++++++++++++++++++++++++++++++"',0
					; DATA XREF: sub_180001A4E+1A59o
		align 20h
asc_180007860	db 'MOM_output_literal "DPRNT\[XC*#527\[44\]***YC*#528\[44\]\]"',0
					; DATA XREF: sub_180001A4E+1AB9o
		align 20h
asc_1800078A0	db 'MOM_output_literal "DPRNT\[AXIS***DEVIATION***#531\[44\]\]"',0
					; DATA XREF: sub_180001A4E+1AD9o
		align 20h
asc_1800078E0	db 'MOM_output_literal "++++++++"',0 ; DATA XREF: sub_180001A4E+1AF9o
		align 20h
aUf_terminate	db 'UF_terminate',0     ; DATA XREF: sub_180003590o
		align 10h
aInfo@postproce	db 'info@postprocessor.ru',0 ; DATA XREF: sub_180003730:loc_18000381Eo
		align 8
aMon31Dec2015	db 'Mon, 31 Dec 2015',0 ; DATA XREF: sub_180003730+F5o
					; sub_180003730:loc_18000383Fo
		align 20h
qword_180007940	dq 4000000000000000h	; DATA XREF: sub_180001A4E+C50r
qword_180007948	dq 4076800000000000h	; DATA XREF: sub_1800011E1+588r
qword_180007950	dq 3C32725DD1D243ACh	; DATA XREF: sub_1800011E1+37Fr
					; sub_1800011E1+51Fr
qword_180007958	dq 4066800000000000h	; DATA XREF: sub_1800011E1+23Er
					; sub_1800011E1+246r ...
qword_180007960	dq 400921FB54442D18h	; DATA XREF: sub_1800011E1+235r
					; sub_1800011E1+56Er ...
qword_180007968	dq 0C00921FB54442D18h	; DATA XREF: sub_1800011E1+22Dr
qword_180007970	dq 4024000000000000h	; DATA XREF: sub_1800010F0+39r
qword_180007978	dq 4059000000000000h	; DATA XREF: sub_1800010F0+31r
		db  52h	; R
		db  53h	; S
		db  44h	; D
		db  53h	; S
		db  96h	; ñ
		db 0B1h	; ±
		db 0A7h	; ß
		db  17h
		db 0B9h	; π
		db  81h	; Å
		db  52h	; R
		db  47h	; G
		db 0A1h	; °
		db 0CFh	; œ
		db  2Dh	; -
		db  95h	; ï
		db  72h	; r
		db  59h	; Y
		db 0D6h	; ÷
		db 0ACh	; ¨
		db  1Dh
		db    0
		db    0
		db    0
		db  44h	; D
		db  3Ah	; :
		db  5Ch	; \
		db  56h	; V
		db  43h	; C
		db  5Fh	; _
		db  6Eh	; n
		db  65h	; e
		db  77h	; w
		db  5Ch	; \
		db  4Dh	; M
		db  79h	; y
		db  50h	; P
		db  72h	; r
		db  6Fh	; o
		db  6Ah	; j
		db  65h	; e
		db  63h	; c
		db  74h	; t
		db  73h	; s
		db  5Ch	; \
		db  6Dh	; m
		db  6Fh	; o
		db  6Dh	; m
		db  5Fh	; _
		db  75h	; u
		db  73h	; s
		db  65h	; e
		db  72h	; r
		db  5Fh	; _
		db  4Dh	; M
		db  41h	; A
		db  5Ah	; Z
		db  41h	; A
		db  4Bh	; K
		db  5Fh	; _
		db  49h	; I
		db  4Eh	; N
		db  54h	; T
		db  45h	; E
		db  47h	; G
		db  52h	; R
		db  45h	; E
		db  58h	; X
		db  5Fh	; _
		db  69h	; i
		db  36h	; 6
		db  33h	; 3
		db  30h	; 0
		db  5Ch	; \
		db  6Dh	; m
		db  6Fh	; o
		db  6Dh	; m
		db  5Fh	; _
		db  75h	; u
		db  73h	; s
		db  65h	; e
		db  72h	; r
		db  5Fh	; _
		db  4Dh	; M
		db  41h	; A
		db  5Ah	; Z
		db  41h	; A
		db  4Bh	; K
		db  5Fh	; _
		db  49h	; I
		db  4Eh	; N
		db  54h	; T
		db  45h	; E
		db  47h	; G
		db  52h	; R
		db  45h	; E
		db  58h	; X
		db  5Fh	; _
		db  69h	; i
		db  36h	; 6
		db  33h	; 3
		db  30h	; 0
		db  5Fh	; _
		db  36h	; 6
		db  34h	; 4
		db  5Ch	; \
		db  78h	; x
		db  36h	; 6
		db  34h	; 4
		db  5Ch	; \
		db  52h	; R
		db  65h	; e
		db  6Ch	; l
		db  65h	; e
		db  61h	; a
		db  73h	; s
		db  65h	; e
		db  5Ch	; \
		db  6Dh	; m
		db  6Fh	; o
		db  6Dh	; m
		db  5Fh	; _
		db  75h	; u
		db  73h	; s
		db  65h	; e
		db  72h	; r
		db  5Fh	; _
		db  4Dh	; M
		db  41h	; A
		db  5Ah	; Z
		db  41h	; A
		db  4Bh	; K
		db  5Fh	; _
		db  49h	; I
		db  4Eh	; N
		db  54h	; T
		db  45h	; E
		db  47h	; G
		db  52h	; R
		db  45h	; E
		db  58h	; X
		db  5Fh	; _
		db  69h	; i
		db  36h	; 6
		db  33h	; 3
		db  30h	; 0
		db  5Fh	; _
		db  36h	; 6
		db  34h	; 4
		db  2Eh	; .
		db  70h	; p
		db  64h	; d
		db  62h	; b
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_180007A28	db    0			; DATA XREF: sub_180003EE8+Ao
					; sub_180003EE8+11o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_180007A38	db    0			; DATA XREF: sub_180003F20+Ao
					; sub_180003F20+11o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
stru_180007A40	UNWIND_INFO <1,	0, 0, 0> ; DATA	XREF: .pdata:000000018000A060o
stru_180007A44	UNWIND_INFO <1,	6, 2, 0> ; DATA	XREF: .pdata:000000018000A06Co
					; .pdata:000000018000A0FCo
		UNWIND_CODE <6,	32h>	; UWOP_ALLOC_SMALL
		UNWIND_CODE <2,	30h>	; UWOP_PUSH_NONVOL
stru_180007A4C	UNWIND_INFO <1,	1Dh, 0Ch, 0> ; DATA XREF: .pdata:000000018000A078o
		UNWIND_CODE <1Dh, 0C4h>	; UWOP_SAVE_NONVOL
		dw 0Bh
		UNWIND_CODE <1Dh, 74h>	; UWOP_SAVE_NONVOL
		dw 0Ah
		UNWIND_CODE <1Dh, 54h>	; UWOP_SAVE_NONVOL
		dw 9
		UNWIND_CODE <1Dh, 34h>	; UWOP_SAVE_NONVOL
		dw 8
		UNWIND_CODE <1Dh, 32h>	; UWOP_ALLOC_SMALL
		UNWIND_CODE <19h, 0F0h>	; UWOP_PUSH_NONVOL
		UNWIND_CODE <17h, 0E0h>	; UWOP_PUSH_NONVOL
		UNWIND_CODE <15h, 0D0h>	; UWOP_PUSH_NONVOL
stru_180007A68	UNWIND_INFO <19h, 15h, 8, 0> ; DATA XREF: .pdata:000000018000A084o
		UNWIND_CODE <15h, 74h>	; UWOP_SAVE_NONVOL
		dw 0Ah
		UNWIND_CODE <15h, 64h>	; UWOP_SAVE_NONVOL
		dw 9
		UNWIND_CODE <15h, 34h>	; UWOP_SAVE_NONVOL
		dw 8
		UNWIND_CODE <15h, 52h>	; UWOP_ALLOC_SMALL
		UNWIND_CODE <11h, 0C0h>	; UWOP_PUSH_NONVOL
		dd rva __C_specific_handler
		dd 2
		C_SCOPE_TABLE <rva loc_180003B77, rva $LN23, \
			       rva __DllMainCRTStartup$filt$0, rva $LN23>
		C_SCOPE_TABLE <rva loc_180003B71, rva $LN21, \
			       rva __DllMainCRTStartup$fin$1, 0>
stru_180007AA4	UNWIND_INFO <1,	0Fh, 6,	0> ; DATA XREF:	.pdata:000000018000A090o
		UNWIND_CODE <0Fh, 64h>	; UWOP_SAVE_NONVOL
		dw 7
		UNWIND_CODE <0Fh, 34h>	; UWOP_SAVE_NONVOL
		dw 6
		UNWIND_CODE <0Fh, 32h>	; UWOP_ALLOC_SMALL
		UNWIND_CODE <0Bh, 70h>	; UWOP_PUSH_NONVOL
stru_180007AB4	UNWIND_INFO <1,	0Ch, 2,	0> ; DATA XREF:	.pdata:000000018000A09Co
		UNWIND_CODE <0Ch, 1>	; UWOP_ALLOC_LARGE
		dw 11h
stru_180007ABC	UNWIND_INFO <11h, 6, 2,	0> ; DATA XREF:	.pdata:000000018000A0A8o
		UNWIND_CODE <6,	32h>	; UWOP_ALLOC_SMALL
		UNWIND_CODE <2,	30h>	; UWOP_PUSH_NONVOL
		dd rva __C_specific_handler
		dd 1
		C_SCOPE_TABLE <rva loc_180003E57, rva $LN9, rva	_onexit$fin$0, 0>
stru_180007ADC	UNWIND_INFO <1,	0Ah, 4,	0> ; DATA XREF:	.pdata:000000018000A0C0o
					; .pdata:000000018000A0CCo
		UNWIND_CODE <0Ah, 34h>	; UWOP_SAVE_NONVOL
		dw 6
		UNWIND_CODE <0Ah, 32h>	; UWOP_ALLOC_SMALL
		UNWIND_CODE <6,	70h>	; UWOP_PUSH_NONVOL
stru_180007AE8	UNWIND_INFO <1,	6, 2, 0> ; DATA	XREF: .pdata:000000018000A114o
					; .pdata:000000018000A120o ...
		UNWIND_CODE <6,	32h>	; UWOP_ALLOC_SMALL
		UNWIND_CODE <2,	50h>	; UWOP_PUSH_NONVOL
stru_180007AF0	UNWIND_INFO <9,	4, 1, 0> ; DATA	XREF: .pdata:000000018000A0D8o
		UNWIND_CODE <4,	42h>	; UWOP_ALLOC_SMALL
		align 4
		dd rva __C_specific_handler
		dd 1
		C_SCOPE_TABLE <rva loc_180003FE7, rva $LN8, rva	unknown_libname_1, \ ; Microsoft VisualC v7/11 64bit runtime
			       rva $LN8>
stru_180007B10	UNWIND_INFO <1,	0Ah, 4,	0> ; DATA XREF:	.pdata:000000018000A0F0o
		UNWIND_CODE <0Ah, 34h>	; UWOP_SAVE_NONVOL
		dw 8
		UNWIND_CODE <0Ah, 32h>	; UWOP_ALLOC_SMALL
		UNWIND_CODE <6,	70h>	; UWOP_PUSH_NONVOL
stru_180007B1C	UNWIND_INFO <1,	8, 4, 0> ; DATA	XREF: .pdata:000000018000A054o
		UNWIND_CODE <8,	0B2h>	; UWOP_ALLOC_SMALL
		UNWIND_CODE <4,	70h>	; UWOP_PUSH_NONVOL
		UNWIND_CODE <3,	60h>	; UWOP_PUSH_NONVOL
		UNWIND_CODE <2,	30h>	; UWOP_PUSH_NONVOL
stru_180007B28	UNWIND_INFO <21h, 0, 8,	0> ; DATA XREF:	.pdata:000000018000A048o
		UNWIND_CODE <0,	98h>	; UWOP_SAVE_XMM128
		dw 37h
		UNWIND_CODE <0,	88h>	; UWOP_SAVE_XMM128
		dw 38h
		UNWIND_CODE <0,	78h>	; UWOP_SAVE_XMM128
		dw 39h
		UNWIND_CODE <0,	68h>	; UWOP_SAVE_XMM128
		dw 3Ah
		RUNTIME_FUNCTION <rva sub_1800010F0, rva sub_1800011E1,	\
				  rva stru_180007B9C>
stru_180007B48	UNWIND_INFO <21h, 0, 0,	0> ; DATA XREF:	.pdata:000000018000A03Co
		RUNTIME_FUNCTION <rva sub_1800010F0, rva sub_1800011E1,	\
				  rva stru_180007B9C>
stru_180007B58	UNWIND_INFO <21h, 0, 0,	0> ; DATA XREF:	.pdata:000000018000A030o
		RUNTIME_FUNCTION <rva sub_1800011E1, rva sub_18000182F,	\
				  rva stru_180007B7C>
stru_180007B68	UNWIND_INFO <21h, 9, 2,	0> ; DATA XREF:	.pdata:000000018000A024o
		UNWIND_CODE <9,	0A8h>	; UWOP_SAVE_XMM128
		dw 36h
		RUNTIME_FUNCTION <rva sub_1800011E1, rva sub_18000182F,	\
				  rva stru_180007B7C>
stru_180007B7C	UNWIND_INFO <21h, 22h, 8, 0> ; DATA XREF: .rdata:0000000180007B5Co
					; .rdata:0000000180007B70o ...
		UNWIND_CODE <22h, 98h>	; UWOP_SAVE_XMM128
		dw 37h
		UNWIND_CODE <19h, 88h>	; UWOP_SAVE_XMM128
		dw 38h
		UNWIND_CODE <10h, 78h>	; UWOP_SAVE_XMM128
		dw 39h
		UNWIND_CODE <8,	68h>	; UWOP_SAVE_XMM128
		dw 3Ah
		RUNTIME_FUNCTION <rva sub_1800010F0, rva sub_1800011E1,	\
				  rva stru_180007B9C>
stru_180007B9C	UNWIND_INFO <19h, 2Bh, 7, 0> ; DATA XREF: .rdata:0000000180007B3Co
					; .rdata:0000000180007B4Co ...
		UNWIND_CODE <1Ah, 74h>	; UWOP_SAVE_NONVOL
		dw 7Ah
		UNWIND_CODE <1Ah, 34h>	; UWOP_SAVE_NONVOL
		dw 79h
		UNWIND_CODE <1Ah, 1>	; UWOP_ALLOC_LARGE
		dw 76h
		UNWIND_CODE <0Bh, 50h>	; UWOP_PUSH_NONVOL
		align 4
		dd rva __GSHandlerCheck
		dd 358h
stru_180007BB8	UNWIND_INFO <1,	0Fh, 6,	0> ; DATA XREF:	.pdata:ExceptionDiro
		UNWIND_CODE <0Fh, 64h>	; UWOP_SAVE_NONVOL
		dw 9
		UNWIND_CODE <0Fh, 34h>	; UWOP_SAVE_NONVOL
		dw 8
		UNWIND_CODE <0Fh, 52h>	; UWOP_ALLOC_SMALL
		UNWIND_CODE <0Bh, 70h>	; UWOP_PUSH_NONVOL
stru_180007BC8	UNWIND_INFO <1,	4, 1, 0> ; DATA	XREF: .pdata:000000018000A0B4o
					; .pdata:000000018000A0E4o ...
		UNWIND_CODE <4,	42h>	; UWOP_ALLOC_SMALL
		align 4
__IMPORT_DESCRIPTOR_libufun dd rva off_180007D70 ; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aLibufun_dll	; DLL Name
		dd rva UF_PART_ask_nth_history ; Import	Address	Table
__IMPORT_DESCRIPTOR_libugopenint dd rva	off_180007E50 ;	Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aLibugopenint_d	; DLL Name
		dd rva uc1608		; Import Address Table
__IMPORT_DESCRIPTOR_MSVCR100 dd	rva off_180007CC8 ; Import Name	Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aMsvcr100_dll	; DLL Name
		dd rva __imp_cos	; Import Address Table
__IMPORT_DESCRIPTOR_KERNEL32 dd	rva off_180007C38 ; Import Name	Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aKernel32_dll	; DLL Name
		dd rva RtlCaptureContext ; Import Address Table
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
;
; Import names for KERNEL32.dll
;
off_180007C38	dq rva word_180008344	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_KERNEL32o
		dq rva word_180008288
		dq rva word_180008298
		dq rva word_1800083CA
		dq rva word_1800083B4
		dq rva word_18000839E
		dq rva word_18000838E
		dq rva word_180008374
		dq rva word_180008358
		dq rva word_180008278
		dq rva word_18000832A
		dq rva word_180008316
		dq rva word_180008302
		dq rva word_1800082E4
		dq rva word_1800082C8
		dq rva word_1800082B4
		dq rva word_1800082A0
		dq 0
;
; Import names for MSVCR100.dll
;
off_180007CC8	dq rva word_1800083F8	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_MSVCR100o
		dq rva word_180008186
		dq rva word_1800083F2
		dq rva word_18000826E
		dq rva word_180008266
		dq rva word_180008258
		dq rva word_18000824E
		dq rva word_18000822A
		dq rva word_180008214
		dq rva word_180008202
		dq rva word_1800081EA
		dq rva word_1800081DC
		dq rva word_1800081CC
		dq rva word_1800081C4
		dq rva word_1800081B6
		dq rva word_180008172
		dq rva word_18000817E
		dq rva word_1800083FE
		dq rva word_18000819C
		dq rva word_1800081AA
		dq 0
;
; Import names for libufun.dll
;
off_180007D70	dq rva word_180007FEE	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_libufuno
		dq rva word_180007E98
		dq rva word_180007EB6
		dq rva word_180007ECE
		dq rva word_180007EE4
		dq rva word_180007EF4
		dq rva word_1800080DC
		dq rva word_1800080C8
		dq rva word_1800080AA
		dq rva word_180008090
		dq rva word_18000807E
		dq rva word_18000805E
		dq rva word_18000804A
		dq rva word_180008038
		dq rva word_18000801C
		dq rva word_180008008
		dq rva word_180007E80
		dq rva word_180007FDE
		dq rva word_180007FCA
		dq rva word_180007FB0
		dq rva word_180007F92
		dq rva word_180007F84
		dq rva word_180007F64
		dq rva word_180007F4C
		dq rva word_180007F30
		dq rva word_180007F10
		dq rva word_180007F06
		dq 0
;
; Import names for libugopenint.dll
;
off_180007E50	dq rva word_180008114	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_libugopeninto
		dq rva word_18000811E
		dq rva word_18000813C
		dq rva word_180008146
		dq rva word_1800080FC
		dq 0
word_180007E80	dw 12A7h		; DATA XREF: .rdata:0000000180007DF0o
		db 'UF_VEC3_angle_between',0
word_180007E98	dw 0D92h		; DATA XREF: .rdata:0000000180007D78o
		db 'UF_PART_create_history_list',0
word_180007EB6	dw 0C2Dh		; DATA XREF: .rdata:0000000180007D80o
		db 'UF_MOM_extend_xlator',0
		align 2
word_180007ECE	dw 3AAh			; DATA XREF: .rdata:0000000180007D88o
		db 'UF_CSYS_create_csys',0
word_180007EE4	dw 13B4h		; DATA XREF: .rdata:0000000180007D90o
		db 'UF_terminate',0
		align 4
word_180007EF4	dw 0C29h		; DATA XREF: .rdata:0000000180007D98o
		db 'UF_MOM_ask_mom',0
		align 2
word_180007F06	dw 139Ch		; DATA XREF: .rdata:0000000180007E40o
		db 'UF_free',0
word_180007F10	dw 0C28h		; DATA XREF: .rdata:0000000180007E38o
		db 'UF_MOM_ask_interp_from_param',0
		align 10h
word_180007F30	dw 0D80h		; DATA XREF: .rdata:0000000180007E30o
		db 'UF_PART_ask_part_history',0
		align 4
word_180007F4C	dw 3ABh			; DATA XREF: .rdata:0000000180007E28o
		db 'UF_CSYS_create_matrix',0
word_180007F64	dw 0C22h		; DATA XREF: .rdata:0000000180007E20o
		db 'UF_MOM_ask_assoc_double_array',0
word_180007F84	dw 12AEh		; DATA XREF: .rdata:0000000180007E18o
		db 'UF_VEC3_dot',0
word_180007F92	dw 1266h		; DATA XREF: .rdata:0000000180007E10o
		db 'UF_UI_close_listing_window',0
		align 10h
word_180007FB0	dw 1D2h			; DATA XREF: .rdata:0000000180007E08o
		db 'UF_ASSEM_ask_work_part',0
		align 2
word_180007FCA	dw 13A6h		; DATA XREF: .rdata:0000000180007E00o
		db 'UF_is_initialized',0
word_180007FDE	dw 13A4h		; DATA XREF: .rdata:0000000180007DF8o
		db 'UF_initialize',0
word_180007FEE	dw 0D7Ch		; DATA XREF: .rdata:off_180007D70o
		db 'UF_PART_ask_nth_history',0
word_180008008	dw 0C2Ah		; DATA XREF: .rdata:0000000180007DE8o
		db 'UF_MOM_ask_string',0
word_18000801C	dw 0D7Eh		; DATA XREF: .rdata:0000000180007DE0o
		db 'UF_PART_ask_num_histories',0
word_180008038	dw 3B0h			; DATA XREF: .rdata:0000000180007DD8o
		db 'UF_CSYS_set_wcs',0
word_18000804A	dw 0C35h		; DATA XREF: .rdata:0000000180007DD0o
		db 'UF_MOM_set_string',0
word_18000805E	dw 0C2Eh		; DATA XREF: .rdata:0000000180007DC8o
		db 'UF_MOM_set_assoc_double_array',0
word_18000807E	dw 12BAh		; DATA XREF: .rdata:0000000180007DC0o
		db 'UF_VEC3_unitize',0
word_180008090	dw 0C2Ch		; DATA XREF: .rdata:0000000180007DB8o
		db 'UF_MOM_execute_command',0
		align 2
word_1800080AA	dw 0D93h		; DATA XREF: .rdata:0000000180007DB0o
		db 'UF_PART_delete_history_list',0
word_1800080C8	dw 0C31h		; DATA XREF: .rdata:0000000180007DA8o
		db 'UF_MOM_set_double',0
word_1800080DC	dw 3AEh			; DATA XREF: .rdata:0000000180007DA0o
		db 'UF_CSYS_map_point',0
aLibufun_dll	db 'libufun.dll',0      ; DATA XREF: .rdata:0000000180007BDCo
word_1800080FC	dw 0CBh			; DATA XREF: .rdata:0000000180007E70o
		db 'UF_UI_lock_ug_access',0
		align 4
word_180008114	dw 127h			; DATA XREF: .rdata:off_180007E50o
		db 'uc1608',0
		align 2
word_18000811E	dw 0BFh			; DATA XREF: .rdata:0000000180007E58o
		db 'UF_UI_display_nonmodal_msg',0
		align 4
word_18000813C	dw 123h			; DATA XREF: .rdata:0000000180007E60o
		db 'uc1601',0
		align 2
word_180008146	dw 0FEh			; DATA XREF: .rdata:0000000180007E68o
		db 'UF_UI_unlock_ug_access',0
		align 20h
aLibugopenint_d	db 'libugopenint.dll',0 ; DATA XREF: .rdata:0000000180007BF0o
		align 2
word_180008172	dw 5CFh			; DATA XREF: .rdata:0000000180007D40o
		db 'sprintf_s',0
word_18000817E	dw 538h			; DATA XREF: .rdata:0000000180007D48o
		db 'atoi',0
		align 2
word_180008186	dw 537h			; DATA XREF: .rdata:0000000180007CD0o
		db 'atof',0
		align 2
aMsvcr100_dll	db 'MSVCR100.dll',0     ; DATA XREF: .rdata:0000000180007C04o
		align 4
word_18000819C	dw 307h			; DATA XREF: .rdata:0000000180007D58o
		db '_malloc_crt',0
word_1800081AA	dw 286h			; DATA XREF: .rdata:0000000180007D60o
		db '_initterm',0
word_1800081B6	dw 287h			; DATA XREF: .rdata:0000000180007D38o
		db '_initterm_e',0
word_1800081C4	dw 563h			; DATA XREF: .rdata:0000000180007D30o
		db 'free',0
		align 4
word_1800081CC	dw 1F2h			; DATA XREF: .rdata:0000000180007D28o
		db '_encoded_null',0
word_1800081DC	dw 19Eh			; DATA XREF: .rdata:0000000180007D20o
		db '_amsg_exit',0
		align 2
word_1800081EA	dw 11Eh			; DATA XREF: .rdata:0000000180007D18o
		db '__C_specific_handler',0
		align 2
word_180008202	dw 11Fh			; DATA XREF: .rdata:0000000180007D10o
		db '__CppXcptFilter',0
word_180008214	dw 146h			; DATA XREF: .rdata:0000000180007D08o
		db '__crt_debugger_hook',0
word_18000822A	dw 140h			; DATA XREF: .rdata:0000000180007D00o
		db '__clean_type_info_names_internal',0
		align 2
word_18000824E	dw 45Bh			; DATA XREF: .rdata:0000000180007CF8o
		db '_unlock',0
word_180008258	dw 148h			; DATA XREF: .rdata:0000000180007CF0o
		db '__dllonexit',0
word_180008266	dw 2F6h			; DATA XREF: .rdata:0000000180007CE8o
		db '_lock',0
word_18000826E	dw 39Dh			; DATA XREF: .rdata:0000000180007CE0o
		db '_onexit',0
word_180008278	dw 0EEh			; DATA XREF: .rdata:0000000180007C80o
		db 'EncodePointer',0
word_180008288	dw 0CBh			; DATA XREF: .rdata:0000000180007C40o
		db 'DecodePointer',0
word_180008298	dw 4C0h			; DATA XREF: .rdata:0000000180007C48o
		db 'Sleep',0
word_1800082A0	dw 4CEh			; DATA XREF: .rdata:0000000180007CB8o
		db 'TerminateProcess',0
		align 4
word_1800082B4	dw 1C6h			; DATA XREF: .rdata:0000000180007CB0o
		db 'GetCurrentProcess',0
word_1800082C8	dw 4E2h			; DATA XREF: .rdata:0000000180007CA8o
		db 'UnhandledExceptionFilter',0
		align 4
word_1800082E4	dw 4B3h			; DATA XREF: .rdata:0000000180007CA0o
		db 'SetUnhandledExceptionFilter',0
word_180008302	dw 302h			; DATA XREF: .rdata:0000000180007C98o
		db 'IsDebuggerPresent',0
word_180008316	dw 426h			; DATA XREF: .rdata:0000000180007C90o
		db 'RtlVirtualUnwind',0
		align 2
word_18000832A	dw 41Fh			; DATA XREF: .rdata:0000000180007C88o
		db 'RtlLookupFunctionEntry',0
		align 4
word_180008344	dw 418h			; DATA XREF: .rdata:off_180007C38o
		db 'RtlCaptureContext',0
word_180008358	dw 0E2h			; DATA XREF: .rdata:0000000180007C78o
		db 'DisableThreadLibraryCalls',0
word_180008374	dw 3A9h			; DATA XREF: .rdata:0000000180007C70o
		db 'QueryPerformanceCounter',0
word_18000838E	dw 29Ah			; DATA XREF: .rdata:0000000180007C68o
		db 'GetTickCount',0
		align 2
word_18000839E	dw 1CBh			; DATA XREF: .rdata:0000000180007C60o
		db 'GetCurrentThreadId',0
		align 4
word_1800083B4	dw 1C7h			; DATA XREF: .rdata:0000000180007C58o
		db 'GetCurrentProcessId',0
word_1800083CA	dw 280h			; DATA XREF: .rdata:0000000180007C50o
		db 'GetSystemTimeAsFileTime',0
aKernel32_dll	db 'KERNEL32.dll',0     ; DATA XREF: .rdata:0000000180007C18o
		align 2
word_1800083F2	dw 5CAh			; DATA XREF: .rdata:0000000180007CD8o
		db 'sin',0
word_1800083F8	dw 543h			; DATA XREF: .rdata:off_180007CC8o
		db 'cos',0
word_1800083FE	dw 5D0h			; DATA XREF: .rdata:0000000180007D50o
		db 'sqrt',0
		align 10h
;
; Export directory for mom_user_MAZAK_INTEGREX_i630_64.dll
;
		dd 0			; Characteristics
		dd 584565CDh		; TimeDateStamp: Mon Dec 05 13:04:13 2016
		dw 0			; MajorVersion
		dw 0			; MinorVersion
		dd rva aMom_user_mazak	; Name
		dd 1			; Base
		dd 3			; NumberOfFunctions
		dd 3			; NumberOfNames
		dd rva off_180008438	; AddressOfFunctions
		dd rva off_180008444	; AddressOfNames
		dd rva word_180008450	; AddressOfNameOrdinals
;
; Export Address Table for mom_user_MAZAK_INTEGREX_i630_64.dll
;
off_180008438	dd rva NXSigningResource, rva entry_rtv_mom_cp_part_attr
					; DATA XREF: .rdata:000000018000842Co
		dd rva ufusr_ask_unload
;
; Export Names Table for mom_user_MAZAK_INTEGREX_i630_64.dll
;
off_180008444	dd rva aNxsigningresou,	rva aEntry_rtv_mom_, rva aUfusr_ask_unlo
					; DATA XREF: .rdata:0000000180008430o
					; "NXSigningResource"
;
; Export Ordinals Table	for mom_user_MAZAK_INTEGREX_i630_64.dll
;
word_180008450	dw 0, 1, 2		; DATA XREF: .rdata:0000000180008434o
aMom_user_mazak	db 'mom_user_MAZAK_INTEGREX_i630_64.dll',0
					; DATA XREF: .rdata:000000018000841Co
aNxsigningresou	db 'NXSigningResource',0 ; DATA XREF: .rdata:off_180008444o
aEntry_rtv_mom_	db 'entry_rtv_mom_cp_part_attr',0 ; DATA XREF: .rdata:off_180008444o
aUfusr_ask_unlo	db 'ufusr_ask_unload',0 ; DATA XREF: .rdata:off_180008444o
		align 1000h
_rdata		ends

; Section 3. (virtual address 00009000)
; Virtual size			: 00000920 (   2336.)
; Section size in file		: 00000400 (   1024.)
; Offset to raw	data for section: 00006E00
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	para public 'DATA' use64
		assume cs:_data
		;org 180009000h
qword_180009000	dq 2B992DDFA232h	; DATA XREF: sub_1800010F0+1Ar
					; __security_check_cookier ...
qword_180009008	dq 0FFFFD466D2205DCDh	; DATA XREF: __report_gsfailure+E4r
					; __security_init_cookie+29w ...
dword_180009010	dd 0FFFFFFFFh		; DATA XREF: __DllMainCRTStartup:loc_180003B71w
					; __DllMainCRTStartup:$LN21w ...
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		dq offset unk_1800052B0
unk_180009028	db    0			; DATA XREF: sub_1800011E1+551o
		db    0
		db    0
		db    0
		db    0
		db    0
		db 0F0h	; 
		db  3Fh	; ?
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_180009040	db    0			; DATA XREF: sub_1800011E1+543o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db 0F0h	; 
		db  3Fh	; ?
unk_180009058	db    0			; DATA XREF: sub_1800011E1:loc_1800016B2o
					; sub_1800011E1+527o ...
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_180009060	db    0			; DATA XREF: sub_1800011E1+4EFo
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
qword_180009068	dq 3FF0000000000000h	; DATA XREF: sub_1800011E1+52Ew
		db  4Eh	; N
		db  58h	; X
		db  41h	; A
		db  55h	; U
		db  54h	; T
		db  48h	; H
		db  42h	; B
		db  4Ch	; L
		db  4Fh	; O
		db  43h	; C
		db  4Bh	; K
		db  2Dh	; -
		db    1
		db  31h	; 1
		db  20h
		db  31h	; 1
		db  33h	; 3
		db  30h	; 0
		db  36h	; 6
		db  33h	; 3
		db  38h	; 8
		db  34h	; 4
		db  20h
		db  2Dh	; -
		db  20h
		db  43h	; C
		db  4Ah	; J
		db  53h	; S
		db  43h	; C
		db  20h
		db  43h	; C
		db  6Fh	; o
		db  6Eh	; n
		db  73h	; s
		db  75h	; u
		db  6Ch	; l
		db  74h	; t
		db  69h	; i
		db  6Eh	; n
		db  67h	; g
		db  20h
		db  67h	; g
		db  72h	; r
		db  6Fh	; o
		db  75h	; u
		db  70h	; p
		db  20h
		db  35h	; 5
		db  41h	; A
		db  37h	; 7
		db  34h	; 4
		db  54h	; T
		db  34h	; 4
		db  31h	; 1
		db  4Fh	; O
		db  39h	; 9
		db  4Eh	; N
		db  58h	; X
		db  30h	; 0
		db  56h	; V
		db    2
		db  29h	; )
		db    0
		db  92h	; í
		db  8Ch	; å
		db 0B9h	; π
		db  35h	; 5
		db  50h	; P
		db  40h	; @
		db  84h	; Ñ
		db 0B8h	; ∏
		db  72h	; r
		db 0D8h	; ÿ
		db  36h	; 6
		db 0B7h	; ∑
		db    3
		db    9
		db 0DAh	; ⁄
		db  54h	; T
		db 0E0h	; ‡
		db  40h	; @
		db 0FFh
		db 0ECh	; Ï
		db 0A6h	; ¶
		db  26h	; &
		db  0Eh
		db 0B4h	; ¥
		db  94h	; î
		db 0EEh	; Ó
		db  7Ah	; z
		db  96h	; ñ
		db    1
		db 0B8h	; ∏
		db 0EDh	; Ì
		db  12h
		db  0Ch
		db 0E6h	; Ê
		db 0FAh	; ˙
		db  16h
		db 0A4h	; §
		db  42h	; B
		db  18h
		db  10h
		db    2
		db  29h	; )
		db    0
		db 0ABh	; ´
		db 0EAh	; Í
		db  58h	; X
		db  42h	; B
		db 0F2h	; Ú
		db 0D6h	; ÷
		db  7Dh	; }
		db 0C3h	; √
		db 0F2h	; Ú
		db  70h	; p
		db  32h	; 2
		db 0E7h	; Á
		db 0D7h	; ◊
		db 0AEh	; Æ
		db 0DFh	; ﬂ
		db  48h	; H
		db  44h	; D
		db    6
		db  30h	; 0
		db  28h	; (
		db 0DFh	; ﬂ
		db  2Ah	; *
		db  9Ah	; ö
		db  2Ah	; *
		db  51h	; Q
		db  9Eh	; û
		db 0DCh	; ‹
		db 0EEh	; Ó
		db  1Bh
		db  46h	; F
		db  8Ah	; ä
		db  5Bh	; [
		db  13h
		db  8Fh	; è
		db 0ACh	; ¨
		db    3
		db  78h	; x
		db  53h	; S
		db  9Ch	; ú
		db  9Ch	; ú
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  4Eh	; N
		db  58h	; X
		db  41h	; A
		db  55h	; U
		db  54h	; T
		db  48h	; H
		db  42h	; B
		db  4Ch	; L
		db  4Fh	; O
		db  43h	; C
		db  4Bh	; K
		db    0
		db    0
		db  75h	; u
		db  98h	; ò
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
dword_180009290	dd 0			; DATA XREF: _CRT_INIT+2Dr
					; _CRT_INIT+40w ...
		align 20h
dword_1800092A0	dd 0			; DATA XREF: __report_gsfailure+C4w
					; .rdata:ExceptionInfoo
dword_1800092A4	dd 0			; DATA XREF: __report_gsfailure+CEw
		align 10h
qword_1800092B0	dq 0			; DATA XREF: __report_gsfailure+AEw
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
dword_180009338	dd 0			; DATA XREF: __report_gsfailure+F6w
					; __report_gsfailure+11Br
		align 20h
; struct _CONTEXT ContextRecord
ContextRecord	_CONTEXT <?>		; DATA XREF: __report_gsfailure+Co
					; __report_gsfailure+61o ...
unk_180009810	db    ?	;		; DATA XREF: sub_180003E14o
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_180009820	dd ?			; DATA XREF: entry_rtv_mom_cp_part_attr+8Cw
					; sub_180001A4E:loc_180001C06w	...
		align 8
qword_180009828	dq ?			; DATA XREF: sub_1800011E1+53Co
					; sub_1800011E1+55Er ...
qword_180009830	dq ?			; DATA XREF: sub_1800011E1+514o
					; sub_1800011E1+5B2r
qword_180009838	dq ?			; DATA XREF: sub_1800011E1:loc_18000130Do
					; sub_1800011E1+27Fr ...
qword_180009840	dq ?			; DATA XREF: sub_1800011E1+14Ao
					; sub_1800011E1+2EBr ...
qword_180009848	dq ?			; DATA XREF: sub_1800011E1+168o
					; sub_1800011E1+287r ...
qword_180009850	dq ?			; DATA XREF: sub_1800011E1+2DBo
					; sub_1800011E1+2FFw ...
qword_180009858	dq ?			; DATA XREF: sub_1800011E1+310w
					; sub_1800011E1+36Fr ...
qword_180009860	dq ?			; DATA XREF: sub_1800011E1+29Bw
					; sub_1800011E1+353r ...
		align 20h
qword_180009880	dq ?			; DATA XREF: sub_1800011E1+1E0o
					; sub_1800011E1+21Cr ...
qword_180009888	dq ?			; DATA XREF: sub_1800011E1+1FEo
					; sub_1800011E1+224r ...
qword_180009890	dq ?			; DATA XREF: sub_1800011E1+186o
					; sub_1800011E1+2D4o ...
qword_180009898	dq ?			; DATA XREF: sub_1800011E1+1A4o
					; sub_1800011E1+35Br ...
qword_1800098A0	dq ?			; DATA XREF: sub_1800011E1+1C2o
					; sub_1800011E1+326r ...
qword_1800098A8	dq ?			; DATA XREF: sub_1800011E1+336o
					; sub_1800011E1+344o ...
qword_1800098B0	dq ?			; DATA XREF: sub_1800011E1+38Fw
					; sub_1800011E1+3CAr
qword_1800098B8	dq ?			; DATA XREF: sub_1800011E1+377w
					; sub_1800011E1+3E9r
unk_1800098C0	db    ?	;		; DATA XREF: sub_1800011E1+33Do
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
qword_1800098C8	dq ?			; DATA XREF: sub_1800011E1:loc_180001233o
					; sub_1800011E1+B2o ...
qword_1800098D0	dq ?			; DATA XREF: sub_1800011E1+70o
					; sub_1800011E1+F7r
qword_1800098D8	dq ?			; DATA XREF: sub_1800011E1+8Eo
					; sub_1800011E1+116r
qword_1800098E0	dq ?			; DATA XREF: sub_1800011E1+253w
qword_1800098E8	dq ?			; DATA XREF: sub_1800011E1+25Bw
qword_1800098F0	dq ?			; DATA XREF: sub_1800011E1+2CDo
					; sub_1800011E1+31Er
dword_1800098F8	dd ?			; DATA XREF: _CRT_INIT:loc_18000396Ar
					; _CRT_INIT:loc_180003A33w ...
		align 20h
qword_180009900	dq ?			; DATA XREF: _CRT_INIT+67w
					; _CRT_INIT+152w ...
; PVOID	qword_180009908
qword_180009908	dq ?			; DATA XREF: pre_c_init+24w
					; _CRT_INIT+ADr ...
; PVOID	Ptr
Ptr		dq ?			; DATA XREF: pre_c_init+1Dw
					; _CRT_INIT:loc_180003984r ...
qword_180009918	dq ?			; DATA XREF: _CRT_INIT:loc_180003AF5r
					; _CRT_INIT+20Eo ...
		align 800h
_data		ends

; Section 4. (virtual address 0000A000)
; Virtual size			: 00000144 (	324.)
; Section size in file		: 00000200 (	512.)
; Offset to raw	data for section: 00007200
; Flags	40000040: Data Readable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_pdata		segment	para public 'DATA' use64
		assume cs:_pdata
		;org 18000A000h
ExceptionDir	RUNTIME_FUNCTION <rva entry_rtv_mom_cp_part_attr, rva algn_1800010E6, \
				  rva stru_180007BB8>
		RUNTIME_FUNCTION <rva sub_1800010F0, rva sub_1800011E1,	\
				  rva stru_180007B9C>
		RUNTIME_FUNCTION <rva sub_1800011E1, rva sub_18000182F,	\
				  rva stru_180007B7C>
		RUNTIME_FUNCTION <rva sub_18000182F, rva sub_180001A4E,	\ ; jumptable 0000000180001231 case 5
				  rva stru_180007B68>
		RUNTIME_FUNCTION <rva sub_180001A4E, rva sub_180003590,	\ ; jumptable 0000000180001231 case 5
				  rva stru_180007B58>
		RUNTIME_FUNCTION <rva sub_180003590, rva loc_1800035C8,	\
				  rva stru_180007B48>
		RUNTIME_FUNCTION <rva loc_1800035C8, rva algn_180003716, \
				  rva stru_180007B28>
		RUNTIME_FUNCTION <rva sub_180003730, rva byte_18000385B, \
				  rva stru_180007B1C>
		RUNTIME_FUNCTION <rva __security_check_cookie, rva algn_18000388F, \
				  rva stru_180007A40>
		RUNTIME_FUNCTION <rva pre_c_init, rva algn_1800038EE, \
				  rva stru_180007A44>
		RUNTIME_FUNCTION <rva _CRT_INIT, rva algn_180003B49, \
				  rva stru_180007A4C>
		RUNTIME_FUNCTION <rva __DllMainCRTStartup, rva algn_180003C85, \
				  rva stru_180007A68>
		RUNTIME_FUNCTION <rva DllEntryPoint, rva algn_180003CC5, \
				  rva stru_180007AA4>
		RUNTIME_FUNCTION <rva __report_gsfailure, rva algn_180003E12, \
				  rva stru_180007AB4>
		RUNTIME_FUNCTION <rva _onexit_0, rva atexit, rva stru_180007ABC>
		RUNTIME_FUNCTION <rva atexit, rva algn_180003EE7, rva stru_180007BC8>
		RUNTIME_FUNCTION <rva sub_180003EE8, rva sub_180003F20,	\
				  rva stru_180007ADC>
		RUNTIME_FUNCTION <rva sub_180003F20, rva algn_180003F58, \
				  rva stru_180007ADC>
		RUNTIME_FUNCTION <rva _IsNonwritableInCurrentImage, \
				  rva algn_180004021, rva stru_180007AF0>
		RUNTIME_FUNCTION <rva DllMain, rva algn_180004063, rva stru_180007BC8>
		RUNTIME_FUNCTION <rva __security_init_cookie, rva algn_180004117, \
				  rva stru_180007B10>
		RUNTIME_FUNCTION <rva __GSHandlerCheckCommon, rva algn_1800041A7, \
				  rva stru_180007A44>
		RUNTIME_FUNCTION <rva __GSHandlerCheck,	rva algn_1800041C5, \
				  rva stru_180007BC8>
		RUNTIME_FUNCTION <rva __DllMainCRTStartup$filt$0, \
				  rva algn_180004204+1,	rva stru_180007AE8>
		RUNTIME_FUNCTION <rva __DllMainCRTStartup$fin$1, rva _onexit$fin$0, \
				  rva stru_180007AE8>
		RUNTIME_FUNCTION <rva _onexit$fin$0, rva algn_180004244+1, \
				  rva stru_180007AE8>
		RUNTIME_FUNCTION <rva unknown_libname_1, rva algn_180004271+1, \ ; Microsoft VisualC v7/11 64bit runtime
				  rva stru_180007AE8>
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		align 1000h
_pdata		ends


		end DllEntryPoint
