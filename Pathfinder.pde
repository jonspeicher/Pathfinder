import processing.opengl.*;

ImageSet imageSet;
ImageSetRenderer imageSetRenderer;

Path path;
PathRenderer pathRenderer;
/*
void setup()
{
  size(640, 480, OPENGL);
  
  imageSet = new ImageSetBuilder().newImageSetFromCsv("balloon2-image-data.csv");
  imageSetRenderer = new ImageSetRenderer(width, height);
  
  path = new PathBuilder().newPathFromCsv("balloon2-path-data.csv");
  pathRenderer = new PathRenderer(new CartesianPositionMapper(width, height, 100), 5, 200);
}

void draw()
{
  noStroke();
  background(255);
  fill(204);
  lights();
  
  imageSetRenderer.render(imageSet);
  pathRenderer.render(path);
}
*/

void setup()
{
  size(800, 600, OPENGL);
  imageSet = new ImageSetBuilder().newImageSetFromCsv("balloon2-image-data.csv");
  imageSetRenderer = new ImageSetRenderer(0, 0, width, height, imageSet, "images");
}

void draw()
{
  imageSetRenderer.renderNext();
}
