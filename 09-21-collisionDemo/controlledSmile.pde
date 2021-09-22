float smileySize = .6;
int smileyX = 300;
int smileySpeedX = 10;
int smileyY = 300;
int smileySpeedY = 15;


void setup()
{
  size(1000, 1000);
}

void keyPressed() {
  if((key == 'W') || (key == 'w' )) {
    smileyY = smileyY - smileySpeedY;
  }
  else if((key == 'S') || (key == 's' )) {
    smileyY = smileyY + smileySpeedY;
  }
  else if((key == 'A') || (key == 'a' )) {
    smileyX = smileyX - smileySpeedX;
   }
  else if((key == 'D') || (key == 'd' )) {
   smileyX = smileyX + smileySpeedX; 
  }
}
void draw()
{
  background(0, 0, 255);


//:)
  fill(255, 255, 0);
  ellipse(smileyX, smileyY, smileySize * 300, smileySize * 300);

  fill(0);
  ellipse(smileyX - (smileySize * 50), smileyY - (smileySize * 75), smileySize * 50, smileySize * 50);
  ellipse(smileyX + (smileySize * 50), smileyY - (smileySize * 75), smileySize * 50, smileySize * 50);
  arc(smileyX, smileyY, smileySize * 200, smileySize * 200, radians(0), radians(180));
} 
