float bx;
float ystart;
float by;
int boxSize =75;
boolean overbox = false;
boolean locked = false;
float yoffset = 0;

void setup()
{
  size(600,400);
  bx = width/2;
  ystart = height/2;
  by = height/2;
  rectMode(RADIUS);
}

void draw()
{
  background(0);
  
  fill(100);
  rect(bx-10,ystart-100,bx+10,ystart+100); // cant change bx and by so just hard code the hole in
  
  if(mouseX > bx-boxSize && mouseX < bx+boxSize && mouseY > by-boxSize && mouseY < by+boxSize )
  {
    overbox = true;
    if(!locked)
    {
      stroke(255);
      fill(255);
    }
  }
  else
  {
    stroke(255);
    fill(255);
    overbox=false;
  }
  if(by >= ystart + 100)
  {
    by = ystart+100;
  }
  else if(by <= ystart-100)
  {
    by = ystart-100;
  }
  rect(bx,by,boxSize,boxSize/2);
}  

void mousePressed()
{
  if(overbox)
  {
    locked = true;
    fill(255);
  }
  else
  {
    locked = false;
  }
  yoffset = mouseY-by;
}

void mouseDragged()
{
  if(locked)
  {
    by = mouseY-yoffset;
  }
}

void mouseReleased()
{
  locked = false;
}