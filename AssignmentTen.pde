PImage generic1;
PImage generic2;
PImage generic3;
Square mySquare;
int randX, randY;
int state = 1;
int clickCount;
Timer myTimer;

void setup() {
  background(255);
  size(800, 600);
  generic1 = loadImage("generic1.jpg");
  generic2 = loadImage("generic2.jpg");
  generic3 = loadImage("generic3.jpg");
  int randX = round(random(0, 750));
  int randY = round(random(0, 550));
  myTimer = new Timer(10000);
}

void draw() {
  if(state == 1) {
    //the background for the title screen
    image(generic1, 0, 0, 800, 600);
    
    //explains the rules of the game
    textSize(19);
    text("You have 10 seconds.  Click on as many squares as you can before the time runs out.", 0, 100);
    
    //the start button
    rectMode(CORNER);
    fill(255);
    rect(300, 250, 200, 100);
    fill(0);
    textSize(25);
    text("START", 360, 310);
  }
  else if (state == 2) {
    //the background for the main game
    image(generic2, 0, 0, 800, 600);
    
    //changes to the game over screen when the time runs out
    if(myTimer.isFinished() == true) {
      state = 3;
    }
    else {
      //randomly generates a location and displays the square there
      mySquare = new Square(randX, randY);
      mySquare.display();
    }
  }
  else if (state == 3) {
    //the background image for the game over screen
    image(generic3, 0, 0, 800, 600);
    text("Your score is: ", 350, 100);
    text(clickCount, 425, 125);
    
    //the restart button
    rectMode(CORNER);
    fill(255);
    rect(300, 250, 200, 100);
    fill(0);
    textSize(25);
    text("RESTART", 360, 310);
  }
}

void mousePressed() {
  if (state == 1) {
    if (mouseX > 300 && mouseX < 500 && mouseY > 250 && mouseY < 350) {
        state = 2;
        //starts the timer
        myTimer.start();
    }
  }
  else if (state == 2) {
    if (mouseX > randX && mouseX < randX+50 && mouseY > randY && mouseY < randY+50) {
      //after clicking on a square, moves it to a new position and raises the score
      randX = round(random(0, 750));
      randY = round(random(0, 550));
      clickCount += 1;
    }
  }
  else if (state == 3) {
    if (mouseX > 300 && mouseX < 500 && mouseY > 250 && mouseY < 350) {
      state = 2;
      myTimer.start();
      clickCount = 0;
    }
  }
}

class Square {
  int posX, posY;
  Square(int _posX, int _posY){
    posX = _posX;
    posY = _posY;
  }
  
  void display(){
    fill(255);
    rectMode(CORNER);
    rect(posX, posY, 50, 50);
  }
}

class Timer{
  int savedTime;  // When Timer started
  int totalTime;  // How long Timer should last
  
  // The constructor, set how long the Timer last with integer value
  Timer(int _totalTime){
    totalTime = _totalTime;
  }
  
  // Start the Timer
  void start() {
    savedTime = millis();
  }
  
  boolean isFinished() {
   // check how much time has passed
   int passedTime = millis() - savedTime;
   if (passedTime > totalTime) {
     return true;
   } else {
     return false;
   }
  }
}
