// -------------------------------------------------------------------------------------------------
// Image - Represents an image and its associated timestamp
//
// Copyright (c) 2010 Jonathan Speicher (jon.speicher@gmail.com)
// Licensed under the MIT license: http://creativecommons.org/licenses/MIT
// -------------------------------------------------------------------------------------------------

import java.util.Date;
import java.text.SimpleDateFormat;

class Image
{
  Date timestamp;
  String filename;

  Image(String newTimestamp, String newFilename)
  {
    filename = newFilename;

    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");

    try
    {
      timestamp = dateFormat.parse(newTimestamp);
    }
    catch (Exception e)
    {
      println(e);
    }
  }
}
