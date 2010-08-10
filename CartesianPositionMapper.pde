// TBD: This needs to be adjusted to account for negative GPS coordinates.

class CartesianPositionMapper
{
  int width, height, borderSize;
  float minLatitude, maxLatitude, minLongitude, maxLongitude;
  
  CartesianPositionMapper(int newWidth, int newHeight, int newBorderSize)
  {
    width = newWidth;
    height = newHeight;
    borderSize = newBorderSize;
  }
  
  void setBoundaries(float newMinLatitude, float newMaxLatitude, float newMinLongitude, float newMaxLongitude)
  {
    minLatitude = newMinLatitude;
    maxLatitude = newMaxLatitude;
    minLongitude = newMinLongitude;
    maxLongitude = newMaxLongitude;
  }
  
  int getX(float longitude)
  {
    return (int) map(abs(longitude), abs(minLongitude), abs(maxLongitude), borderSize, width - borderSize);
  }
  
  int getY(float latitude)
  {
    return (int) map(abs(latitude), abs(minLatitude), abs(maxLatitude), borderSize, height - borderSize);
  }
}
