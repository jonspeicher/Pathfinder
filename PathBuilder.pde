class PathBuilder
{
  static final int FIELD_COUNT = 8;
  
  Path newPathFromCsv(String filename)
  {
    Path path = new Path();
    String lines[] = loadStrings(filename);

    for (int i = 1; i < lines.length; i++) // Skip the first line
    {
      String [] temp = new String[FIELD_COUNT];
      temp = split(lines[i], ',');
      path.addPosition(temp[0], Float.parseFloat(temp[2]), Float.parseFloat(temp[3]), Float.parseFloat(temp[6]));
    }
    
    return path;
  }
}
