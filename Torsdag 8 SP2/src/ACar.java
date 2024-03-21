public abstract class ACar implements ICar {
    String registrationNumber;
    String make;
    String model;
    int numberOfDoors;

    public ACar(String registrationNumber, String make, String model, int numberOfDoors) {
        this.registrationNumber = registrationNumber;
        this.make = make;
        this.model = model;
        this.numberOfDoors = numberOfDoors;
    }

    public String getRegistrationNumber(){
return this.registrationNumber;
}
public String getMake(){
    return this.make;
}
public String getModel(){
    return this.model;
}
public int getNumberOfDoors(){
    return this.numberOfDoors;
}

public abstract int getRegistrationFee();

}

//2. Abstrakt klasse ACar. Skal implementere Car interfacet og alle
// metoderne i dette, undtagen getRegistrationFee(). Lav klasse attributter
// til at holde styr på registreringsnummer (nummerplade), mærke, model og antal døre.
// (Husk at bruge engelske navne til alt). Overvej hvilke attributter det giver mening at lave final.