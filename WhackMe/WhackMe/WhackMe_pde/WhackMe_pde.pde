/** 
 Whack Me
 github/godzilla5123, (c) 2021
 Whack a mole but not really i guess
 Tap the mole. Become a gardener.
 
 
 */

class Points
{
  public float pointX;
  public float pointY;
  public Boolean containsMole;
}

ArrayList<Points> holePoints;
ArrayList<float[]> depPoints; // to be deprecated 

PImage mole;
Boolean moleHit = false;
Boolean gameStarted = false;
int molePosition = 5;
int score = 0;
float centerHoleX = (230);
float centerHoleY = (450);

void setup() {
  gameStarted = false;
  mole = loadImage("mole.png");
  /* 
   to-do: readjust
   */
  depPoints = new ArrayList<float[]>();
  depPoints.add(new float[]{centerHoleX, centerHoleY});
  depPoints.add(new float[]{centerHoleX, centerHoleY-150});
  depPoints.add(new float[]{centerHoleX, centerHoleY+150});
  depPoints.add(new float[]{centerHoleX+150, centerHoleY});
  depPoints.add(new float[]{centerHoleX+150, centerHoleY-150});
  depPoints.add(new float[]{centerHoleX+150, centerHoleY+150});
  depPoints.add(new float[]{centerHoleX-150, centerHoleY});
  depPoints.add(new float[]{centerHoleX-150, centerHoleY-150});
  depPoints.add(new float[]{centerHoleX-150, centerHoleY+150});
  // begin better code

  holePoints = new ArrayList<Points>();
  for (int holes = 0; holes <= 8; holes++) {
    holePoints.add(new Points());
    holePoints.get(holes).pointX = depPoints.get(holes)[0];
    holePoints.get(holes).pointY = depPoints.get(holes)[1];
    holePoints.get(holes).containsMole = false;
  }
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
    gameRuntime();
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

void gameRuntime() {
  for (int i = 0; i < holePoints.size(); i++) {
    button(holePoints.get(i).pointX, holePoints.get(i).pointY, 100, color(200, 72, 128), "", holePoints.get(i).containsMole);
    //debugging 
    //println("The point " + (i+1) + " is located at (" + depPoints.get(i)[0] + "," + depPoints.get(i)[0] + ") under the old system." );
    //println("The point " + (i+1) + " is located at (" + holePoints.get(i).pointX + "," + holePoints.get(i).pointY + ") under the new system.");
  }
  print(random(0,9));
}
