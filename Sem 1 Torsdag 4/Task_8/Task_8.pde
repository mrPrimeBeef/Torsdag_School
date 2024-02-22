/*
Task 8: (optional) sorting arrays
 Consider how you could write a method that takes an array
 (not an ArrayList) of integers as a parameter and returns a
 new array of the ints sorted from lowest to highest value.
 */
int[] arr = {8, 7, 5, 21, 20, 604, 80};

void setup() {
  int[] sorted = sortedArray(arr);
  println("Sorted Array:");
  printArray(sorted);
}

int[] sortedArray(int[] arr) {

  boolean diffrent = true;

  while (diffrent == true) {
    
    for (int i = 0; i < arr.length-1; i++) {
      if (arr[i] > arr[i + 1]) {
        int a = arr[i];
        int b = arr[i + 1];
        arr[i + 1] = a;
        arr[i] = b;
        diffrent = true;
      } else {
        diffrent = false;
      } // end if
    }// end for
  } // end while
  return arr;
}

void printArray(int[] arr) {
  for (int i = 0; i < arr.length; i++) {
    println(arr[i]);
  }
}
