/*                Sem: 1 torsdag: 3 Task: 2
 2.a Look at the file TaskTwoA and fill out the missing line, using the happy boolean.
 
 2.b Write a method that receives two integers as parameters and returns the sum of them.
 
 2.c Write a method that receives a String and returns it as uppercase.
 
 2.d Write a method that receives a String and returns true if the first letter of the String is uppercase.
 
 - 2.e Call your new methods from setup(). In setup(), make sure the methods' return values are assigned to variables of the right data type. Print out the variables - still from setup.
 
 */

// 2.a

boolean happy = true;

void setup() {
  if (iAmHappy())
  {
    println("I clap my hands");
  } else
  {
    println("I don't clap my hands");
  }
  
  
  //     |
  // 2.e v

  // 2.b
  println("----------------2b--------------------");
  int secound = sumOfThem(65, 20);
  println(secound);

  // 2.c
  println("----------------2c--------------------");
  String third = upper("This is a longer String");
  println(third);
  
  //2.d
  println("----------------2d--------------------");
  boolean fouth = isFirstLetterBig("Hello");
  println(fouth);
  
}

// 2.a
boolean iAmHappy() {
  // fill out what is missing here:
  println("----------------2a--------------------");
  return happy;
}

// 2.b
int sumOfThem(int int1, int int2) {
  return int1 + int2;
}

// 2.c
String upper(String input) {
  return input.toUpperCase();
}

// 2.d
boolean isFirstLetterBig(String stringies) {
  if (Character.isUpperCase(stringies.charAt(0))) {
    return true;
  } else {
    return false;
  }
}
