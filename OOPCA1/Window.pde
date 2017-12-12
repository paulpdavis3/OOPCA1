class Window
{
  int x;
  int y;

  void display()
  {
    fill(0);
    strokeWeight(3);
    stroke(255, 255, 0);
    rectMode(CORNER);
  rect(20,20,width-40,height/2,20);
  
  fill(155);
  noStroke();
  rectMode(CORNER);
  rect(20,(height/2)+30,width-40,(height/2)-40);
  }
}