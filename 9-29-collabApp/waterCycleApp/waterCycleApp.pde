//boolean rectOver1 = false;
//boolean rectOver2 = false;
//boolean rectOver3 = false;
//boolean rectOver4 = false;


void setup()
{
  size(700, 800);
  background(255, 255, 255);
}

void draw()
{
  //update(mouseX, mouseY);
  PImage img;
  img = loadImage("360_F_410153573_I9g69gVFmPd2iKXIwsasXAA0AGplNdRV.jpg");
  image(img, 80, 130);



  // buttons
  fill(200, 200, 200);
  rect( 270, 400, 190, 100);

  fill(200, 200, 200);
  rect( 130, 250, 100, 190);

  fill(200, 200, 200);
  rect( 270, 180, 190, 100);

  fill(200, 200, 200);
  rect( 520, 250, 100, 190);
}

void update(int x, int y) {
  if ( overRect(270, 400, 190, 100) ) {
    rectOver1 = true;
  } else {
    rectOver1 = false;
  }
  if ( overRect(130, 250, 100, 190) ) {
    rectOver2 = true;
  } else {
    rectOver2 = false;
  }
  if ( overRect(270, 180, 190, 100) ) {
    rectOver3 = true;
  } else {
    rectOver3 = false;
  }
  if ( overRect(520, 250, 100, 190) ) {
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
