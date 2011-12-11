// -------------------------------------------------------------------------------------------------
// ImageSet - Contains a set of images
//
// Copyright (c) 2010 Jonathan Speicher (jon.speicher@gmail.com)
// Licensed under the MIT license: http://creativecommons.org/licenses/MIT
// -------------------------------------------------------------------------------------------------

class ImageSet
{
  ArrayList images;

  ImageSet()
  {
    images = new ArrayList();
  }

  void addImage(String timestamp, String filename)
  {
    images.add(new Image(timestamp, filename));
  }

  Image getImage(int index)
  {
    return (Image) images.get(index);
  }

  int size()
  {
    return images.size();
  }
}
