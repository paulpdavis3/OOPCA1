class Shutter
{
  float buttonRadius = (width/12);
  
  void Bdisplay()
  {
    fill(100);
    strokeWeight(2);
    stroke(255,0,0);
    rect(20,(height/2)+30,(width/8)+20,((height/2)-40)/2);
    
    fill(255,0,0,100);
    strokeWeight(2);
    stroke(0);
    ellipse(20+((width/8)+20)/2,((height/2)+30)+((height/2)-40)/4,buttonRadius,buttonRadius);
  }
  
  void display()
  {
    
  }
}