// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// if 24576 != 0
// i=16384
// while i<=24575
//  i += 1
//  D=D+1
// end
// 最初にJMP
(LOOP)
  @24576
  D=M
  @END
  D;JEQ

  @16384
  D=A
  @i
  M=D

(LOOP1)
  @i
  D=M
  @24575
  D=D-A
  @END1
  D;JGT

  @i
  A=M
  M=-1

  @i
  M=M+1
  @LOOP1
  D;JMP
(END1)

  @24576
  D=M
  @END
  D;JNE

  @16384
  D=A
  @i
  M=D

(LOOP0)
  @i
  D=M
  @24575
  D=D-A
  @END0
  D;JGT

  @i
  A=M
  M=0

  @i
  M=M+1
  @LOOP0
  D;JMP
(END0)



(END)
@LOOP
0;JMP
