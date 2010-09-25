exif2csv
========

exif2csv creates a CSV file containing EXIF data from JPG image files in a directory.

Description
===========

This quick and dirty script creates a comma-separated value file with rows for each JPG image file
in the current working directory.  The row contains the image file name as well as the value of one
EXIF tag extracted from that image file.

Requirements
============

* EXIF.py (http://sourceforge.net/projects/exif-py)

I've tested exif2csv with Python 2.6 and EXIF.py 1.1.0 on Mac OS X 10.6.4 and on **nothing else**.

Installation
============

First, install the required dependencies.  EXIF.py must be downloaded and placed into your Python
module search path.  

exif2csv may be placed anywhere you wish.

Usage
=====

* Change to the directory containing the JPG files you wish to catalog
* Type:
  * `exif2csv.py <csv> <tag>`
* Where:
  * `csv` is the name of the CSV file to write
  * `tag` is the name of the EXIF tag to read from each JPG file in the directory

Tests
=====

No unit tests are provided with the source distribution at this time.

                        Uninstallation
                        ==============

                        Should you wish to remove snore, simply:

                        * Change to your Python installation's `site-packages` directory
                        * Remove the directory `snore-X.X-pyY.Y.egg` and its contents from the `site-packages` directory
                        * Remove the line referring to snore from the `easy-install.pth` file found in the `site-packages` directory

Author
======

Jon Speicher ([jon.speicher@gmail.com](mailto:jon.speicher@gmail.com))

Credits
=======

http://sourceforge.net/projects/exif-py/

# Copyright (c) 2002-2007 Gene Cash All rights reserved
# Copyright (c) 2007-2008 Ianaré Sévi All rights reserved

License
=======

    The MIT License

    Copyright (c) 2010 Jonathan Speicher

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.