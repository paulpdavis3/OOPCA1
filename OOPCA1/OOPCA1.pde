Window window;
Shutter shutter;
Clock clock;
CustomSliders customsliders;

void setup()
{
  fullScreen();
  //size(1080,720);
  background(55);
  loadStars();
  window = new Window();
  shutter = new Shutter();
  clock = new Clock();
  customsliders = new CustomSliders();
}

void loadStars()
{
  Table table = loadTable("stars.csv", "header");
  for (TableRow row : table.rows())
  {
    Star star = new Star(row);
    stars.add(star);
  }
}

ArrayList<Star> stars = new ArrayList<Star>();

void draw()
{
  window.display();

  for (Star star : stars)
  {
    star.display();
  }

  shutter.display();
  shutter.Bdisplay();
  clock.display();
  customsliders.display();
}