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
