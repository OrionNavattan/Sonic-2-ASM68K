@echo off

rem assemble final rom
IF EXIST s2built.bin move /Y s2built.bin s2built.prev.bin >NUL
axm68k /m /k /p sonic2.asm, s2built.bin >errors.txt, , sonic2.lst
type errors.txt

rem check for success and fix header
rem IF NOT EXIST s1built.bin PAUSE & EXIT 2
rem fixheadr.exe s1built.bin
pause
