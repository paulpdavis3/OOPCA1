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

    for (count = 0; count < 21; count++)
    {
      stroke(255, brightness);
      strokeWeight(size);
      float mxPos = map(xPos,1,200,20,width-40);
      float myPos = map(yPos,1,200,20,height/2);
      point(mxPos, myPos);
    }
  }
}