class BalloonPathBuilder
{
  static final int FIELD_COUNT = 8;
  
  BalloonPath newPathFromCsv(String filename)
  {
    BalloonPath path = new BalloonPath();
    String lines[] = loadStrings(filename);

    for (int i = 1; i < lines.length; i++) // Skip the first line
    {
      String [] temp = new String[FIELD_COUNT];
      temp = split(lines[i], ',');
      path.addPoint(temp[0], Float.parseFloat(temp[2]), Float.parseFloat(temp[3]), Float.parseFloat(temp[6]));
    }
    
    return path;
  }
}
