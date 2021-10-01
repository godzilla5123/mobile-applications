boolean debug = false;

boolean rectOver1 = false;
boolean rectOver2 = false;
boolean rectOver3 = false;
boolean rectOver4 = false;
String sysMessage = "Click on the button to update me";

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
  fill(0, 0, 0);
  if (mousePressed) {
    if (mouseX >= 180 && mouseX <= 180+154 && mouseY >= 320 && mouseY <= 320+76) {
      print(1);
      //sysMessage = "Step 1";
      text("Step 1", 220, 390);
    } else if (mouseX >= 70 && mouseX <= 70+76 && 
      mouseY >= 200 && mouseY <= 200+154) {
      print(2);
      sysMessage = "Step 2";
      text(sysMessage, 220, 390);
    } else if (mouseX >= 180 && mouseX <= 180+154 && mouseY >= 160 && mouseY <= 160+76) {
      print(3);
      sysMessage = "Step 3";
      text(sysMessage, 220, 390);
    } else if (mouseX >= 350 && mouseX <= 350+76 && mouseY >= 200 && mouseY <= 200+154) {
      print(4);
      sysMessage = "Step 4";
      text(sysMessage, 220, 390);
    }
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
