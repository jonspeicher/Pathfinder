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
  
  void render(Date currentTimestamp)
  {
    noStroke();
    lights();
    fill(204);
    
    _mapper.setBoundaries(_path.minLatitude, _path.maxLatitude, _path.minLongitude, _path.maxLongitude);
    
    for (int i = 0; i < _path.positions.size(); i++)
    {
      Position position = (Position) _path.positions.get(i);
  
      if (position.timestamp.before(currentTimestamp))
      {
        fill(255, 0, 0);
      }
      
      pushMatrix();
      translate(_mapper.getX(position.longitude), _mapper.getY(position.latitude), position.altitude / (_altitudeScale * 2));
      box(_boxSize, _boxSize, position.altitude / _altitudeScale);
      popMatrix();
    }
  }
}
