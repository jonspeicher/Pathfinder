import processing.opengl.*;

PathBuilder builder;
Path path;
PathRenderer renderer;

boolean drawn = false;

void setup()
{
  size(640, 480, OPENGL);
  noStroke();
  fill(204);
  
  builder = new PathBuilder();
  renderer = new PathRenderer(width, height);
  path = builder.newPathFromCsv("balloon2-path-data.csv");
}

void draw()
{
  background(0);
  lights();
  renderer.render(path);
}

