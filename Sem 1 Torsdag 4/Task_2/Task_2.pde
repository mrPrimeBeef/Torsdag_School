/*
Task 2: print et udsnit af et ord
 I denne opgave skal du bruge substring metoden fra klassen String.
 Substring metoden kan man bruge hvis man skal bruge et udsnit af en tekststreng.
 fx. de tre første bogstaver.(Læs om [substring metoden]
 (https://beginnersbook.com/2013/12/java-string-substring-method-example/).
 
 2.a Lav en metode, printPartOfWord(), med tre parametre
 
 ordet der skal findes et udsnit af.
 start-index: tallet for det sted udsnittet skal starte
 slut-index: tallet for det sted udsnittet skal slutte
 Ex: argumenterne "København", 0 og 3 skal give outputtet "Køb".
 
 2.b Kald metoden fra setup() med passende argumenter og se om den virker.
 
 2.d Find ud af hvordan du skal ændre kaldet for at få de sidste 4
 bogstaver i en hvilken som helst string.
 
 2.e Tjek hvad der sker hvis man kalder metoden med negative værdier.
 Eller hvor start-index er højere end end slut index. Nu skal du sikre at
 metoden giver en passende besked, hvis man kommer til at kalde den med
 sådanne "forkerte" argumenter.
 */

String input = "Etlængereord";

// 2. b
void setup() {
  printPartOfWord("København", 0, 3);

  // 2. d
  printPartOfWord(input, input.length()-4, input.length());

  // 2. e
  printPartOfWord(input, 11, 12);
} // end setup

// 2.a
void printPartOfWord(String word, int start, int end) {

  if ((start > end) || (start > word.length() || end > word.length()) || (end < 0 || start < 0)) {
    println("Invalid arguments, check input");
  } else {
    String result = word.substring(start, end);
    println(result);
  }
}
