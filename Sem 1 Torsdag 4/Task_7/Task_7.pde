/*
Task 7: ArrayList
 7.a Create three ArrayLists that can hold the following types and assign at least 3 different values to each of them:
 
 Integer
 String
 Boolean
 Hint
 7.b Write a method that takes an ArrayList of Strings as parameter and prints each String.
 Hint
 7.c Write a method that receives an ArrayList of Integers as a parameter and returns the sum of all elements in the array.
 Hint
 7.d Write a method that receives an ArrayList of Integers as a parameter and returns the average value.
 
 */

// 7. a




// 7. b

void setup() {
  ArrayList<Integer> intArrayList = new ArrayList<>();
  intArrayList.add(1);
  intArrayList.add(2);
  intArrayList.add(3);
  

  ArrayList<String> stringArrayList = new ArrayList<>();
  stringArrayList.add("et");
  stringArrayList.add("to");
  stringArrayList.add("tre");

  ArrayList<Boolean> booleanArrayList = new ArrayList<>();
  booleanArrayList.add(true);
  booleanArrayList.add(false);
  booleanArrayList.add(true);


  printArrayList(stringArrayList);
  println(sumItAll(intArrayList));
  println(sumItAverage(intArrayList));
}

void printArrayList(ArrayList<String> name) {
  for (String s : name) {
    println(s);
  }
}


Integer sumItAll(ArrayList<Integer> name) {
  int sum = 0;
  for (Integer i : name) {
   sum += i;
  }
  return sum;
}

Integer sumItAverage(ArrayList<Integer> name) {
  int sum = 0;
  for (int i : name) {
    sum += i;
  }
  return sum / name.size();
}
