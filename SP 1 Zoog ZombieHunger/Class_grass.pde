class Grass {
 int costColor;

  Grass(int tempCostColor) {
   costColor = tempCostColor;
  }

  void display() {
    noStroke();
    fill(costColor);
    rectMode(CORNER);
    rect(0, height/2, width, height/2);
  }
}
