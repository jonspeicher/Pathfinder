#!/usr/bin/env python

import glob, os

for filename in glob.glob('*'):
    os.rename(filename, filename.lower())