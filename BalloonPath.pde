class BalloonPath
{    
  ArrayList points;
  
  BalloonPath()
  {
    points = new ArrayList();
  }
  
  void addPoint(String time, float latitude, float longitude, float altitude)
  {
    points.add(new BalloonPoint(time, latitude, longitude, altitude));
  }
}

