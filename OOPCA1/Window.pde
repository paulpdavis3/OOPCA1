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
    rectMode(CENTER);
    fill(0);
    strokeWeight(3);
    stroke(255, 255, 0, 10);
    rect(x, y, 200, 200, 50);
  }
}