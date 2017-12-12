class Clock
{

  void display()
  {
     fill(100);
     strokeWeight(2);
     stroke(255,0,0);
     rectMode(CORNER);
     rect(20,height-10,(width/8)+20,-((height/2)-40)/2);
     fill(255);
     noStroke();
     ellipse(20+((width/8)+20)/2,height-10+(-(((height/2)-40)/2))/2,width/8,width/8);
  }
}