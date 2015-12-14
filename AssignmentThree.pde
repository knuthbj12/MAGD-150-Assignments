void setup() {
  size(1000, 800);
}

void draw() {
  
background(134, 205, 222);
  
//the arc shape for Patrick's house
fill(137, 62, 25);
stroke(0);
strokeWeight(1);
arc(150, 600, 200, 200, PI, 2*PI);

//the lines that make up the weather vane on Patrick's house
stroke(203, 165, 60);
strokeWeight(4);
line(150, 500, 150, 475);
line(125, 475, 175, 475);
line(125, 475, 135, 465);
line(125, 475, 135, 485);
line(170, 465, 170, 485);
line(165, 465, 165, 485);

//the "ear" shapes for Squidward's house
fill(9, 57, 108);
stroke(0);
strokeWeight(1);
rectMode(CORNERS);
rect(335, 375, 400, 450);
rect(500, 375, 565, 450);

//the base shape for Squidward's house
beginShape();
vertex(350, 600);
vertex(375, 200);
vertex(525, 200);
vertex(550, 600);
endShape();

//the "eyebrow" shape on Squidward's house
strokeWeight(3);
rectMode(CORNERS);
rect(370, 300, 530, 325);

//the "nose" shape on Squidward's house
beginShape();
vertex(425, 450);
vertex(435, 325);
vertex(465, 325);
vertex(475, 450);
vertex(425, 450);
endShape();

//the windows/"eyes" on Squidward's house
fill(66, 158, 252);
ellipseMode(CENTER);
ellipse(400, 350, 50, 50);
ellipse(500, 350, 50, 50);

//the bottom section of the door on Squidward's house 
fill(173, 127, 58);
stroke(0);
rectMode(CORNERS);
rect(415, 525, 485, 600);

//the top section of the door on Squidward's house
stroke(0);
ellipseMode(CENTER);
arc(450, 525, 70, 70, PI, PI*2);

//the stem on Spongebob's pineapple house
stroke(0);
strokeWeight(1);
fill(72, 175, 71);
triangle(775, 225, 800, 125, 825, 225);
triangle(750, 250, 775, 225, 700, 150);
triangle(825, 225, 850, 250, 900, 150);

//the base shape for Spongebob's house
fill(255, 146, 3);
ellipseMode(CORNERS);
ellipse(650, 210, 950, 800);

//the bottom section of the door on Spongebob's house
fill(66, 158, 252);
stroke(0);
rectMode(CORNERS);
rect(765, 525, 835, 600);

//the top section of the door on Spongebob's house (I tried)
stroke(0);
ellipseMode(CENTER);
arc(800, 525, 70, 70, PI, PI*2);

//the windows in Spongebob's house
stroke(0);
strokeWeight(3);
ellipseMode(CENTER);
ellipse(885, 525, 50, 50);
ellipse(730, 400, 50, 50);

//the ground
fill(245, 243, 203);
noStroke();
rectMode(CORNERS);
rect(0, 600, 1000, 800);

//the roads in front of each house
fill(90, 88, 81);
stroke(0);
strokeWeight(1);
rectMode(CORNERS);
rect(125, 600, 175, 800);
rect(425, 600, 475, 800);
rect(775, 600, 825, 800);




}

void mousePressed() {
  //the bubbles that can be controlled with the mouse
noFill();
stroke(178, 232, 245);
strokeWeight(5);
ellipseMode(CENTER);
ellipse(mouseX+75, mouseY-75, 100, 100);
}

void keyPressed() {
noFill();
stroke(178, 232, 245);
strokeWeight(5);
ellipseMode(CENTER);
ellipse(mouseX-75, mouseY+75, 100, 100);
}
