#!/usr/bin/env python3
# This python script by an anonymous friend was used to convert the sprite mappings
# from MainMemory's format to Hivebrain's format. This only converts the macro arguments;
# the macro names were done manually using BBEdit's Find and Replace functionality.
"""This python script converts Sonic the Hedgehog macro-based sprite mappings from MainMemory's format to Hivebrain's format. Note that it only converts the macro arguments."""
import argparse
import sys
import pcre2

find_expr = r'^(\s*piece\s[\-$0-9a-fA-F]+,\s*[\-$0-9a-fA-F]+,)\s*(\d),\s*(\d),\s*([\-$0-9a-fA-F]+),\s*(?:0|(?<xflip>1)),\s*(?:0|(?<yflip>1)),\s*(?:0|(?<pal2>1)|(?<pal3>2)|(?<pal4>3)),\s*(?:0|(?<pri>1))$'
replace_expr = r'$1 $2x$3, $4${xflip:+, xflip:}${yflip:+, yflip:}${pal2:+, pal2:}${pal3:+, pal3:}${pal4:+, pal4:}${pri:+, hi:}'


def parse_args():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("file", help="File on which to do in-place regex replacement", nargs="+")
    return parser.parse_args()

def main():
    config = parse_args()
    pattern = pcre2.compile(find_expr, options=pcre2.CompileOption.MULTILINE)
    for path in config.file:
        content = open(path, "r").read()
        output = pattern.substitute(replace_expr, content, options=pcre2.SubstituteOption.EXTENDED | pcre2.SubstituteOption.GLOBAL)
        open(path, "w").write(output)

if __name__ == '__main__':
    main()