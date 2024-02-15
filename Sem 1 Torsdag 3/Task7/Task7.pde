//            Sem 1 Torsdag 3

/*
Task 7. Recursion
 A function can call itself. This is called recursion.
 To prevent a recursive function from generating an
 infinite loop, one must add a constraint. We did not cover this in class,
 so this is an optional exercise. You can read about recursion here: W3Schools
 
 7.a Write a function that takes an integer as a parameter and prints the number.
 
 7.b Make the function subtract 1 from the parameter.
 
 7.c Check if the new value is less than zero. If not, make a call to
 itself using the new value as the argument(recursion).
 */


// 7.a 7b 7c

void setup() {
  functiona(8);
}

int functiona(int g) {
  if (g <= 0) {
    return 1;
  } else {
    int sum = g -1;
    println(sum);
    functiona(sum);
    return sum;
  }
}
//                         VIRKER IKKE
//int functiona(int g) {
//for ()
//}

//int functiona(int g) {
//constrain(g, 0,g);
//    int sum = g -1;
//    println(sum);
//    functiona(sum);
//    return sum;
//  }
