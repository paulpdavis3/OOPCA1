Window window;
Shutter shutter;
Clock clock;
CustomSliders customsliders;
Map map;
Radar radar;
Drive drive;

void setup()
{
  fullScreen();
  //size(1080,720);
  //size(600,500);
  background(55);
  loadStars();
  window = new Window();
  shutter = new Shutter();
  clock = new Clock();
  customsliders = new CustomSliders();
  map = new Map();
  radar = new Radar();
  drive = new Drive();
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
  shutter.Bdisplay();
  clock.display();
  customsliders.display();
  map.display();
  radar.display();
  drive.display();
  for (Star star : stars)
  {
    star.display();
  }
}

void mousePressed()
{
  shutter.display(mouseX,mouseY);
}