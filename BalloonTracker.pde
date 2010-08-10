BalloonPathBuilder builder;
BalloonPath path;

void setup()
{
  builder = new BalloonPathBuilder();
  path = builder.newPathFromCsv("balloon2-path-data.csv");
  size(640, 480);
}

void draw()
{
  for (int i = 0; i < path.points.size(); i++)
  {
    BalloonPoint p = (BalloonPoint) path.points.get(i);
    float longitude = abs(p.longitude);
    float latitude = abs(p.latitude);
    float x = map(latitude, abs(path.minLatitude), abs(path.maxLatitude), 0, width);
    float y = map(longitude, abs(path.minLongitude), abs(path.maxLongitude), 0, height);
    point(x, y);
  }
}

