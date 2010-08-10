PathBuilder builder;
Path path;
CartesianPositionMapper mapper;

void setup()
{
  size(640, 480);
  builder = new PathBuilder();
  path = builder.newPathFromCsv("balloon2-path-data.csv");
  mapper = new CartesianPositionMapper(width, height, path, 20);
}

void draw()
{
  for (int i = 0; i < path.positions.size(); i++)
  {
    point(mapper.getX(i), mapper.getY(i));
  }
}

