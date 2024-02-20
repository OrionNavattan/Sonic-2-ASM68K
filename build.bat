@echo off

rem Assemble the compressed music in three sections. This is a workaround for ASM68K's seeming inability to output more than 13 binary files in a single run.
rem Even so, still ridiculously fast.
axm68k /m /k /p "sound\Compressed Music 1.asm", "sound\Compressed Music.bin" >"sound\errors 1.txt", ,"sound\Compressed Music 1.lst"
type "sound\errors 1.txt"

IF NOT EXIST "sound\Compressed Music.bin" PAUSE & EXIT 2

axm68k /m /k /p "sound\Compressed Music 2.asm", "sound\Compressed Music.bin" >"sound\errors 2.txt", ,"sound\Compressed Music 2.lst"
type "sound\errors 2.txt"

IF NOT EXIST "sound\Compressed Music.bin" PAUSE & EXIT 2

axm68k /m /k /p "sound\Compressed Music 3.asm", "sound\Compressed Music.bin" >"sound\errors 3.txt", ,"sound\Compressed Music 3.lst"
type "sound\errors 3.txt"

IF NOT EXIST "sound\Compressed Music.bin" PAUSE & EXIT 2

rem delete this garbage file
del "sound\Compressed Music.bin"

echo Compressing Saxman files
for %%f in ("sound\music\compressed\*.unc") do "build tools\saxman.exe" "-a" "%%f" "sound\music\compressed\%%~nf.sax"

echo Compressing Kosinski files
for %%f in ("art\kosinski\*.unc") do "build tools\accurate_kosinski.exe" "%%f" "art\kosinski\%%~nf.kos"
for %%f in ("level\layout\*.unc") do "build tools\accurate_kosinski.exe" "%%f" "level\layout\%%~nf.kos"
for %%f in ("mappings\16x16\*.unc") do "build tools\accurate_kosinski.exe" "%%f" "mappings\16x16\%%~nf.kos"
for %%f in ("mappings\128x128\*.unc") do "build tools\accurate_kosinski.exe" "%%f" "mappings\128x128\%%~nf.kos"
for %%f in ("collision\*.unc") do "build tools\accurate_kosinski.exe" "%%f" "collision\%%~nf.kos"
"build tools\accurate_kosinski.exe" "misc\Special Stage Object Locations.unc"	"misc\Special Stage Object Locations.kos"
"build tools\accurate_kosinski.exe" "misc\Special Stage Object Perspective Data.unc"	"misc\Special Stage Object Perspective Data.kos"

echo Compressing Nemesis files
for %%f in ("art\nemesis\*.unc") do "build tools\clownnemesis.exe" "-ca" "%%f" "art\nemesis\%%~nf.nem"
"build tools\clownnemesis.exe" "-ca" "misc\Special Stage Level Layouts.unc"	"misc\Special Stage Level Layouts.nem"

rem in the future, would like to compress Enigma files at build time if an accurate or more efficient compresser is developed
rem for %%f in ("mappings\planes\*.unc") do "build tools\enicmp.exe" "%%f" "mappings\planes\%%~nf.eni"

rem assemble final rom, outputting the sound driver and input data for S2 SoundDriver Compress to a separate file
IF EXIST s2built.bin move /Y s2built.bin s2built.prev.bin >NUL
axm68k /m /k /p sonic2.asm, s2built.bin >errors.txt, , sonic2.lst
type errors.txt

IF NOT EXIST s2built.bin PAUSE & EXIT 2

rem compress the sound driver and insert in rom. For more efficient compression, change the final two arguments to "build tools\saxcmp.exe" "-S"
"build tools\S2 SoundDriver Compress.exe" "sound\Sound Driver.unc" "sound\MergeData.dat" s2built.bin "build tools\saxmandrv.exe" "e" "-s"

rem if using an error handler such as Vladikomper's, processing and appending the symbol table is done here

rem fix the ROM end address and calculate the checksum
"build tools\fixheadr.exe" s2built.bin
pause