public abstract class AFuelCar extends ACar {
    double kmPrLitre;

    public AFuelCar(String registrationNumber, String make, String model, int numberOfDoors, double kmPrLitre) {
        super(registrationNumber, make, model, numberOfDoors);
        this.kmPrLitre = kmPrLitre;
    }

    public abstract String getFuelType();
    public double getKmPrLitre(){
        return kmPrLitre;
    }

    @Override
    public String toString() {
        return  "kmPrLitre: " + kmPrLitre +
                ", registrationNumber: " + registrationNumber + '\'' +
                ", make: " + make + '\'' +
                ", model: '" + model + '\'' +
                ", numberOfDoors: " + numberOfDoors;
    }
}


//3.    Abstrakt Klasse AFuelCar. Denne klasse skal nedarve fra Acar. Den skal tilføje to metoder:
//a.    abstract String getFuelType(); // should return “Gasoline” or “Diesel”
//b.    int kmPrLitre(); // should return how many kilometres the car can drive on 1 litre of fuel
//Lav en attribut til at gemme kilometer per liter og initialisér den i konstruktøren.