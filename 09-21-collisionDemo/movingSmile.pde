int smileyX = 300;
int smileySpeedX = 5;
int smileyY = 300;
int smileySpeedY = 5;


void setup()
{
  size(1000, 1000);
}


void draw()
{
  background(0, 0, 255);

// moving in X direction
  if (smileyX <= 150)
  {
    smileySpeedX = 5;
  }
  else if (smileyX + 150 >= width)
  {
    smileySpeedX = -5;    
  }
  smileyX = smileyX + smileySpeedX;

// moving in Y direction
 if (smileyY <= 150)
  {
    smileySpeedY = 5;
  }
  else if (smileyY + 150 >= height)
  {
    smileySpeedY = -5;    
  }
  smileyY = smileyY + smileySpeedY;

//:)
  fill(255, 255, 0);
  ellipse(smileyX, smileyY, 300, 300);

  fill(0);
  ellipse(smileyX - 50, smileyY - 75, 50, 50);
  ellipse(smileyX + 50, smileyY - 75, 50, 50);
  arc(smileyX, smileyY, 200, 200, radians(0), radians(180));
} 
