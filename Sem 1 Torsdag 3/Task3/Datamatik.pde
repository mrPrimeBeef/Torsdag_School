//  3.i
void setup() {
   // 3.j
  Teacher Signe = new Teacher("Signe", 49, true);
  Student Rolf = new Student("Rolf", 30, false, "MrPrimeBeef");
  Student Rikke = new Student("Rikke", 28, true, "MrPrimeBeef");
  
  // 3.k
  Signe.name();
  
  // 3.l 
 println(Rolf.name + " and " + Rikke.name + " is both from " + Rolf.datamatikerTeam);
}
