/** 
 Whack Me
 github/godzilla5123, (c) 2021
 Whack a mole but not really i guess
 Tap the mole. Become a gardener.
 
 
 */

Boolean moleHit = false;
Boolean gameStarted = false;
int molePosition = 5;
int score = 0;


void setup() {
  gameStarted = false;
}

void draw() {
  mainNav();
  homeScreen();
}

void mainNav() {
  if (gameStarted == false) {
    background(86, 147, 252);
  } else {
    background (205, 117, 240);
  }
}

void homeScreen() {
  fill(133, 166, 222);
  fill(0);
  stroke(0);
  textSize(50);
  text("Whack Me",width/4,70);
  button((width/2), (height*.65), 150, color(255,0,0), "Play", false);
}



void button(float buttonX, float buttonY, int size, color colr, String buttonText, Boolean molePresent) {
 fill(colr);
  circle(buttonX,buttonY, size);
 fill(0);
 text(buttonText, buttonX-45,buttonY+10);
 
  
}
