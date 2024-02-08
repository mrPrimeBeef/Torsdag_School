/*     Sem: 1 torsdag: 2 Task: 4
 
 Her skal du øve dig i at skrive for-loops og while-loops.
 
 4.a print out numbers from 0 to 20 using a for loop.
 4.b alter the for loop from 4.a to only print even numbers
 Hint
 4.c alter the loop so that it becomes a countdown starting at
 the value you give to a variable of type int called 'start'.
 When it reaches 0, print "Take Off!"
 In the same loop (4.c) add a little detail:
 the numbers 3, 2 and 1, must be printed as words (3 == "Three").
 4.d change the code for 4.b and 4.c using a while loop instead of a for loop.
 
 */


// 4.a
println("----------------4a--------------------");
for (int i = 0; i <= 20; i++) {
  println(i);
}

// 4.b
println("----------------4b--------------------");
for (int i = 0; i <= 20; i+=2) {
  println(i);
}
println("----------------4b v2--------------------");
for (int i = 0; i <= 20; i++) {
  if (i % 2 == 0) {
    println(i);
  }
}

// 4.c
println("----------------4c--------------------");

int start = 10;

for (int i = start; i >= 0; i--){
  if (i > 3){
  println(i);
  } else if(i==3){
  println("Three");
  } else if(i==2){
  println("Two");
  } else if(i==1){
  println("One");
}else{
 println("Take Off!");
 }}

println("----------------4c v2--------------------");

for (int i = start; i >= 0; i--){
  if (i > 3){
  println(i);
  } else if(i==3){
  println("Three");
  } else if(i==2){
  println("Two");
  } else if(i==1){
  println("One");
}else{
 println("Take Off!");
 }}

// 4.d
println("----------------4d--------------------");

println("---------------- 4d 4b--------------------");
int s = 0;
while (s <= 20) {
  if (s % 2 == 0) {
    println(s);
     
  }
s++;
}

// 4.c
println("---------------- 4d 4c--------------------");

int j = 10;

while (j >= 0){
  if (j > 3){
  println(j);
  } else if(j==3){
  println("Three");
  } else if(j==2){
  println("Two");
  } else if(j==1){
  println("One");
}else{
 println("Take Off!");
 
 }
  j--;
}
