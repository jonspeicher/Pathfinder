import java.util.Date;
import java.text.SimpleDateFormat;

class Image
{
  Date timestamp;
  String filename;
    
  Image(String newTimestamp, String newFilename)
  {
    filename = newFilename;
   
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");

    try
    {
      timestamp = dateFormat.parse(newTimestamp);
    }
    catch (ParseException e)
    {
      println(e);
    }
  }
}
