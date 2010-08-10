class BalloonPath
{    
  ArrayList points;
  float minLatitude, maxLatitude;
  float minLongitude, maxLongitude;
  
  BalloonPath()
  {
    points = new ArrayList();
    minLatitude = minLongitude = 180;
    maxLatitude = maxLongitude = -180;
  }
  
  void addPoint(String time, float latitude, float longitude, float altitude)
  {
    points.add(new BalloonPoint(time, latitude, longitude, altitude));
    minLatitude = min(minLatitude, latitude);
    maxLatitude = max(maxLatitude, latitude);
    minLongitude = min(minLongitude, longitude);
    maxLongitude = max(maxLongitude, longitude);
  }
}

