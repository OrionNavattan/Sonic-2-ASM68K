A WIP disassembly of Sonic the Hedgehog 2, targeting Hivebrain's AXM68K (ASM68K with Z80 macros).

This disassembly aims for an emphasis on readability, with styling based on Hivebrain's
2022 disassembly of Sonic 1. When completed, code will be split into many files in a systematic
and meaningful manner. Compared to SonicRetro's AS-based disassembly, many code labels and 
nearly all variables have been changed to match their counterparts in S1 HB 2022 where applicable,
and nearly all of the incbin'd files have been renamed. A compatibility file for variables and
constants is included that should make it easier to port code targeting Sonic 2 AS.

Sprite mappings and object position lists are in the form of assembly macros derived from
those used in S1 HB 2022. Like Sonic 2 AS, a large collection of bugfixes is included that 
can be toggled with a switch in the main sonic2.asm file. Also included is a switch to remove
unused code from the rom.


Summarize features, e.g., bugfixes

Short to-do list, invite collaboration




