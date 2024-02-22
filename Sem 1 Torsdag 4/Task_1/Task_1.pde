/*
Exercises with String, ArrayList and arrays
 I dette opgavesæt kan det være nødvendigt at slå op hvordan klasserne String og ArrayList bruges:
 
 Opgaverne skal ligesom sidste uge, afleveres på moodle, via et link til jeres github repo.
 
 Task 1: Pick a random number from an array
 1.a Add the following array as a global variable: int[] arr = { 28, 230, 9, 310,72}
 
 1.b. Write a method, getRandom() that returns a random element from the above array.
 
 1.c Add a setup method, from where you will call getRadom(). */
// 1. a

int [] globalVariable = {28, 230, 9, 310, 72};

void setup() {

  // 1.c
  getRandom(globalVariable);
}

// 1.b
int getRandom(int[] oneArray) {

 int randomNumber = (int) (Math.random() * oneArray.length);

  return oneArray[randomNumber];
}
