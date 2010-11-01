import java.util.Date;
import java.text.SimpleDateFormat;

class Position
{
  Date timestamp;
  float latitude;
  float longitude;
  float altitude;
    
  Position(String newTimestamp, float newLatitude, float newLongitude, float newAltitude)
  {
    latitude = newLatitude;
    longitude = newLongitude;
    altitude = newAltitude;
    
    SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yy HH:mm");

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
