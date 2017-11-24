class Window
{
  int x;
  int y;
  
  Window(int x, int y)
  {
    this.x = x;
    this.y = y;
  }
  
  void display()
  {
    rect(x,y,10,10);
  }
}