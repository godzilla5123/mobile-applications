float smileySize = 5;
int smileyX = 300;
int smileySpeedX = 10;
int smileyY = 300;
int smileySpeedY = 15;


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
  ellipse(smileyX, smileyY, smileySize * 300, smileySize * 300);

  fill(0);
  ellipse(smileyX - (smileySize * 50), smileyY - (smileySize * 75), smileySize * 50, smileySize * 50);
  ellipse(smileyX + (smileySize * 50), smileyY - (smileySize * 75), smileySize * 50, smileySize * 50);
  arc(smileyX, smileyY, smileySize * 200, smileySize * 200, radians(0), radians(180));
} 
