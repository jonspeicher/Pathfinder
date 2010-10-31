import processing.opengl.*;

ImageSet imageSet;
ImageSetRenderer imageSetRenderer;

Path path;
PathRenderer pathRenderer;

void setup()
{
  size(1200, 600, OPENGL);
  imageSet = new ImageSetBuilder().newImageSetFromCsv("balloon2-image-data.csv");
  imageSetRenderer = new ImageSetRenderer(0, 0, width - 400, height, imageSet, "images");
  path = new PathBuilder().newPathFromCsv("balloon2-path-data.csv");
  pathRenderer = new PathRenderer(new CartesianPositionMapper(width - 400, 0, 400, height, 100), 5, 200, path);
}

void draw()
{
  background(255);
  imageSetRenderer.renderNext();
  pathRenderer.render();
}
