
class Student {
  String name;
  int age;
  boolean isFemale;
  String datamatikerTeam;


  Student(String tmpName, int tmpAge, boolean tmpIsFemale, String tmpDatatikerTeam) {

    name = tmpName;
    age = tmpAge;
    isFemale = tmpIsFemale;
    datamatikerTeam = tmpDatatikerTeam;
  }
  
  // 5.a
 boolean isClassmates(Student other) {
    return this.datamatikerTeam.equals(other.datamatikerTeam);
  }
  
}
