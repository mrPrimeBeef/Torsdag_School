import java.util.ArrayList;

public class FleetOfCars {
    private ArrayList<ICar> fleet = new ArrayList<>();

    public void addCar(ICar Car){
    fleet.add(Car);
    }

    public int getTotalRegistrationFeeForFleet(){
        int result = 0;
        for (ICar element: fleet){
        result += element.getRegistrationFee();
         }
        return result;
    }

    @Override
    public String toString() {
        String result = "";
         return "FleetOfCars består af: " + fleet + "\n";
//        for (ICar element : fleet){
//            result += "Make: " + element.getMake() + " Model: " + element.getModel() + "\n";
//            result += "registration number: " + element.getRegistrationNumber() + "\n";
//        }
//        return result;
    }
}
