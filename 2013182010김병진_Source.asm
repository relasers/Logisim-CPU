/*
00 NOP
10 NOT
20 SHL
30 SHR
40 JMP
50 BZ
60 BNZ
70 
80 LDA
90 ADD
a0 SUB
b0 AND
c0 OR
d0 XOR
e0 
f0 STR
*/


0xfd 01 // == D
0xfe 0a // == C
0xff 00 // == S

LDA_addr 	0xff 	//curr_adress == 00
ADD_addr 	0xfe	//curr_adress == 02
STR_addr 	0xff	//curr_adress == 04
NOP 		0x00	//curr_adress == 06
// 	S=c
LDA_addr 	0xfe	//curr_adress == 08
SUB_addr	0xfd	//curr_adress == 0a
BZ_addr 		0x0c 	//curr_adress == 0c	if (C-D==0) 
STR_addr 	0xfe	//curr_adress == 0e
//	C-=D
LDA_addr 	0xff	//curr_adress == 10
ADD_addr 	0xfe	//curr_adress == 12
STR_addr 	0xff 	//curr_adress == 14
JMP_addr 	0x08	//curr_adress == 16
//	S+=C