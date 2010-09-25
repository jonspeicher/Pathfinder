#!/usr/bin/env python

# exif2csv.py - Build a CSV file containing filenames and EXIF data for all JPG files in a directory
#
# Syntax:
#
#   exif2csv.py <csv> <tag>
#
# Where:
#
#   <csv> is the name of the CSV file to write
#   <tag> is the name of the EXIF tag to read from each JPG file in the directory
#
# Requires EXIF.py by Gene Cash and Ianare Sevi (http://sourceforge.net/projects/exif-py)

# Copyright (c) 2010 Jonathan Speicher (jon.speicher@gmail.com)
# Licensed under the MIT license: http://creativecommons.org/licenses/MIT

import EXIF, glob, sys

class CsvWriter(object):
    """Writes a list of tuples to a file, one comma-separated tuple per line"""
    def __init__(self, filename):
        self.__filename = filename
    def append(self, tuples):
        with open(self.__filename, 'a') as csvfile:
            csvfile.writelines(self._join_tuples(tuples))
    def _join_tuples(self, tuples):
        return [','.join(tuple) + '\n' for tuple in tuples]

class ExifReader(object):
    """Reads specified EXIF tags from a specified file"""
    def get_tag(self, filename, tag):
        with open(filename, 'rb') as imgfile:
            tags = EXIF.process_file(imgfile, details = False)
            return str(tags['EXIF ' + tag])
            
class ExifBuilder(object):
    """Builds a list of tuples containing specified EXIF data for all image files matching a glob"""
    def __init__(self, filespec, reader):
        self.__filespec = filespec
        self.__reader = reader
    def build(self, tag):
        exif = []
        for filename in glob.glob(self.__filespec):
            exif.append((self.__reader.get_tag(filename, tag), filename))
        return exif
        
reader = ExifReader()
builder = ExifBuilder('*.jpg', reader)
writer = CsvWriter(sys.argv[1])

exif = builder.build(sys.argv[2])
writer.append(exif)