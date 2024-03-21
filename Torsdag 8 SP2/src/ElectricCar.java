import java.util.ArrayList;

public class ElectricCar extends ACar {
    private double batteryCapacity;
    int maxRange;

    public ElectricCar(String registrationNumber, String make, String model, int numberOfDoors, double batteryCapacity, int maxRange) {
        super(registrationNumber, make, model, numberOfDoors);
        this.batteryCapacity = batteryCapacity;
        this.maxRange = maxRange;
    }

    public double getBatteryCapacityKWh() {
        return this.batteryCapacity;
    }

    public int getMaxRangeKm() {
        return this.maxRange;
    }
    public double getWhPrKm(){
        return (batteryCapacity * 1000) / maxRange;
    }

    @Override
    public int getRegistrationFee(){
        double kmL = 100 / (getWhPrKm() / 91.25);


        if(kmL < 5){
            return 10470;
        } else if(kmL <= 10){
            return 5500;
        } else if (kmL <= 15) {
            return 2340;
        } else if (kmL <= 20) {
            return 1050;
        } else {
            return 330;
        }

    }

    public String toCSV() {
        String result = "";
        result += getMake() + ",";
        result += getModel() + ",";
        result += getRegistrationNumber() + ",";
        result += getNumberOfDoors() + ",";
        result += " " + ",";
        result += " " + ",";
        result += batteryCapacity + ",";
        result += maxRange + ",";
        return result;
    }

    @Override
    public String toString() {
        return  make + " " + model + " registration number: " + registrationNumber;
    }


}

//6. Klasse ElectricCar. Denne klasse nedarver fra ACar. Den skal tilføje metoderne:
//a. getBatteryCapacityKWh(); // returns the battery capacity in kilowatt hours
//b. getMaxRangeKm(); // returns the maximum range in kilometres.
//c. getWhPrKm(); // returns the power consumption in watt hours per driven kilometre.
//Lav attributer til battery capacity og max range, som initialiseres i konstruktøren. Beregn watt-timer per kilometer ud fra disse to attributter.


//2.    For en Elbil gælder de samme regler som for en benzinbil, blot skal man først omregne watt-timer pr kilometer til km/l.
// Det gøres ved at dividere Wh/km med 91,25 og dernæst dividere 100 med dette tal.
// Se evt. formlen her: https://fdm.dk/alt-om-biler/dine-rettigheder/boder-afgifter/ejerafgift-elbil.
