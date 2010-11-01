// TBD: This won't work anywhere but the northwestern quadrant

class CartesianPositionMapper
{
  private int _x, _y, _width, _height, _borderSize;
  private float _minLatitude, _maxLatitude, _minLongitude, _maxLongitude;
  
  CartesianPositionMapper(int x, int y, int width, int height, int borderSize)
  {
    _x = x;
    _y = y;
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
    return (int) map(longitude, _minLongitude, _maxLongitude, _x + _borderSize, _x + _width - _borderSize);
  }
  
  int getY(float latitude)
  {
    return (int) map(latitude, _maxLatitude, _minLatitude, _y + _borderSize, _y + _height - _borderSize);
  }
}
