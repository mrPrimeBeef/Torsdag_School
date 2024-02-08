/*                Sem: 1 torsdag: 2 Task: 1
I denne opgave skal du lave en switch, som printer 
antal dage i de forskellige måneder.

1.a Lav en variabel month af typen String
1.b Lav en switch, der anvender month og printer " har x dage" 
hvor x er antallet af dage i måneden (ikke en variabel).
*/
// 1.a 
// println("----------------1a--------------------");
String month = "Mar";
int days;

 // 1.b
 println("----------------1b--------------------");
switch(month) {
  case "Jan":
    days = 31;
    break;
  case "Feb":
    days = 28; // Assuming non-leap year
    break;
  case "Mar":
    days = 31;
    break;
  case "Apr":
    days = 30;
    break;
  case "May":
    days = 31;
    break;
  case "Jun":
    days = 30;
    break;
  case "Jul":
    days = 31;
    break;
  case "Aug":
    days = 31;
    break;
  case "Sep":
    days = 30;
    break;
  case "Oct":
    days = 31;
    break;
  case "Nov":
    days = 30;
    break;
  case "Dec":
    days = 31;
    break;
  default:
    days = -1;
    break;
}

println("Number of days in " + month + ": " + days);
