int pressed = 0;
int pressedState = 0;

void setup() {
  size(1280, 800);
}

void draw() {
  background(92, 228, 234);
  
  //the title text
  fill(0);
  textSize(50);
  text("Stolen Painting Found by Tree", 400, 100);
  
  
  //the grass
  strokeWeight(1);
  rectMode(CORNERS);
  fill(84, 203, 97);
  rect(0, 700, 1280, 800);
  
  //the tree trunk
  strokeWeight(1);
  fill(131, 105, 65);
  rect(700, 400, 800, 700);
  
  //the tree top
  strokeWeight(1);
  fill(108, 198, 70);
  ellipseMode(CENTER);
  ellipse(750, 400, 300, 200);
  
  //the frame
  stroke(0);
  strokeWeight(10);
  fill(255);
  rect(850, 600, 900, 700);
  
  //the head of the person in the painting
  strokeWeight(1);
  fill(229, 202, 151);
  ellipseMode(CENTER);
  ellipse(875, 625, 25, 25);
  
  //the body of the person in the painting
  fill(245, 72, 37);
  ellipseMode(CORNERS);
  ellipse(855, 637, 895, 695);
  
  if (pressedState == 1) {
    //the "arm" of the tree
    fill(131, 105, 65);
    rect(800, 575, 880, 600);
    
    //the "mouth" of the tree
    fill(0);
    rect(710, 600, 790, 625);
    
    //the "eyes" of the tree
    fill(0);
    ellipseMode(CENTER);
    ellipse(720, 575, 25, 25);
    ellipse(780, 575, 25, 25);
    
    //the tree's "found it" text
    line(690, 610, 640, 560);
    textSize(20);
    text("Found it", 600, 560);
  } 
}

void mousePressed() {
  pressed = pressed + 1;
  pressedState = (pressed % 2);
}
