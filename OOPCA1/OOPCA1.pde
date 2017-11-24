Window window;

void setup()
{
  fullScreen();
  background(55);
  window = new Window(width/2,height/2);
}

void draw()
{
  window.display();
}