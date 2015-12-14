float posX = 200;
float posY = 900;

void setup() {
  size(400, 1000);
}

void draw() {
  //the initial background
  background(245, 230, 230);
  strokeWeight(5);
  line(25, 0, 25, 1000);
  line(375, 0, 375, 1000);
  
  //the target
  strokeWeight(1);
  ellipseMode(CENTER);
  fill(57, 64, 245);
  ellipse(width/2, 200, 300, 300);
  fill(255, 255, 255);
  ellipse(width/2, 200, 200, 200);
  fill(240, 22, 36);
  ellipse(width/2, 200, 100, 100);
  fill(255, 255, 255);
  ellipse(width/2, 200, 50, 50);
  stroke(0);
  line(50, 200, 175, 200);
  line(225, 200, 350, 200);
  line(200, 50, 200, 175);
  line(200, 225, 200, 350);
  point(200, 200);
  
  update();
}

void update() {
  //the stone
  fill(252, 43, 43);
  ellipse(posX, posY, 45, 45);
  fill(0);
  ellipse(posX, posY, 35, 35);
  
  //if the stone's position reaches the center of the target, enters a new state
  if(posY == 200) {
    background(61, 255, 59);
    for(int x = 0; x < 4; x++){
      fill(191, 6, 6);
      rectMode(CORNER);
      noStroke();
      rect((x * 100), 0, 50, 1000);
    }
    textSize(50);
    fill(0);
    text("PERFECT", mouseX, mouseY);
    text("TOSS!", mouseX + 25, mouseY + 50);
    //otherwise, it moves further down the screen
  } else {
    posY -= 5;
  }
}
