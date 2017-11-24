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
  
  void display()
  {
    float count;
    
    for(count = 0; count < 21; count++)
    {
         fill(255);
         noStroke();
         ellipse(((width/2)-100)+xPos,(height/2)-100+yPos,size,size);
    }
  }
}