class PathBuilder
{  
  Path newPathFromCsv(String filename)
  {
    Path path = new Path();
    String lines[] = loadStrings(filename);

    // Start at 1 so as to skip the first line; it is header data.
    
    for (int i = 1; i < lines.length; i++)
    {
      String[] temp = split(lines[i], ',');
      path.addPosition(temp[0], Float.parseFloat(temp[2]), Float.parseFloat(temp[3]), Float.parseFloat(temp[6]));
    }
    
    return path;
  }
}
