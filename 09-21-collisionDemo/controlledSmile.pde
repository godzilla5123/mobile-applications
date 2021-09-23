boolean hit = false;
float smileySize = .6; 
int smileyX = 300;
int smileySpeedX = 10;
int smileyY = 300;
int smileySpeedY = 15;
int circleSize = 93;   // Diameter of circle
color circleColor, baseColor;
color circleHighlight;
color currentColor;
boolean circleOver = false;

void setup() {
  size(1000, 1000);
  circleColor = color(255, 256, 0);
  circleHighlight = color(204);
  baseColor = color(0, 0, 256);
  currentColor = baseColor;
  ellipseMode(CENTER);
}


void keyPressed() {
  if ((key == 'W') || (key == 'w' )) {
    smileyY = smileyY - smileySpeedY;
  } else if ((key == 'S') || (key == 's' )) {
    smileyY = smileyY + smileySpeedY;
  } else if ((key == 'A') || (key == 'a' )) {
    smileyX = smileyX - smileySpeedX;
  } else if ((key == 'D') || (key == 'd' )) {
    smileyX = smileyX + smileySpeedX;
  }
}

void draw() {
  update(mouseX, mouseY);
  background(currentColor);
  if (circleOver) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  smile();
}

void update(int x, int y) {
  if ( overCircle(smileyX, smileyY, int(smileySize*300)) ) {
    circleOver = true;
  } else {
    circleOver = false;
  }
}

void mousePressed() {
  if (circleOver) {
    hit = true;
    currentColor = circleColor;
    background(currentColor);
    for (int colorRun = 01; colorRun <= 252; colorRun += 5) {
      smile();
      print("Whoop ");
    }
    print("Hit");
    delay(1500);
    hit = false;
    currentColor = baseColor;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

void smile() {

  stroke(0);
  if (hit = true) {
    //fill(int(random(0, 256)), int(random(0, 256)), int(random(0, 256)));
    fill(256,0,0);
    ellipse(smileyX, smileyY, smileySize*300, smileySize*300);
    fill(0, 0, 0);
    ellipse(smileyX - (smileySize * 50), smileyY - (smileySize * 75), smileySize * 50, smileySize * 50);
    ellipse(smileyX + (smileySize * 50), smileyY - (smileySize * 75), smileySize * 50, smileySize * 50);
    arc(smileyX, smileyY, smileySize * 200, smileySize * 200, radians(0), radians(180));
  } else
  {
    fill(256,256,0);
    ellipse(smileyX, smileyY, smileySize*300, smileySize*300);
    fill(0, 0, 0);
    ellipse(smileyX - (smileySize * 50), smileyY - (smileySize * 75), smileySize * 50, smileySize * 50);
    ellipse(smileyX + (smileySize * 50), smileyY - (smileySize * 75), smileySize * 50, smileySize * 50);
    arc(smileyX, smileyY, smileySize * 200, smileySize * 200, radians(0), radians(180));
  }
}
