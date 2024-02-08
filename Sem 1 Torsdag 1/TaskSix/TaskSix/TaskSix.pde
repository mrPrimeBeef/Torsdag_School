/*
 The code in this sketch will not compile, as it referes to varables which have not yet been declared
 Please complete task 5 to get this to compile.
 */
float red;
float green;
float blue;

int counter = 0;
int rowCounter = 0;

int numberOfCircles = 20;

void setup() {
  size(400, 400);
  int circleSize = width/numberOfCircles;
  ellipseMode(CORNER);

  red = 255;
  green = 255;
  blue = 255;
}

void draw() {

  int circleSize = width/numberOfCircles;

  int x = circleSize*counter;
  int y = circleSize*rowCounter;

  // Un-comment this line after completing step 6.a
  fill(red, green, blue);

  ellipse(x, y, circleSize, circleSize);

  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;

  //Add the code for 6.c here
  println(counter);

 
  red -= counter == 0 ? 9: 0;
   green -= counter == 0 ? 7 : 0;
   blue -= counter == 0 ? 6 : 0;
  
 /* Her er det kun den første cirkle som ændre sig i farven og ikke hele linjen.
  red = counter == 0 ? int(random(255)): 255;
  green = counter == 0 ? int(random(255)): 255;
  blue = counter == 0 ? int(random(255)): 255;
  */
}
