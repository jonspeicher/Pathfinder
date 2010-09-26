class ImageSetRenderer
{ 
  int _currentImageIndex;
  
  ImageSetRenderer(int width, int height)
  {
    _currentImageIndex = 0;
  }
  
  void render(ImageSet imageSet)
  { 
    Image currentImage = (Image) imageSet.images.get(_currentImageIndex);
    PImage b = loadImage("images/" + currentImage.filename);
    image(b, 0, 0);
    _currentImageIndex += 1 % imageSet.images.size();
  }
}
