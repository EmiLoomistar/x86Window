.include "tools.asm"


START
mov $1024, par1.32
mov $720, par2.32
lea WindowTitle(rip), par3
call InitWindow

#GAMEPLAY

#GAMELOOP
mainLoop:
	#INPUT
	
	#UPDATE
	
	#RENDER
	call BeginDrawing
	
	mov $0xFF212121, par1.32
	call ClearBackground
	
	mov $0, par1.32
	mov $0, par2.32
	call DrawFPS	

	mov $512-64, r15d
	circleLoop:
	
		mov r15d, par1.32
		mov $512/2, par2.32
		movss CircleRadius(rip), xmm2
		mov $0xffffffff, par4.32
			
		call DrawCircle
		sub $64, r15d
		jnz circleLoop

	call EndDrawing

	call WindowShouldClose
	test eax, eax
	jz mainLoop

#CLOSE
call CloseWindow
EXIT

WindowTitle: .string "Emi Assembly"
CircleRadius: .single 15.0
someText: .string "Some texto"