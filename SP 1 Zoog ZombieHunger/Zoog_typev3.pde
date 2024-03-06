Zoog myZoog;
Zoog zombieZoog;
Grass myGrass;
Grass hellGrass;
Heaven heaven;

boolean isInHeaven;
boolean haveBeen;

Sky[] skies = new Sky[4];
Sky[] heavenSkies = new Sky[4];

void setup() {
  size(1000, 1000);
  myZoog = new Zoog(width*0.7, height*0.5, #F5E98F, #2A73D1);
  zombieZoog = new Zoog(width*0.3, height*0.5, #498635, #D12A2A);


  skies[0] = new Sky(800, 120, 300, 120, 1);
  skies[1]= new Sky(100, 60, 300, 80, 2);
  skies[2] = new Sky(400, 100, 300, 120, 1);
  skies[3] = new Sky(50, 150, 150, 100, 1);

  heavenSkies[0] = new Sky(800, height- 150, 500, 300, 1);
  heavenSkies[1]= new Sky(100, height-600, 700, 400, 2);
  heavenSkies[2] = new Sky(400, height - 100, 500, 120, 1);
  heavenSkies[3] = new Sky(50, height -150, 650, 100, 1);

 heaven = new Heaven(0, 0);

  myGrass  = new Grass(#3BAF2C);
  hellGrass = new Grass(#E8833F);

  println("Escape the hunger!");
} // end setup

void draw() {
  world();
  myZoog.display();

  if (myZoog.xLeftHitBox < zombieZoog.xRightHitBox &&
    myZoog.xLeftHitBox + 240 > zombieZoog.xRightHitBox &&
    myZoog.yLeftHitBox + 300 > zombieZoog.yRightHitBox &&
    zombieZoog.yRightHitBox + 300 > myZoog.yLeftHitBox) {
    myZoog.infect();
  } else if (haveBeen) {
    myZoog.survive();
  } else {
    myZoog.aLive();
  }
}// end draw



void keyPressed() {
  if (isInHeaven) {
    // Do not allow movement of zombieZoog if myZoog is in heaven
    if (key == 'd' || key == 'D' || key == 'a' || key == 'A' || key == 'w' || key == 'W' || key == 's' || key == 'S') {
      return;
    }
  }
  
  if (keyCode == RIGHT) {
    myZoog.moveRight();
  } else if (keyCode == LEFT) {
    myZoog.moveLeft();
  } else if (keyCode == UP) {
    myZoog.moveUp();
  } else if (keyCode == DOWN) {
    myZoog.moveDown();
  } else if (key == 'd' || key == 'D') { // Move zombieZoog to the right
    zombieZoog.moveRight();
  } else if (key == 'a' || key == 'A') { // Move zombieZoog to the left
    zombieZoog.moveLeft();
  } else if (key == 'w' || key == 'W') { // Move zombieZoog up
    zombieZoog.moveUp();
  } else if (key == 's' || key == 'S') { // Move zombieZoog down
    zombieZoog.moveDown();
  }
}



void world() {
  if (myZoog.zoogY < height*0.2) {
    background(#8FB3F0);
    myZoog.aLive();
    //println(myZoog.zoogY + " heaven");

    //   HERE IS THE LOOP AND ARRAY, the skies is in an Array
    for (Sky num : heavenSkies) {
      num.showSky();
      num.skyMovement();
    }
    heaven.displaySun();
    isInHeaven = true;
  } else if (myZoog.zoogY > height*0.8) {
    //println(myZoog.zoogY + " red");
    background(#F01D1D); // red

    hellGrass.display(); // Display hellGrass when the sky turns red
    zombieZoog.display();
    isInHeaven = false;
  } else {
    background(#8FB3F0); // blue

    //   HERE IS THE LOOP AND ARRAY, the skies is in an Array
    for (Sky num : skies) {
      num.showSky();
      num.skyMovement();
    }
    myGrass.display(); // Display regular grass when the sky is blue
    zombieZoog.display();
    isInHeaven = false;
  }
}
