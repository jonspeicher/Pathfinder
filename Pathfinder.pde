import processing.opengl.*;

PathBuilder builder;
Path path;
PathRenderer renderer;

void setup()
{
  size(640, 480, OPENGL);
  
  builder = new PathBuilder();
  renderer = new PathRenderer(width, height, 100, 5, 200);
  path = builder.newPathFromCsv("balloon2-path-data.csv");
}

void draw()
{
  noStroke();
  background(255);
  fill(204);
  lights();
  
  renderer.render(path);
}

