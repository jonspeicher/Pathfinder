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

PImage theImage;
PImage nextImage;
int nextImageIndex;
int imageCount;

void setup()
{
  size(800, 600, OPENGL);
  
  imageSet = new ImageSetBuilder().newImageSetFromCsv("balloon2-image-data.csv");
  imageCount = imageSet.size();
  
  theImage = loadImage("images/" + imageSet.getImage(0).filename);
  nextImage = requestImage("images/" + imageSet.getImage(1).filename);
  nextImageIndex = 2;
}

void draw()
{
  image(theImage, 0, 0, width, height);
  
  if (nextImage.width != 0)
  {
    loadEmUp();
  }
}

void loadEmUp()
{
  theImage = nextImage;
  nextImage = requestImage("images/" + imageSet.getImage(nextImageIndex).filename);
  nextImageIndex = (nextImageIndex + 1) % imageCount;
}
