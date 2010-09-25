import processing.opengl.*;

Path path;
PathRenderer renderer;

void setup()
{
  size(640, 480, OPENGL);
  
  renderer = new PathRenderer(new CartesianPositionMapper(width, height, 100), 5, 200);
  path = new PathBuilder().newPathFromCsv("balloon2-path-data.csv");
}

void draw()
{
  noStroke();
  background(255);
  fill(204);
  lights();
  
  renderer.render(path);
}

