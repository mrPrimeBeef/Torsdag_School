void setup() {

  Student rolf = new Student("Rolf", 30, false, "MrPrimeBeef");
  Student rikke = new Student("Rikke", 28, true, "MrPrimeBeef");

  println(rolf.name + " and " + rikke.name + " is both from " + rolf.datamatikerTeam);

// 5.b
boolean areClassmates = rolf.isClassmates(rikke);

// 5.c
  if (areClassmates) {
    println(rolf.name + " and " + rikke.name + " are classmates");
  } else {
    println(rolf.name + " and " + rikke.name + " are not classmates");
  }
}
