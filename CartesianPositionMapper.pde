class CartesianPositionMapper
{
  int width, height;
  Path path;
  int borderSize;
  
  CartesianPositionMapper(int newWidth, int newHeight, Path newPath, int newBorderSize)
  {
    width = newWidth;
    height = newHeight;
    path = newPath;
    borderSize = newBorderSize;
  }
  
  int getX(int index)
  {
    Position position = (Position) path.positions.get(index);
    return (int) map(abs(position.latitude), abs(path.minLatitude), abs(path.maxLatitude), borderSize, width - borderSize);
  }
  
  int getY(int index)
  {
    Position position = (Position) path.positions.get(index);
    return (int) map(abs(position.longitude), abs(path.minLongitude), abs(path.maxLongitude), borderSize, height - borderSize);
  }
}
