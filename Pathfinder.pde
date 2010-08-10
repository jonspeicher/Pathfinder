import processing.opengl.*;

PathBuilder builder;
Path path;
PathRenderer renderer;

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
  background(255);
  lights();
  rotateX(0.5);
  rotateY(0.1);
  rotateZ(0.1);
  
  renderer.render(path);
}

