// 4. c
class Square {
  int xpos;
  int ypos;

  // 4. d
  Square(int xpos, int ypos) {
    this.xpos = xpos;
    this.ypos = ypos;
  } // end construtor

  // 4. f
  void display() {
    rect(xpos, ypos, width/10, height/10);
  } // end display
} // end class
