/*
ask 3: Working with String arrays
 In this task you will print out data from two different arrays.
 
 3.a Declare and initialize a String array which we will use to hold
 the names of five top rappers (or any musical artists of your liking).
 
 3.b Write a for-loop or a for-each loop that prints each name in the array.
 The output must look like a numbered list.
 
 1. Grandmaster Flash
 2. Run DMC
 ...
 3.c Declare and initialize another String array which we will use to
 correspondingly hold the hits of the 5 artists in the former array.
 
 3.d Look at the printing statement in step 3.b. Add code that will
 change the output to something similar to this:
 
 1. Grandmaster Flash : "The Message"
 2. Run DMC  : "Walk This Way"
 ...
 */

// 3. a
String[] rapperNames = {"Eminem", "Tech N9ne", "L.O.C", "Suspekt", "McRolf"};

// 3. c
String[] rapHits = {"Stan", "Jumping Jax", "Frk. Escobar", "Kinky Fætter", "lige lidt bedre"};


// 3. b
println("--------------3.b--------------");
for (int i = 0; i < rapperNames.length; i++) {
  println(i + 1 + ". " + rapperNames[i]);
}

// 3. d
println("--------------3.d--------------");
for (int i = 0; i < rapperNames.length; i++) {
  println(i + 1 + ". " + rapperNames[i] + " : " + '"' + rapHits[i] + '"');
}
