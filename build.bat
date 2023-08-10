@echo off

as.exe %1.asm -o %1.o
gcc.exe %1.o -o %1.exe libraylib.a -lopengl32 -lgdi32 -lwinmm
if %errorlevel%==0 (%1.exe)
del %1.o

