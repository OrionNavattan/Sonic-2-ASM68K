A WIP disassembly of Sonic the Hedgehog 2, targeting Hivebrain's AXM68K (ASM68K with Z80 macros),
and in the future, Clownasmembler. Currently assembles Revision 1 bit-perfect,
with Revisions 0 and 2 planned.

This disassembly aims for an emphasis on readability, with styling based on Hivebrain's
2022 disassembly of Sonic 1. When completed, code will be structured into many files in a systematic
and meaningful manner. Compared to SonicRetro's AS-based disassembly, many routines and 
virtually all variables have been changed to match their counterparts in S1 HB 2022 where applicable,
and nearly all of the binary files have been renamed. However, for the sake of my own sanity,
the folder structure of Sonic 2 AS has been retained. The compatibility file includes 
equivalencies for most labels and variables to make porting from Sonic 2 AS easier.

Sprite mappings and DPLCS are in the form of SpriteMap macros taken from the old
MapMacros branch of Sonic 2 AS. I would like to port them to the system used by 
S1 HB 2022, though that will require also including binary versions to maintain
compatibility with SonLVL and Flex2. I would also like to use the objpos
macro-based system for object placement, again including binary versions for 
compatibility. Regardless, I do want to eventually give all mappings meaningful labels.

Kosinski files are stored uncompressed, and are compressed on build with lownancy's 
accurate compressor (renamed accurate_kosinski.exe). For the sake of allowing 
smaller file sizes, I also plan to include Flamewing's MDComp compressor for inaccurate but 
more efficient compression, switchable by changing the build script. I also want to allow 
optional recompression of Nemesis files in the same manner, though that will be a one-way 
trip until an accurate Nemesis compressor is developed. (I would love to offer this for 
Enigma compression as well, but currently all existing solutions seem to produce larger 
file sizes than the originals.)

Many macros have been taken straight from S1 HB 2022, including dma (renamed to dma__), gmptr, 
index, ptr, filedef, incfile, and plcm, though a few have been modified to work with 
changes in Sonic 2. Additionally, some macros have been ported from Sonic 2 AS, including 
clearRAM (eliminating the need to strictly align the end of RAM blocks) and those used
to handle the Revision 2 optimizations.

The sound driver is not yet buildable from Z80, nor does the solution required to patch
the Saxman decompressor exist yet. However, the most viable solution would be modifying 
DualPCMCompress, extending its functionality to allow it to patch the decompressor, 
and pass on the -a argument to the Saxman compressor. I have designed all of the assembler-side
code that such a solution would require, which can be found in comments in sonic2.asm
and the build script. That said, once the sound definitions have been completed
and the Z80 code itself is fully converted, DualPCMCompress will work in the interim,
allowing the rest of the ROM can be changed without breaking the sound driver. 
Editing the Z80 code can be done by means of running a build with
your changes, getting the size of the compressed driver in bytes, and manually changing the
value at movewZ80CompSize.

The Z80 code itself has had most constants and variables changed to 
match the Sonic 1 sound driver, mainly with the aim of allowing similarities to be evident,
and some syntax changes have been made to allow it to assemble in AXM68K, but it is still
early in work and still somewhat of a mess.

Music and sound is in the form of SMPS2ASM, based on an ASM68K port by Brainulator. 
The definitions for music notes, envelopes, and DAC samples have been reworked in a manner 
based on that used in S1 HB 2022 so that a single set is used by both the sound driver and 
SMPS2ASM. Although the implementation is different, all SMPS2ASM-based music should be
compatible.

Like Sonic 2 AS, a large collection of bugfixes will be included that can be toggled with 
a conditional in the main sonic2.asm file. I am also considering a conditional that will
allow removing various bits of unused or dead code from the rom.

What has been done so far has been a massive undertaking. If you would like to help out, 
I welcome feedback, suggestions, and pull requests that help towards improving this disassembly
and eventually bringing it to feature parity with Sonic 2 AS. 

TODO/WIP:

* Finish file definitions and conversion of incbins to incfiles
* Create music and sfx definitions
* Convert all index tables to use index and ptr macros
* Convert sound driver to use AXM68K
* Finish object and subroutine labels
* Finish symbolic constants for ost offsets and anything else that can use them
* Make solution for patching Saxman compressor at build time
* Port VRAM constants and implement plcm macros
* Clean up SonLVL INIs (some work has been done to keep them synced with filename changes, but they are currently broken and do not load)