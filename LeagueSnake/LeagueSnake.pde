//*
// ***** SEGMENT CLASS *****
// This class will be used to represent each part of the moving snake.
//*
int sneksise = 10;
class Segment {

//Add x and y member variables. They will hold the corner location of each segment of the snake.
int x;
int y;

// Add a constructor with parameters to initialize each variable.
Segment(int x, int y){
  this.x = x;
  this.y = y;
}


}


//*
// ***** GAME VARIABLES *****
// All the game variables that will be shared by the game methods are here
//*

Segment head;
int foodX;
int foodY;
int direct = LEFT;
int intake = 0;



//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*

void setup() {
size(500, 500);

head = new Segment(20,20);

frameRate(20);

dropFood();

}

void dropFood() {
  //Set the food in a new random location
    foodX = ((int)random(50)*10);
    foodY = ((int)random(50)*10);
}



//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*

void draw() {
  background(#000000);
  drawFood();
  delay(100);
  move();
  drawSnake();
  eat();
  
  
}

void drawFood() {
  //Draw the food
  fill(color(#B0E38C));
  rect(foodX,foodY,sneksise, sneksise);
  
}

void drawSnake() {
  //Draw the head of the snake followed by its tail
  fill(color(#E38C8C));
  rect(head.x,head.y,sneksise, sneksise);
  
  
}


//*
// ***** TAIL MANAGEMENT METHODS *****
// These methods make sure the tail is the correct length.
//*

void drawTail() {
  //Draw each segment of the tail 

}

void manageTail() {
  //After drawing the tail, add a new segment at the "start" of the tail and remove the one at the "end" 
  //This produces the illusion of the snake tail moving.
  
}

void checkTailCollision() {
  //If the snake crosses its own tail, shrink the tail back to one segment
  
}



//*
// ***** CONTROL METHODS *****
// These methods are used to change what is happening to the snake
//*

void keyPressed() {
  //Set the direction of the snake according to the arrow keys pressed
  if (keyCode == UP && direct != DOWN) {
    direct = UP;
  }
  else if (keyCode == DOWN && direct != UP) {
    direct = DOWN;
  }
  else if (keyCode == LEFT && direct != RIGHT){
    direct = LEFT;
  }
  else if (keyCode == RIGHT && direct != LEFT){
    direct = RIGHT;
  }
}

void move() {
  //Change the location of the Snake head based on the direction it is moving.
  
    
  switch(direct) {
  case UP:
    head.y-=sneksise;
    break;
  case DOWN:
    head.y+=sneksise; 
    break;
  case LEFT:
   head.x-=sneksise; 
    break;
  case RIGHT:
    head.x+=sneksise;
    break;
  }
  checkBoundaries();
  
}

void checkBoundaries() {
 //If the snake leaves the frame, make it reappear on the other side
if (head.x > 499) {
  head.x = 0;
}
else if (head.x < 0) {
  head.x = 499;
}
else if (head.y > 499) {
  head.y = 0;
}
else if (head.y < 0) {
  head.y = 499;
}
}



void eat() {
  //When the snake eats the food, its tail should grow and more food appear
  
if ((head.x == foodX) && (head.y == foodY)){
  intake++;
  dropFood();
  
}

}
