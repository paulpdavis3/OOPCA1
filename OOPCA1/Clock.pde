class Clock
{

  void display()
  {
     rect(20,height-10,(width/8)+20,-((height/2)-40)/2);
     fill(255);
     noStroke();
     ellipse(20+((width/8)+20)/2,height-10+(-(((height/2)-40)/2))/2,width/8,width/8);
  }
}

// Bdisplay rect(20,(height/2)+30,(width/9)+20,((height/2)-40)/2);

// Control panel rect(20,(height/2)+30,width-40,(height/2)-40);