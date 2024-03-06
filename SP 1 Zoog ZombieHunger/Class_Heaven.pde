class Heaven {
int x;
int y;

  Heaven(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void displaySun() {
    fill(#F9FFCE);
    ellipseMode(CORNER);
    ellipse(x, y, width*0.5, height*0.5);
    ellipseMode(CENTER);
  }
}
