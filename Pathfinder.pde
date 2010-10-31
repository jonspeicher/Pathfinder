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
  imageCount = imageSet.images.size();
  
  Image temp = (Image) imageSet.images.get(0);
  theImage = loadImage("images/" + temp.filename);
  temp = (Image) imageSet.images.get(1);
  nextImage = requestImage("images/" + temp.filename);
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
  Image temp = (Image) imageSet.images.get(nextImageIndex);
  nextImage = requestImage("images/" + temp.filename);
  nextImageIndex = (nextImageIndex + 1) % imageCount;
  println(nextImageIndex);
}
