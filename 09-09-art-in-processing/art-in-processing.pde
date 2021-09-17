void setup()
{
  size(800, 600);
  background(7, 209, 240);
  noStroke();
  drawTree();
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

void drawTree()
{
  //wood
  fill(56, 35, 35);
  rect(540, 150, 35, 200, 20);
  
  //leaves
  fill(48, 87, 55);
  for (int i = 0; i < 15; i = i+1) {
    float floattreeX = random(500, 600);
    float floattreeY = random(120, 170);
    int treeX = int(floattreeX);
    int treeY = int(floattreeY);
    circle(treeX, treeY, 45);
  }
}
