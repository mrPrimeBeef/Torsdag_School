class Sky {
  int xpos;
  int ypos;
  int h;
  int w;
  int speed;

  Sky(int tXpos, int tYpos, int tH, int tW, int tSpeed) {
    xpos = tXpos;
    ypos = tYpos;
    h = tH;
    w = tW;
    speed = tSpeed;
  }

  void showSky() {
    fill(255);
    noStroke();
    ellipse(xpos, ypos, w, w); // Center ellipse
    ellipse(xpos - w / 2, ypos, w * 0.8, w * 0.8); // Left ellipse
    ellipse(xpos + w / 2, ypos, w * 0.8, w * 0.8); // Right ellipse
    ellipse(xpos, ypos - w / 3, w * 0.8, w * 0.8); // Top ellipse
  }
  void skyMovement () {
    xpos = xpos + speed;
    if (xpos > width + w) {
      xpos = 0-w;
      ypos = ypos + int(random(-15,15));
    }
  }
}
