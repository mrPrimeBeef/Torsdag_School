/*
// debugging 1
 void setup(){
 MyClass myclass = new MyClass();
 }
 
 public class MyClass {
 
 public MyClass(){
 println("Jobs done!");
 }
 }
 */

// debugging 2

/*
void setup(){
 println("Jobs done!");
 }
 */

// debugging 3
/*
boolean jobsDone = true;
 
 void setup() {
 if (isJobDone()) {
 println("Job's done!");
 }
 }
 
 boolean isJobDone() {
 return jobsDone;
 }
 */

// debugging 4

/*
boolean jobsDone = true;
 
 void setup(){
 if (isJobDone()){
 println("Job's done!");
 }
 }
 
 boolean isJobDone(){
 return jobsDone;
 }
 */

// debugging 5
/*
boolean jobsDone = true;
 
 void setup() {
 if (isJobDone()) {
 println("Job's done!");
 }
 }
 
 boolean isJobDone() {
 return jobsDone;
 }
 */

//  debugging 6
/*
boolean jobsDone = true;
 
 void setup() {
 println(getRandomNumber(0, 10));
 if (isJobDone()){
 println("Job's done!");
 }
 }
 
 boolean isJobDone(){
 return jobsDone;
 }
 
 int getRandomNumber(int min, int max){
 return (int) random(min, max);
 }
 */

// debugging 7

/*
boolean jobsDone = true;
 
 void setup() {
 int myArray[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
 println(getSumOfElementsInArray(myArray));
 
 if (isJobDone()) {
 println("Job's done!");
 }
 }
 
 int getSumOfElementsInArray(int[] arr) {
 int sum = 0;
 for (int i = 0; i < arr.length; i++) {
 sum += arr[i];
 }
 return sum;
 }
 
 boolean isJobDone() {
 return jobsDone;
 }
 */

// debugging 8
/*
boolean jobsDone = true;
 
 void setup() {
 println(isValueGreaterThanThreshold(10, 5));
 println(isValueGreaterThanThreshold(4, 8));
 
 if (isJobDone()) {
 println("Job's done!");
 }
 }
 
 boolean isValueGreaterThanThreshold(int value, int threshold) {
 if (value > threshold) {
 return true;
 } else {
 return false;
 }
 }
 
 boolean isJobDone() {
 return jobsDone;
 }
 */

// debugging 9

boolean jobsDone = true;

void setup(){
  int myArray[] = { 9, 8, 7, 6, 5, 4, 3, 2, 1};
  print(getSumOfAllElementsInArray(myArray));

  if (isJobDone()) {
    println("Job's done!");
  }
}

boolean isJobDone() {
  return jobsDone;
}

int getSumOfAllElementsInArray(int[] arr) {
  int sum = 0;
  for (int i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum;
}
