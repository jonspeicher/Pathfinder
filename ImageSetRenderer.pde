// -------------------------------------------------------------------------------------------------
// ImageSetRenderer - Renders images contained within an ImageSet
//
// Copyright (c) 2010 Jonathan Speicher (jon.speicher@gmail.com)
// Licensed under the MIT license: http://creativecommons.org/licenses/MIT
// -------------------------------------------------------------------------------------------------

class ImageSetRenderer
{
  private String _path;
  private ImageSet _imageSet;
  private int _x, _y, _width, _height;

  private PImage _currentImage, _nextImage;
  private int _imageCount, _nextImageIndex;

  ImageSetRenderer(int x, int y, int width, int height, ImageSet imageSet, String path)
  {
    _x = x;
    _y = _y;
    _width = width;
    _height = height;
    _imageSet = imageSet;
    _path = path;

    _imageCount = _imageSet.size();
    _currentImage = loadImage(_path + "/" + _imageSet.getImage(0).filename);
    _nextImage = requestImage(_path + "/" + _imageSet.getImage(1).filename);
    _nextImageIndex = 2;
  }

  void renderNext()
  {
    if (_currentImage != null)
    {
      image(_currentImage, _x, _y, _width, _height);
    }

    _currentImage = _nextImage;
    _nextImage = requestImage(_path + "/" + _imageSet.getImage(_nextImageIndex).filename);
    _nextImageIndex = (_nextImageIndex + 1) % _imageCount;
  }

  Image getCurrentImage()
  {
    // TBD: This will go to -1 when _nextImageIndex wraps to zero
    return _imageSet.getImage(_nextImageIndex - 1);
  }
}
