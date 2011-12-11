// -------------------------------------------------------------------------------------------------
// Path - Represents a path, which is a collection of positions over time
//
// Copyright (c) 2010 Jonathan Speicher (jon.speicher@gmail.com)
// Licensed under the MIT license: http://creativecommons.org/licenses/MIT
// -------------------------------------------------------------------------------------------------

class Path
{
  ArrayList positions;
  float minLatitude, maxLatitude;
  float minLongitude, maxLongitude;

  Path()
  {
    positions = new ArrayList();
    minLatitude = minLongitude = 180;
    maxLatitude = maxLongitude = -180;
  }

  void addPosition(String time, float latitude, float longitude, float altitude)
  {
    positions.add(new Position(time, latitude, longitude, altitude));
    minLatitude = min(minLatitude, latitude);
    maxLatitude = max(maxLatitude, latitude);
    minLongitude = min(minLongitude, longitude);
    maxLongitude = max(maxLongitude, longitude);
  }
}

