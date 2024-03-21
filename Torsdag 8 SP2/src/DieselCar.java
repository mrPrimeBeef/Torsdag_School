public class DieselCar extends AFuelCar {
    private boolean particleFilter;
    private final String typeOfFuel = "Diesel";

    public DieselCar(String registrationNumber, String make, String model, int numberOfDoors, double kmPrLitre, boolean particleFilter) {
        super(registrationNumber, make, model, numberOfDoors, kmPrLitre);
        this.particleFilter = particleFilter;
    }

    @Override
    public String getFuelType() {
        return this.typeOfFuel;
    }


    public boolean hasParticleFilter() {
        return particleFilter;
    }
    public int getRegistrationFee(){
        int result = 0;

        if(!hasParticleFilter()){
            result +=1000;
        }

        if(this.getKmPrLitre() < 5){
            result = 15260;
        return result;
         } else if(this.getKmPrLitre() <= 10){
            result += 2770;
        return result;
        } else if (this.getKmPrLitre() <= 15) {
            result += 1850;
        return result;
        } else if (this.getKmPrLitre() <= 20) {
            result += 1390;
        return result;
        } else {
            result += 130;
        return result;
    }
    }


    @Override
    public String toString() {
        return  make + " " + model + " registration number: " + registrationNumber;
    }
}

//3.  For en Dieselbil er der samme afgift som for benzinbilen, plus en udligningsafgift, som også er afhængig af km/l.
// Hvis bilen kører mellem 20 km/l og 50 km/l er udligningsafgiften 130 kr,
// kører den mellem 15 km/l og 20 km/l er den 1390 kr,
// kører den mellem 10 km/l og 15 km/l er den 1850 kr,
// kører den mellem 5 km/l og 10 km/l er den 2770 kr,
// og kører den under 5 km/l er den 15260 kr.
// Der er desuden en partikeludledningsafgift på 1000 kr hvis bilen ikke har et partikelfilter monteret.

//5. Klasse DieselCar. Denne klasse nedarver også fra FuelCar og
// skal også implementere de to abstrakte metoder getFuelType() og
// getRegistrationFee(). Herudover skal der være en metode, hasParticleFilter(),
// der fortæller om bilen har et partikelfilter monteret. Registreringsafgiften
// skal beregnes ud fra beskrivelsen i toppen af opgaven.
