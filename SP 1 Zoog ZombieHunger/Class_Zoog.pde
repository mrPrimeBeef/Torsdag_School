class Zoog {
  // this could be better, I know
  public float zoogX;
  public float zoogY;
  public int costColor;
  public int eyes;
  public float xLeftHitBox;
  public float xRightHitBox;
  public float yLeftHitBox;
  public float yRightHitBox;
  
  // by default this is private as it should be
  int eyeColor = #395DDB;

  float mirroFeetY = height/3 + 250;
  float speed = 5;
  float walk = 2;


  Zoog(float tempZoogX, float tempZoogY, int tempCostColor, int tempEyes) {
    zoogX = tempZoogX;
    zoogY = tempZoogY;
    costColor = tempCostColor;
    xLeftHitBox = zoogX-60;
    xRightHitBox = zoogX+60;
    yLeftHitBox = zoogY-60;
    yRightHitBox = zoogY-60;
    eyes = tempEyes;
  } // End constructor


  void display() {
    // Body
    fill(#EEF536);
    stroke(0);
    ellipse(zoogX, zoogY + 100, 130, 250);
    noFill();
    noStroke();
    rectMode(CORNER);
    rect(zoogX-60, zoogY-60, 120, 300);

    // head
    ellipseMode(CENTER);
    fill(costColor);
    strokeWeight(3);
    stroke(0);
    ellipse(zoogX, zoogY - 30, 120, 120);

    // cap
    rectMode(CENTER);
    fill(0);
    rect(zoogX, zoogY - 80, 80, 20);
    rect(zoogX, zoogY - 100, 40, 20);


    // eyes
    fill(255);
    strokeWeight(1);
    ellipse(zoogX - 25, zoogY - 15, 30, 45);
    fill(eyes);
    noStroke();
    ellipse(zoogX - 25, zoogY - 15, 15, 15);

    fill(255);
    strokeWeight(1);
    stroke(0);
    ellipse(zoogX + 20, zoogY - 15, 30, 45);
    fill(eyes);
    noStroke();
    ellipse(zoogX + 20, zoogY - 15, 15, 15);

    // hands
    stroke(0);
    fill(costColor);
    ellipse(zoogX - 60, zoogY + 130, 50, 35);
    ellipse(zoogX + 60, zoogY + 130, 50, 35);

    // feets
    fill(0);
    float feetY = zoogY + 250;
    ellipse(zoogX + 40, feetY, 50, 35);
    ellipse(zoogX - 40, feetY, 50, 35);

    // legs
    strokeWeight(4);
    line(zoogX + 40, zoogY + 200, zoogX + 40, feetY);
    line(zoogX - 40, zoogY + 200, zoogX - 40, feetY);
  } // end display
  
  //            METHODES

  void infect() {
    costColor = #498635;
    haveBeen = true;
    println("BRa EiNSs!");
  }
   void aLive() {
    costColor = #F5E98F;
    haveBeen = false;
  }
   void survive() {
    costColor = #8FB278;
    println("Iam Hurt!");
  }

  void moveRight() {
    zoogX += speed;
    xLeftHitBox = zoogX-60;
    xRightHitBox = zoogX+60;
  }

  void moveLeft() {
    zoogX -= speed;
    xLeftHitBox = zoogX-60;
    xRightHitBox = zoogX+60;
  }

  void moveUp() {
    zoogY -= speed;
    yLeftHitBox = zoogY;
    yRightHitBox = zoogY;
  }

  void moveDown() {
    zoogY += speed;
    yLeftHitBox = zoogY;
    yRightHitBox = zoogY;
  }
} // end Class
