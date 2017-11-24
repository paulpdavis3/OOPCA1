class Star
{
  float xPos;
  float yPos;
  float size;
  float brightness;
  
  Star(TableRow row)
  {
    xPos = row.getFloat("xPos");
    yPos = row.getFloat("yPos");
    size = row.getFloat("size");
    brightness = row.getFloat("brightness");
  }
}