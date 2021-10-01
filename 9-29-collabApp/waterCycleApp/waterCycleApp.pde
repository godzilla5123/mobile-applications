boolean debug = false;

boolean rectOver1 = false;
boolean rectOver2 = false;
boolean rectOver3 = false;
boolean rectOver4 = false;


void setup()
{
  size(700, 800);
  background(255, 255, 255);
}

void draw()
{
  //update(mouseX, mouseY);
  PImage img;
  img = loadImage("waterCycle.jpg");
  image(img, 20, 130);
  debugButton();
}

void update(int x, int y) {
  if ( overRect(180, 320, 154, 76) ) {
    rectOver1 = true;
  } else {
    rectOver1 = false;
  }
  if ( overRect( 70, 200, 76, 154) ) {
    rectOver2 = true;
  } else {
    rectOver2 = false;
  }
  if ( overRect(180, 160, 154, 76) ) {
    rectOver3 = true;
  } else {
    rectOver3 = false;
  }
  if ( overRect(350, 200, 76, 1540) ) {
    rectOver4 = true;
  } else {
    rectOver4 = false;
  }
}

void mousePressed() {
  if (rectOver1) {
    print(1);
  } else if (rectOver2) {
    print(2);
  } else if (rectOver3) {
    print(3);
  } else if (rectOver4) {
    print(4);
  }
}

boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

void debugButton() {
  if (debug == true) {
    //  buttons
    fill(200, 200, 200);
    rect( 180, 320, 154, 76);

    fill(200, 200, 200);
    rect( 70, 200, 76, 154);

    fill(200, 200, 200);
    rect( 180, 160, 154, 76);

    fill(200, 200, 200);
    rect( 350, 200, 76, 154);
  } else {
    
  }
}
