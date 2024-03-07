package Task3;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        Room room1 = new Room(1, 3,1);
        Room room2 = new Room(2, 2,2);
        Room room3 = new Room(1, 10,0);

        ArrayList<Room> rooms = new ArrayList<>();
        rooms.add(room1);
        rooms.add(room2);
        rooms.add(room3);

       Building daBom = new Building(rooms, 4, 4, true);

       countLampsInBuilding(daBom);
       isNormal(daBom);
    }
    public static int countLampsInBuilding(Building daBom){
        int len = daBom.getRooms().size();
        int result = 0;
        for (int i = 0; i < len; i++){
           result += daBom.getRooms().get(i).getNumberOfLamps();

        }
        return result;
    }
    public static boolean isNormal(Building daBom){
        if (daBom.getNumberOfFloors() > daBom.getRooms().size()) {
            System.out.println("This is a normal building,");
            if(daBom.getIsOfficeBuilding()){
                System.out.println("And it is a office building.");
            } else{
                System.out.println("and it is not office building.");
            }
            return true;


        } else {
            System.out.println("This is an odd building");
            if(daBom.getIsOfficeBuilding()){
                System.out.println("And it is a office building, ");
            }else{
                System.out.println("and it is not office building.");
            }
            return false;
        }
    }

}

//Task 3: Buildings and Rooms
//This task is an excercise in accessing fields in objects within objects. You will create a building with some rooms. Each room will have some attributes which you will access(read the value of) in order to draw conclusions about the building in which the rooms are placed.
//
//The diagram below shows the attributes and method signatures refered to in steps 3.a to 3.f. class diagram
//
//3.a Create a Room.java class with the following fields (use appropriate types and make them private):
//
//numberOfDoors
//        numberOfLamps
//numberOfWindows
//3.b Create a constructor that populates all the fields above.
//
//        3.c As the fields of the Room class are private, create getter()-methods for them,
//
//        3.d Create a Building.java class with the following fields (use appropriate types):
//
//rooms
//
//        Hint
//numberOfBathrooms
//
//        numberOfFloors
//
//isOfficeBuilding
//
//3.e Create a constructor that populates all the fields above.
//
//3.f As the fields of the Building class are private, create getters() for them.
//
//3.g In your main method, instantiate at least three different rooms.
//
//        3.h Add the three rooms to a collection (preferably of the same data type used for the "rooms" field in your Building.java class).
//
//        3.i In your main method, instantiate a new building.
//
//3.j create a static method in Main, countLampsInBuilding, that takes an object of type Building, and returns the total number of lamps in the entire building.

//        Hint
//3.k create another static method in Main, isNormal, that takes an object of type Building. The method should return true if the
//Building's numberOfFloors is greater than its number of Rooms. If not it should print "This is an odd building" and return false.