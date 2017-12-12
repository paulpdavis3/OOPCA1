class Shutter
{
  float buttonRadius = (width/12);
  float circleCenterX = 20+((width/8)+20)/2;
  float circleCenterY = ((height/2)+30)+((height/2)-40)/4;
  boolean active = false;
  
  void Bdisplay()
  {
    fill(100);
    strokeWeight(2);
    stroke(255,0,0);
    rectMode(CORNER);
    rect(20,(height/2)+30,(width/8)+20,((height/2)-40)/2);
    
    fill(255,0,0,100);
    strokeWeight(2);
    stroke(0);
    ellipse(circleCenterX, circleCenterY,buttonRadius,buttonRadius);
  }
  
  void display(float mX, float mY)
  {
    if(dist(mX, mY, circleCenterX, circleCenterY) < buttonRadius/2) 
    {
      if(active == false)
      {
        ellipse(100,100,100,100);
        active = true;
      }
      else
      {
        ellipse(200,200,200,200);
        active = false;
      }
    }
  }
}