float posX = 675;
float velocity = 0;
float color1 = random(0, 255);
float color2 = random(0, 255);
float color3 = random(0, 255);
float color4 = random(0, 255);
float color5 = random(0, 255);
float color6 = random(0, 255);

void setup() {
  size(1500, 1000);
}

void draw() {
  background(204, 201, 219);
  
  fill(0);
  rectMode(CORNERS);
  
  //the  top part of the blaster
  rect(200, 475, 250, 500);
  rect(450, 475, 500, 500);
  rect(150, 375, 550, 475);
  arc(150, 425, 100, 100, HALF_PI, 1.5*PI);
  
  //Greedo's arm
  fill(219, 217, 177);
  rect(0, 645, 200, 795);
  fill(123, 214, 149);
  ellipse(250, 720, 200, 195);
  
  update();
}

void update() {
  //the laser
  fill(250, 3, 65);
  rectMode(CORNERS);
  rect(posX, 550, posX+100, 570);
  //the bottom part of the blaster.  It's in the update method so that it appears on top of the laser.
  fill(0);
  rect(50, 500, 750, 620);
  rect(650, 520, 775, 600);
  //if the laser is at least 500 past the edge of the screen, changes the state
  if (posX >= 2000) {
    background(color1, color2, color3);
    fill(color4, color5, color6);
    textSize(50);
    text("Greedo Shot First", mouseX - 200, mouseY + 25);
  }
  //otherwise the laser should travel farther across the screen
  else {
    posX += velocity;
  }
}

void mousePressed() {
  //shoots the blaster when the mouse is pressed
  velocity = 50;
}
