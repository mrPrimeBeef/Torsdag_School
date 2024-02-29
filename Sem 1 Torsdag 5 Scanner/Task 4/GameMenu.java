import java.util.ArrayList;
import java.util.List; 

class GameMenu {
    private ArrayList<String> actions;

    public GameMenu(List<String> actions) {
        this.actions = new ArrayList<>(actions);
    } // end construtor

    void displayMenu(){
    	for (String options : actions){
    		System.out.println(options);
    	}
    }
} // end class