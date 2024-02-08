String address;
int seeYouCalculater;
float calcuNow;
String message = "Du vil måske nyde de sjove navne på variablerne";

void setup(){
seeYouCalculater = 8 + 8000;
calcuNow = 5.4/3;
address = "right here"; 

println("Adresse: " + address);
println("comma comma: " + calcuNow);
println("funny number: "+ seeYouCalculater);
println("eailer message: "+ message);

seeYouCalculater = 9 + 8000;
calcuNow = calcuNow + 8.4/3;
address = address + " right there";
message = message +" not funny anymore";

println("Adresse: " + address);
println("comma comma: " + calcuNow);
println("notfunny number: "+ seeYouCalculater);
println("eailer message: "+ message);

seeYouCalculater ++;
println(seeYouCalculater);

calcuNow ++;
println(calcuNow);

seeYouCalculater += 3;
println(seeYouCalculater);

calcuNow += 3;
println(calcuNow);

seeYouCalculater --;
println(seeYouCalculater);

calcuNow --;
println(calcuNow);
}
