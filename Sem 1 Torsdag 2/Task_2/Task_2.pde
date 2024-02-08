/*     Sem: 1 torsdag: 2 Task: 2

I denne opgave skal du anvende variable i 
forbindelse med printLn kommandoer.

2.a store your name in a variable and print it.
2.b store your age in a varible and print it.
2.c store whether or not you are happy right now, as a boolean
(true for happy, false for sad).
2.d using the above variables print the following message:
"Hi, my name is <name>"
"I am <age> years old"
"I <dont> clap my hands"

where the <> refers to variables.
the last variable (<dont>) is only to be printed if 
the happy boolean is false */

// 2.a
println("----------------2a--------------------");
String name = "Rolf";
println(name);
// 2.b
println("----------------2b--------------------");
int age = 30;
println(age);
// 2.c
println("----------------2c--------------------");
boolean happyRightNow = false;
println("Am i happy right now? " + happyRightNow);

// 2.d 
println("----------------2d--------------------");
String dontV = happyRightNow?"":"don't ";
println("Hi, my name is " + name);
println("I am "+ age + " years old");

if (happyRightNow){
println("I clap my hands");
} else {
  println("I dont clap my hands");
}
println("----------------2d v2--------------------");
println("I " + dontV + "clap my hands");
