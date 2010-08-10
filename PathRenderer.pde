class PathRenderer
{
  CartesianPositionMapper mapper;
  
  PathRenderer(int width, int height)
  {
    mapper = new CartesianPositionMapper(width, height, 100); // TBD: This border is definitely a function of many things
  }
  
  void render(Path path)
  { 
    mapper.setBoundaries(path.minLatitude, path.maxLatitude, path.minLongitude, path.maxLongitude);
    
    for (int i = 0; i < path.positions.size(); i++)
    {
      Position position = (Position) path.positions.get(i);
      
      pushMatrix();
      translate(mapper.getX(position.longitude), mapper.getY(position.latitude), 0);
      box(5, 5, position.altitude / 200);
      popMatrix();
    }
  }
}
