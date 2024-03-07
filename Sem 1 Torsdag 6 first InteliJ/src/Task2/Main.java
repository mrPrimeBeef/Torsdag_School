package Task2;

import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {
    Cafe cafe = new Cafe();

      ArrayList<String> menu = cafe.loadMenuData();

       printMenu(menu);

    }

    public static void printMenu(ArrayList<String> menu){

        for (int i = 0; i < menu.size(); i++){
            System.out.println(menu.get(i));
        }
    }

}


//Task 2: Load coffee menu for a cafe
//In this program we will load a list of coffee names and display it to the user. We will create a Cafe class that loads the list and a Main class that tests that the Cafe class works as expected.
//
//        2.a Above you will see a file called coffees.txt. Open it and check that is contains 5 names for types of coffee. Download it, or copy the text to a new textfile and save it with the same name. Place coffees.txt in the same folder as the classes you will write for this task.
//
//2.b Create a class called Main with a main method.
//
//        2.c Create another class called Cafe. Give it an attribute called 'coffeeMenu' of type ArrayList<String>. (Later you will fill this ArrayList with the names of the coffees from the textfile).
//
//        2.c In the Cafe class, add a method loadMenuData Have the method load the coffees.txt file like this: File file = new File("coffees.txt)
//(make sure that the path is right)
//
//        2.d In this step you will read from the file, using a Scanner object: Add the file instance to a new Scanner object. (This piece of code will need to be wrapped in a try -catch block)
//
//The solution to this step is given below, but give it a go before peeping.
//
//Peep the solution to this step:
//        2.e Inside the try block from the last step, you will now add this piece of code that loops over the lines of the textfile:
//
//Use a while loop with the hasNextLine() and nextLine() -methods called on the Scanner instance, to loop over the lines of the file and add the lines to the coffees ArrayList in this class.
//
//peep solution:
//        2.g In the main method create a new instance of the Cafe class and call its loadMenuData() -method.
//
//2.h Still in the main method, print all the elements of the attribute coffeeMenu of the Cafe instance you just created.
