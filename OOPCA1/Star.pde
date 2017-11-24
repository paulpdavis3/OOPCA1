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
         float mBrightness = map(brightness,1,10,1,255);
         fill(255,mBrightness);
         noStroke();
         ellipse(((width/2)-100)+xPos,(height/2)-100+yPos,size,size);
    }
  }
}