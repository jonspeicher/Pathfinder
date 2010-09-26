class ImageSetBuilder
{  
  ImageSet newImageSetFromCsv(String filename)
  {
    ImageSet imageSet = new ImageSet();
    String lines[] = loadStrings(filename);
    
    for (int i = 0; i < lines.length; i++)
    {
      String[] temp = split(lines[i], ',');
      imageSet.addImage(temp[0], temp[1]);
    }
    
    return imageSet;
  }
}
