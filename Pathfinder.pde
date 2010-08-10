PathBuilder builder;
Path path;

void setup()
{
  builder = new PathBuilder();
  path = builder.newPathFromCsv("balloon2-path-data.csv");
  size(640, 480);
}

void draw()
{
  for (int i = 0; i < path.positions.size(); i++)
  {
    Position position = (Position) path.positions.get(i);
    float longitude = abs(position.longitude);
    float latitude = abs(position.latitude);
    float x = map(latitude, abs(path.minLatitude), abs(path.maxLatitude), 0, width);
    float y = map(longitude, abs(path.minLongitude), abs(path.maxLongitude), 0, height);
    point(x, y);
  }
}

