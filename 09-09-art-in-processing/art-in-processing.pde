void setup()
{
  size(800, 600);
  background(7, 209, 240);
  noStroke();
}

void draw()
{
  drawFeatures();
  drawOcean();
}

void drawFeatures()
{
   //sun
    fill(254, 217, 7);
    ellipse(75, 75, 100, 100);
  //island
    fill(235, 216, 49);
    arc(500, 400, 320, 320, PI, TWO_PI, PIE);
}

void drawOcean()
{
  int c;
  c = 250;
  for (int lineY = 300; lineY <= 600; lineY += 15) {
    fill(7, 0, c);
    rect(0, lineY, 800, height);
    c -= 10;
  }
}
