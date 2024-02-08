/*      Sem: 1 torsdag: 2 Task: 3
I denne opgave skal du bruge relationelle operatorer 
(fx. <, >, <=) boolske operatorer(AND, OR, NOT).

3.a make 2 integer variables named a and b. Print
"Success!" if either of them is equal to 10 or if 
the sum is. If not, print "Failure!".
3.b make 2 integer variables named min and max. 
Print "Success!" if this condition is met: the sum of 
them must be higher than 10 and one of the numbers 
must be less than or equeal to 5.
3.c make 3 integer variables named x, y and z. 
Print "Success!" if their sum is 30, but none of 
them may have the value of 10, 20 or 30. Otherwise print "Failure!".

*/

// 3.a
println("----------------3a--------------------");

int a = 8008;
int b = 55178;

int sum = a + b;

if (a == 10 || b == 10 || sum == 10){
  println("Success!");
} else {
println("Failure!");
}

// 3.b
println("----------------3b--------------------");

int min = 0;
int max = 0;
int maxPower = min + max;

if ((maxPower > 10) && (min <= 5 || max  <= 5)){
  println("Success!");
} else {
println("No");
}

// 3.c
println("----------------3c--------------------");
int x = 12;
int y = 9;
int z = 9;

if ((x + y + z == 30) && (x != 10 && y != 10 && z != 10) && (x != 20 && y != 20 && z != 20) && (x != 30 && y != 30 && z != 30)){
  println("Success!");
} else {
println("Failure!");
}
