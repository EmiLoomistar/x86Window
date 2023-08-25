@echo off

as.exe game.asm -o game.o
gcc.exe game.o libraylib.a -lopengl32 -lgdi32 -lwinmm -o game.exe
del game.o
game.exe


