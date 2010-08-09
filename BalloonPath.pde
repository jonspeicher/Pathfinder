class BalloonPath
{    
  ArrayList points;
  
  BalloonPath()
  {
    points = new ArrayList();
  }
  
  void addPoint(String time, String latitude, String longitude, String altitude)
  {
    points.add(new BalloonPoint(time, latitude, longitude, altitude));
  }
}

