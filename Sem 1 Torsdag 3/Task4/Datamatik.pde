
void setup() {

  Teacher Signe = new Teacher("Signe", 49, true);
  Student Rolf = new Student("Rolf", 30, false, "MrPrimeBeef");
  Student Rikke = new Student("Rikke", 28, true, "MrPrimeBeef");

  // 4.b & 4.c
  Signe.changeName("Tess");
  Signe.printName();


  println(Rolf.name + " and " + Rikke.name + " is both from " + Rolf.datamatikerTeam);
}
