import processing.opengl.*;

final int IMAGE_WIDTH = 800, IMAGE_HEIGHT = 600;
final int PATH_WIDTH = 500, PATH_HEIGHT = 600;

ImageSet imageSet;
ImageSetRenderer imageSetRenderer;

Path path;
PathRenderer pathRenderer;

void setup()
{
  size(IMAGE_WIDTH + PATH_WIDTH, max(IMAGE_HEIGHT, PATH_HEIGHT), OPENGL);
  imageSet = new ImageSetBuilder().newImageSetFromCsv("balloon2-image-data.csv");
  imageSetRenderer = new ImageSetRenderer(0, 0, IMAGE_WIDTH, IMAGE_HEIGHT, imageSet, "images");
  path = new PathBuilder().newPathFromCsv("balloon2-path-data.csv");
  pathRenderer = new PathRenderer(new CartesianPositionMapper(IMAGE_WIDTH, 0, PATH_WIDTH, PATH_HEIGHT, 100), 5, 200, path);
}

void draw()
{
  background(255);
  imageSetRenderer.renderNext();
  pathRenderer.render();
  delay(50);
}
