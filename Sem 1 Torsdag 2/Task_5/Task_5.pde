/*     Sem: 1 torsdag: 2 Task: 5
 
 Nu skal du rette noget kode som har fejl og i øvrigt ikke er skrevet færdig.
 
 Have a look at the file in the folder named "TaskFive".
 5.a solve the problem presented in MethodOne.
 5.b solve the problem presented in MethodTwo.
 
 */

void setup() {
 // methodOne();
   methodTwo();
}

/*
  The following method has an error in it. Fix the error and run it.
 */


//void methodOne() {
//  int i = 1000; // You are not allowed to change this line.

//  String output ="";

//  int max = 10;

//  if (i > max)
//  {
//    output = "i is greater than "+max+".";
//  }

//  // 5.a
//  println("----------------5a--------------------");

//  println(output);
//}

/*
 Finish the following method so that we can change the number assigned
 to the weekday and it prints the correct output.
 */
 
void methodTwo()
{
  int weekDay = 6; // 0 = Monday, 6 = Sunday.
  boolean weekend = false;

  if (weekDay < 5)
  {
    weekend = false;
  }
  else
  {
    weekend = true;
  }
//  // 5.b
 println("----------------5b--------------------");
  // Print the name of the weekday here:
    if (weekDay == 0) {
  println("Monday");
} else if (weekDay == 1) {
  println("Tuesday");
} else if (weekDay == 2) {
  println("Wednesday");
} else if (weekDay == 3) {
  println("Thursday");
} else if (weekDay == 4) {
  println("Friday");
}


  // Print if it is weekend here:
  
  if (weekDay > 5){
  println("It is THE weekend");
}

}
