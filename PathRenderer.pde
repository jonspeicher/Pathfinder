class PathRenderer
{
  private CartesianPositionMapper _mapper;
  private int _boxSize, _altitudeScale;
  
  PathRenderer(int width, int height, int border, int boxSize, int altitudeScale)
  {
    _mapper = new CartesianPositionMapper(width, height, border);
    _boxSize = boxSize;
    _altitudeScale = altitudeScale;
  }
  
  void render(Path path)
  {
    _mapper.setBoundaries(path.minLatitude, path.maxLatitude, path.minLongitude, path.maxLongitude);
    
    for (int i = 0; i < path.positions.size(); i++)
    {
      Position position = (Position) path.positions.get(i);
      
      pushMatrix();
      translate(_mapper.getX(position.longitude), _mapper.getY(position.latitude), position.altitude / (_altitudeScale * 2));
      box(_boxSize, _boxSize, position.altitude / _altitudeScale);
      popMatrix();
    }
  }
}
