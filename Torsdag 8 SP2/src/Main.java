
public class Main {
    public static void main(String[] args) {
        FleetOfCars fleet = new FleetOfCars();

        GasolinCar bil1 = new GasolinCar("AB80900", "Audi", "Rs4", 5,11.4);

        DieselCar bil2 = new DieselCar("CD80900", "Kia", "Ceed", 5,25.8, true);
        ElectricCar bil3 = new ElectricCar("EQ86920", "Mercedes", "4hjul", 5,90.6,632);
        ElectricCar bil4 = new ElectricCar("EQ80808", "Mercedes", "Lastvogn", 2,200,100);
        GasolinCar bil5 = new GasolinCar("GH52450", "BMW", "??", 5,23);

        fleet.addCar(bil1);
        fleet.addCar(bil2);
        fleet.addCar(bil3);
        fleet.addCar(bil4);

        System.out.println(fleet);

        System.out.println("The total registration fee for our fleet is " + fleet.getTotalRegistrationFeeForFleet());

        //fleet.getTotalRegistrationFeeForFleet();

    }
}