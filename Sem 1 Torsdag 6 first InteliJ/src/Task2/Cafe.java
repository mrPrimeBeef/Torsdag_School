package Task2;

import java.io.File;
import java.util.ArrayList;
import java.util.Scanner;
// import java.io.FileNotFoundException;

public class Cafe {
    private ArrayList<String> coffeMenu = new ArrayList<>();


    public ArrayList<String> loadMenuData() {

        try {
            // Specify the path to the coffees.txt file
            File file = new File("src/Task2/coffees.txt");
            Scanner scan = new Scanner(file);

            while (scan.hasNextLine()) {
                coffeMenu.add(scan.nextLine());
            }
            scan.close();

            return coffeMenu;

        } catch (Exception e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
            return null;
        }


    }
}



//2.c Create another class called Cafe. Give it an attribute called 'coffeeMenu' of type ArrayList<String>.
// (Later you will fill this ArrayList with the names of the coffees from the textfile).

//2.c In the Cafe class, add a method loadMenuData Have the method load the coffees.txt
//file like this: File file = new File("coffees.txt)