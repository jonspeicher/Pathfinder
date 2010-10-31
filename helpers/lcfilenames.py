#!/usr/bin/env python

# lcfilenames.py - Makes every file in the current directory have a lower-case filename
#
# Syntax:
#
#   lcfilenames.py

# Copyright (c) 2010 Jonathan Speicher (jon.speicher@gmail.com)
# Licensed under the MIT license: http://creativecommons.org/licenses/MIT

import glob, os

for filename in glob.glob('*'):
    os.rename(filename, filename.lower())