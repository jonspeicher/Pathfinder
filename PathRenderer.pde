import java.util.Date;

class PathRenderer
{
  private CartesianPositionMapper _mapper;
  private int _boxSize, _altitudeScale;
  private Path _path;
  
  PathRenderer(CartesianPositionMapper mapper, int boxSize, int altitudeScale, Path path)
  {
    _mapper = mapper;
    _boxSize = boxSize;
    _altitudeScale = altitudeScale;
    _path = path;
  }
  
  void render(Date timestamp)
  {
    noStroke();
    fill(204);
    lights();
    
    _mapper.setBoundaries(_path.minLatitude, _path.maxLatitude, _path.minLongitude, _path.maxLongitude);
    
    for (int i = 0; i < _path.positions.size(); i++)
    {
      Position position = (Position) _path.positions.get(i);
      
      pushMatrix();
      translate(_mapper.getX(position.longitude), _mapper.getY(position.latitude), position.altitude / (_altitudeScale * 2));
      box(_boxSize, _boxSize, position.altitude / _altitudeScale);
      popMatrix();
    }
  }
}
