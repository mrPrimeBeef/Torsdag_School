import Util.FileIO;

import java.util.ArrayList;

public class FleetOfCars {

    private FileIO io = new FileIO();
    private final String path = "Data/cars.csv";
    private ArrayList<ICar> fleet = new ArrayList<>();

    public void addCar(ICar Car) {
        fleet.add(Car);
    }

    public int getTotalRegistrationFeeForFleet() {
        int result = 0;
        for (ICar element : fleet) {
            result += element.getRegistrationFee();
        }
        return result;
    }

    public void saveFleetToFile() {
        ArrayList<String> dataList = new ArrayList<>();
        String header = "Registration, Make, Model, NumberOfDoors, kmPrLitre, ParticleFilter, BatteryCap, MaxRange";
        for (ICar element : fleet) {
            String data = element.toCSV();
            dataList.add(data);
        }
        io.saveData(dataList, this.path, header);
    }

    @Override
    public String toString() {
//        String result = "";
        return "FleetOfCars består af: " + fleet + "\n";
//        for (ICar element : fleet){
//            result += "Make: " + element.getMake() + " Model: " + element.getModel() + "\n";
//            result += "registration number: " + element.getRegistrationNumber() + "\n";
//        }
//        return result;
//    }
    }
}
