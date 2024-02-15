void setup() {

  Student rolf = new Student("Rolf", 30, false, "MrPrimeBeef");
  Student rikke = new Student("Rikke", 28, true, "MrPrimeBeef");
  Student rolf1 = new Student("Rolf1", 30, false, "MrPrimeBeef");
  Student rikke1 = new Student("Rikke1", 28, true, "MrPrimeBeef");

  println(rolf.name + " and " + rikke.name + " is both from " + rolf.datamatikerTeam);
 aniNames(rolf1, rikke1);

  // 5.b
  //boolean areClassmates = rolf.isClassmates(rikke);

  // 5.c
  //if (areClassmates) {
  //  println(rolf.name + " and " + rikke.name + " are classmates");
  //} else {
  //  println(rolf.name + " and " + rikke.name + " are not classmates");
  //}

  
}

void aniNames (Student student1, Student student2) {
    if (student1.isClassmates(student2)) {
      println(student1.name + " and " + student2.name + " are classmates");
     
    } else {
      println(student1.name + " and " + student2.name + " are not classmates");
      
    }
  }
