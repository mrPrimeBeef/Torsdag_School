/*     Sem: 1 torsdag: 2 Task: 6
 
 Denne opgave kan måske godt være lidt langhåret, så spring den over, hvis du er ved at være træt.
 
 Du skal du tegne et traffiklys der skifter på samme måde som et rigtigt traffiklys. Du kan gøre det på mange måder, men her kommer en opskrift hvor du skal erklære et sæt variable til at holde nogle bestemte farver og andet sæt variable der kan skifte mellem at være associeret med hver af de farver. På den måde kan du lade selve fill kommandoen være uændret selvom du ændrer farven.
 
 6.a Declare and initialize variables to store the colors of a traffic light (red, yellow, green). Dont forget the color for when the lights are off.
 6.b Declare and initialize variables to store what color each of the lights are at a given moment in time.
 6.c In the setup method, draw a boks on top op which the ellipses representing the lights will be drawn (happens in the the draw method).
 6.d In the draw method, change the value of the light variables according to a given interval (you can achieve this by using a switch-case).
 Hint
 - 6.e Finally in the draw method, after the light variables has been set, draw the ellipses representing the lights.
 
 */


// 6.a
//println("----------------6--------------------");

int red = color(255, 0, 0);
int yellow = color(255, 255, 0);
int green = color(0, 255, 0);
int sort = color(0, 0, 0);



int top = red;
int midel = sort;
int bottom = sort;
int black = sort;


void setup() {
  size(600, 800);
  frameRate = 60;
  background(#4C52F2);
  fill(255);
  noStroke();
  rect(0,60,300,100);
  ellipse(30,60,100,100);
  ellipse(30,160,100,100);
  ellipse(120,160,100,100);
  ellipse(120,60,100,100);
   ellipse(210,160,100,100);
   ellipse(210,60,100,100);
   ellipse(280,100,100,100);
  
  int midX = (width/2);
  int midY = (height/2);
  fill(0, 0, 0);
  rect(midX-20, midY, 40, height);
  fill(#393939);
  rect((width/8)*2, (height/6)*1, (width/8)*4, (height/6)*4, 40);
  
  // tomme lys
    strokeWeight(4);
    fill(sort);
  ellipse(midX, (midY/3)*1.8, 130, 130);
  ellipse(midX, midY, 130, 130);
  ellipse(midX, (midY/3)*4.2, 130, 130);
  
  
}

void draw() {
  int midX = (width/2);
  int midY = (height/2);

println(frameCount);

    fill(top);
  ellipse(midX, (midY/3)*1.8, 130, 130);
      fill(midel);
  ellipse(midX, midY, 130, 130);
      fill(bottom);
  ellipse(midX, (midY/3)*4.2, 130, 130);
  
  switch(frameCount%500){
   case 100:
   top = red;
  midel = black;
  bottom = black;
  break;
  case 200:
   top = red;
  midel = yellow;
  bottom = black;
  break;
  case 300:
   top = black;
  midel = black;
  bottom = green;
  break;
  case 400:
    top = black;
  midel = yellow;
  bottom = black;
  case 500:
    top = black;
  midel = yellow;
  bottom = black;
  }

}
