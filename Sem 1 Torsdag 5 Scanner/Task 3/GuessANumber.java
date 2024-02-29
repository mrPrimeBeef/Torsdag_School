import java.util.Random;
import java.util.Scanner;  


public class GuessANumber {
	private static int rnd_number;
   private static int count = 0;

    private static Scanner scan = new Scanner(System.in);

	
    public static void main(String[] args) {
        // pick a random number
        Random random = new Random();
        rnd_number = random.nextInt(100) + 1;
        System.out.println( "I'm thinking of a number between 1 and 100 (including both).");
		System.out.println( "Can you guess what it is?...");
        makeAGuess();
 	}


    private static void makeAGuess() {
        // Read user input
        int userNumber;
        count ++;
        // Check if input is numeric
        if (scan.hasNextInt()) {
            userNumber = scan.nextInt();

            // Compare user input with the random number
            if (rnd_number == userNumber) {
                // Let the user know the result of the comparison
                System.out.println("Congrats, you guessed the number!");
               System.out.println("it took " + count + " tries.");
            } else {
                // Provide feedback to the user
                if (userNumber < rnd_number) {
                    System.out.println("Your guess is too low. Try again.");
                } else {
                    System.out.println("Your guess is too high. Try again.");
                }
                // Allow the user to try again by calling this method recursively
                 
                makeAGuess();
            }
        } else {
            // Show an error message if input was not numeric
            System.out.println("Invalid input. Please enter a numeric value.");
            // Call this method recursively to allow the user to try again
            scan.next(); // Clear the scanner buffer
            
            makeAGuess();
        }
    }
}

/*
Task 3: Finish the GuessANumber class
3.a Open the java file above called GuessANumber.java and try to finish the code. Follow the steps written as comments in the makeAGuess method. Recursion is mentioned. This means that the method must call itself.
*/