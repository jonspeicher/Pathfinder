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
    float x = map(abs(position.latitude), abs(path.minLatitude), abs(path.maxLatitude), 0, width);
    float y = map(abs(position.longitude), abs(path.minLongitude), abs(path.maxLongitude), 0, height);
    point(x, y);
  }
}

