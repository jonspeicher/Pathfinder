#!/usr/bin/env python

# dezulu.py - Finds all 24-hour time referrences in a file and offsets them by a supplied value
#
# Syntax:
#
#   dezuly.py <offset>
#
# Where:
#
#   <offset> is the offset of the current timezone from Zulu time (can be positive or negative)

# Copyright (c) 2010 Jonathan Speicher (jon.speicher@gmail.com)
# Licensed under the MIT license: http://creativecommons.org/licenses/MIT

import functools, re, sys

def compute_offset(match, offset):
    return str(int(match.group(1)) + offset) + ':'
    
def dezulu(line, offset):
    substitutor = functools.partial(compute_offset, offset = offset)
    return re.sub('(\d\d):', substitutor, line).rstrip()

for line in sys.stdin:
    print(dezulu(line, int(sys.argv[1])))