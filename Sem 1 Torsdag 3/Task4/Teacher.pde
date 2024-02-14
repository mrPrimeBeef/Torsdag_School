
class Teacher {
  String name;
  int age;
  boolean isFemale;


  Teacher(String tmpName, int tmpAge, boolean tmpIsFemale) {

    name = tmpName;
    age = tmpAge;
    isFemale = tmpIsFemale;
  }

  // 4.a
  void changeName(String newName) {
    name = newName;
  }

  void printName() {
    println("i am you teacher " + name);
  }
}
