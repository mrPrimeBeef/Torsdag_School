import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class GameMenu {
    private ArrayList<String> options;

    public GameMenu(List<String> options) {
        this.options = new ArrayList<>(options);
    } // end construtor

    void displayMenu(){
    	for (String index : options){
    		System.out.println(index);
    	}
    }

    public int getAction(){
        System.out.println("Type a number to choose an action");
        
        Scanner scan = new Scanner(System.in);
       

         if (scan.hasNextInt()){
             int numbChoice = scan.nextInt();

            if (numbChoice > options.size()){
                 return numbChoice;
            } else {
                System.out.println("Please choose from the menu");
                return getAction();
            }
         } else {
            System.out.println("You didn't type a number, Please try again");
            return getAction();
         } 
        

    }
} // end class