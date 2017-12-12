class Drive
{
  float Hx;
  float HandleStart;
  float Hy;
  int HandleSize = 50;
  boolean OverHandle = false;
  boolean Held = false;
  float HandleMoved = 0;
  
  void display()
  {
    fill(100);
    strokeWeight(2);
    stroke(255,0,0);
    rectMode(CORNER);
    rect(width-20,(height)-10,((-width/8)*2)+20,-((height/2)-40)/2);
    
    Hx = (width-20)+(((-width/8)*2)+20)/2;
    HandleStart = ((height)-10)+(-((height/2)-40)/2)/2;
    Hy = ((height)-10)+(-((height/2)-40)/2)/2;
   
   rect(Hx,Hy,HandleSize,HandleSize/2);
  }
}