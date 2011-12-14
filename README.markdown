Pathfinder
==========

Pathfinder is a flight path and image acquisition visualization package for a near-space balloon.

Description
===========

[HackPittsburgh](http://www.hackpittsburgh.org) has launched several high-altitude balloon projects.
Most launches carry a camera that takes photographs at a defined interval, and all launches carry
position-tracking hardware and software that communicates with ground-based stations such that the
balloon's flight path is recorded.

This software package, written in Processing with some supporting Python scripts, attempts to
visualize the balloon's flight by presenting the recorded images together with a rendering of the
balloon's flight path in synchronized, accelerated time.

Previous balloon launch photos are available at the
[HackPittsburgh Flickr Pool](http://www.flickr.com/groups/hackpgh). My favorites, plus my ground
photos, are at [my Flickr page](http://www.flickr.com/photos/jonspeicher).

Requirements
============

For the visualization app
-------------------------

* Processing 1.2.1 or higher (http://processing.org)

I've tested Pathfinder with Processing 1.2.1 on Mac OS X 10.6.4 and 10.7.2 and on **nothing else**.

For the helper tools used to build the data sets
------------------------------------------------

* Python (http://www.python.org)
* EXIF.py (http://sourceforge.net/projects/exif-py)

I've tested the tools with Python 2.6 and EXIF.py 1.1.0 on Mac OS X 10.6.4 and on **nothing else**.

Installation
============

No installation is specifically required to run this app short of placing the source files and the
contents of the data and helper subdirectories in a subdirectory of the Processing sketchbook named
`Pathfinder`.

To use the helper scripts, Python must be installed following the instructions at the download link.
In addition, the required Python dependencies listed above must be downloaded and placed into the
Python module search path. The use of the helper scripts is not required to run Pathfinder. More
information regarding their function is provided below.

Configuration
=============

The images used and displayed by the app are not part of the git repository due to their size.
Therefore, they must be downloaded and the input image catalog may need to be regenerated.

The pre-built image catalog and balloon path data that are a part of this git repository come from
[LEAD Balloon A2](http://www.hackpittsburgh.org/wiki/index.php?title=A2_Aug_8th_2010). The balloon
path data is not preserved on the tracking site forever, but it has been post-processed and checked
in to this git repository. So, as written, this particular program will only work for visualizing
LEAD Balloon A2's path.

To obtain A2's images, they may be downloaded from [my Dropbox archive](http://dl.dropbox.com/u/1031159/balloon2-images.zip).

Place the images into the `data/images` subdirectory. The balloon's path data is already present in
the `data` directory, as is a catalog file containing the timestamps and filenames of the images
contained within the archive above.

Usage
=====

* Open Processing
* Open the Pathfinder sketch from the sketchbook
* Press play

There are no real controls for the app, it should simply play through the balloon's still frames
while rendering the specific point in the balloon's flight path corresponding to the balloon's
position at the time the frame was taken.

Different Flights
=================

Using this application for other balloon flights may be possible but will require a capture of the
balloon path data as well as regeneration of the CSV files that give timeline, location, and image
data to the application.

Ensure that the required dependencies are installed as identified in the Requirements section.

Flight Path
-----------

Find the callsign of the balloon to visualize. The callsign may be found at the balloon's flight
page on the HackPittsburgh wiki's [LEAD Balloon Project Page](http://www.hackpittsburgh.org/wiki/index.php?title=LEAD_Balloon_Project).

Once the callsign is determined, visit the [aprs.fi](http://aprs.fi) website and select the Data
Export Tool. Enter the balloon's callsign and flight window, then download the balloon's flight path
data in Excel/CSV format. Place this file in the `data` subdirectory of the Processing sketch, and
ensure that the name of the file to load in the code and the actual filename on disk match.

Images
------

Obtain the balloon images to be included in the visualization. Typically this will be via the [LEAD Balloon Project Page](http://www.hackpittsburgh.org/wiki/index.php?title=LEAD_Balloon_Project) or
the [HackPittsburgh Flickr Pool](http://www.flickr.com/groups/hackpgh).

Place the images in the `data/images` directory. Use the `exif2csv.py` script provided in the
`helpers` directory to generate a CSV file containing the timestamps and names of each of the image
files. The script has instructions for use embedded within it. The resulting CSV file should be
placed in the `data` directory.

The CSV file will contain EXIF timestamp data extracted from the photos in the `data/images`
directory. This timestamp data is used to synchronize the display of the photos with the display of
the balloon path in the app.

It is possible that there will be a mismatch in time zone between the balloon flight path data
timestamps and the camera EXIF data timestamps. The `dezulu.py` script can be used to adjust the
timezones by a fixed offset.

Tests
=====

No unit tests are provided with the source distribution at this time.

Uninstallation
==============

To uninstall Pathfinder, simply remove the `Pathfinder` directory, subdirectories, and files from
the Processing sketchbook.

For the helper scripts, the Python dependencies may be removed from the Python installation's module
search path, and Python itself may be uninstalled.

Improvements
============

There are a few things I'd like to do but will never get around to:

* Make the orientation of the path rendering prettier
* Overlay the rendered flight path on an actual map of the location
* Add controls to rotate the flight path in three-dimensional space
* Add controls to change the speed, pause, restart

Author
======

Jon Speicher ([jon.speicher@gmail.com](mailto:jon.speicher@gmail.com))

Credits
=======

The exif2csv helper script depends on [EXIF.py](http://sourceforge.net/projects/exif-py) by Gene
Cash, Thierry Bousch, and Ianaré Sévi.

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