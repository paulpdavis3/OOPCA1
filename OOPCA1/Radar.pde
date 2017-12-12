class Radar
{
  void display()
  {
    fill(100);
    strokeWeight(2);
    stroke(255,0,0);
    rectMode(CORNER);
    rect(width-20,(height/2)+30,((-width/8)*2)+20,((height/2)-40)/2);
  }
}