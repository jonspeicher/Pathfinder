// TBD: This won't work anywhere but the northwestern quadrant, and assumes the origin is in the upper left

class CartesianPositionMapper
{
  private int _width, _height, _borderSize;
  private float _minLatitude, _maxLatitude, _minLongitude, _maxLongitude;
  
  CartesianPositionMapper(int width, int height, int borderSize)
  {
    _width = width;
    _height = height;
    _borderSize = borderSize;
  }
  
  void setBoundaries(float minLatitude, float maxLatitude, float minLongitude, float maxLongitude)
  {
    _minLatitude = minLatitude;
    _maxLatitude = maxLatitude;
    _minLongitude = minLongitude;
    _maxLongitude = maxLongitude;
  }
  
  int getX(float longitude)
  {
    return (int) map(longitude, _minLongitude, _maxLongitude, _borderSize, _width - _borderSize);
  }
  
  int getY(float latitude)
  {
    return (int) map(latitude, _maxLatitude, _minLatitude, _borderSize, _height - _borderSize);
  }
}
