public class GasolinCar extends AFuelCar {
    private final String typeOfFuel = "Gasoline";

    public GasolinCar(String registrationNumber, String make, String model, int numberOfDoors, double kmPrLitre) {
        super(registrationNumber, make, model, numberOfDoors, kmPrLitre);
    }

    @Override
    public String getFuelType() {
        return this.typeOfFuel;
    }

    public int getRegistrationFee() {
        if (this.getKmPrLitre() < 5) {
            return 10470;
        } else if (this.getKmPrLitre() <= 10) {
            return 5500;
        } else if (this.getKmPrLitre() <= 15) {
            return 2340;
        } else if (this.getKmPrLitre() <= 20) {
            return 1050;
        } else {
            return 330;
        }

    }

    @Override
    public String toString() {
        return make + " " + model + " registration number: " + registrationNumber;
    }
}

//4.  Klasse GasolineCar. Denne klasse nedarver fra FuelCar
// og skal implementere de to abstrakte metoder getFuelType() og getRegistrationFee().
// Registreringsafgiften skal beregnes ud fra beskrivelsen i toppen af opgaven.


//1.    For en Benzinbil er afgiften afhængig af kilometer pr liter.
//Hvis den kører mellem 20 km/l og 50 km/l er prisen 330 kr,
//mellem 15 km/l og 20 km/l er prisen 1050 kr,
//mellem 10 km/l og 15 km/l er prisen 2340 kr,
//mellem 5 km/l og 10 km/l er prisen 5500kr,
//og under 5 km/l er prisen 10470 kr.