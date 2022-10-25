@echo off

rem Assemble the compressed music in three sections. This is a workaround for ASM68K's seeming inability to output more than 13 binary files in a single run.
axm68k /m /k /p "sound\Compressed Music 1.asm", "sound\Compressed Music.bin" >"sound\errors 1.txt", ,"sound\Compressed Music 1.lst"
type "sound\errors 1.txt"

axm68k /m /k /p "sound\Compressed Music 2.asm", "sound\Compressed Music.bin" >"sound\errors 2.txt", ,"sound\Compressed Music 2.lst"
type "sound\errors 2.txt"

axm68k /m /k /p "sound\Compressed Music 3.asm", "sound\Compressed Music.bin" >"sound\errors 3.txt", ,"sound\Compressed Music 3.lst"
type "sound\errors 3.txt"


rem sompress Saxman files. for more efficient compression, remove "-a" from the below command.
for %%f in ("sound\music\compressed\*.unc") do "build tools\saxman.exe" "-a" "%%f" "sound\music\compressed\%%~nf.sax"

rem compress Kosinski files. for more efficient compression, change the below command from "kosinski-accurate" to "kosinski."
rem verify that level layouts are in fact kosinski compressed

rem optionally compress Nemesis files. for more efficient compression, uncomment the below line. (WARNING: THIS CANNOT BE UNDONE.)


rem assemble final rom
IF EXIST s2built.bin move /Y s2built.bin s2built.prev.bin >NUL
axm68k /m /k /p sonic2.asm, s2built.bin >errors.txt, , sonic2.lst
type errors.txt

IF NOT EXIST s2built.bin PAUSE & EXIT 2

rem compress sound driver and insert in rom

rem fix checksum
"build tools\fixheadr" s2built.bin
pause
