Window window;

void setup()
{
  fullScreen();
  background(55);
  loadStars();
  window = new Window();
}

void loadStars()
{
  Table table = loadTable("stars.csv","header");
  for(TableRow row:table.rows())
  {
    Star star = new Star(row);
    stars.add(star);
  }
}

ArrayList<Star> stars = new ArrayList<Star>();

void draw()
{
  window.display();
  for(Star star : stars)
  {
    star.display();
  }
}