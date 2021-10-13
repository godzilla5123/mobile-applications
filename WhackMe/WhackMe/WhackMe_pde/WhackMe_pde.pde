/** 
 Whack Me
 github/godzilla5123, (c) 2021
 Whack a mole but not really i guess
 Tap the mole. Become a gardener.
 
 
 */

PImage mole;
Boolean moleHit = false;
Boolean gameStarted = false;
int molePosition = 5;
int score = 0;


void setup() {
  gameStarted = false;
  mole = loadImage("mole.png");
}

void draw() {
  mainNav();
}

void mainNav() {
  if (gameStarted == false) {
    background(86, 147, 252);
    homeScreen();
  } else {
    background (205, 117, 240);
  }
}

void homeScreen() {
  fill(133, 166, 222);
  fill(0);
  stroke(0);
  textSize(50);
  text("Whack Me", width/4, 70);
  button((width/2), (height*.65), 150, color(255, 0, 0), "Play", true);
  
  // button settings ONLY FOR HOME SCREEN
  if (mousePressed) {
    if (sqrt(sq((width/2)- mouseX) + sq((height*.65)- mouseY)) < 150/2) {
      print("click :DDDDDD");
      gameStarted = true;
    }
  }
}



void button(float buttonX, float buttonY, int size, color colr, String buttonText, Boolean molePresent) {
  fill(colr);
  circle(buttonX, buttonY, size);
  fill(0);
  text(buttonText, buttonX-45, buttonY+12);

  if (molePresent) {
    imageMode(CENTER);
    image(mole, buttonX, buttonY, size * 0.95, size * 0.95);
  }
  //float disX = buttonX - mouseX;
  //float disY = buttonY - mouseY;
  //if (mousePressed) {
  //  if (sqrt(sq(disX) + sq(disY)) < size/2) {
  //    print("click :DDDDDD");
  //  }
  //}
}
