#!/usr/bin/env python

# dezulu.py - Finds all 24-hour time references in stdin and offsets them by a supplied value
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

import re, sys
    
def dezulu(line, offset):
    return re.sub('(\d\d):', lambda m: str(int(m.group(1)) + offset) + ':', line).rstrip()

for line in sys.stdin:
    print(dezulu(line, int(sys.argv[1])))