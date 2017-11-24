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

PShape s;

  void display()
  {
    float count;

    for (count = 0; count < 21; count++)
    {
      stroke(255, brightness);
      strokeWeight(size);
      float mxPos = map(xPos,1,200,20,width-40);
      float myPos = map(yPos,1,200,20,height/2);
      
        s = createShape();
        s.beginShape();
        s.fill(200,brightness);
        s.noStroke();
        s.vertex(0, 0);
        s.vertex(5, 20);
        s.vertex(25, 25);
        s.vertex(5, 30);
        s.vertex(0, 50);
        s.vertex(-5,30);
        s.vertex(-25,25);
        s.vertex(-5,20);
        s.endShape(CLOSE);
      
      shape(s,mxPos, myPos);
    }
  }
}