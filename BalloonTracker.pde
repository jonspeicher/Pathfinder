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
    float x = map(latitude, 40.5, 41.5, 0, 640);
    float y = map(longitude, 81, 82, 0, 480);
    point(x, y);
  }
}

