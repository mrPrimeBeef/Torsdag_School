import java.util.Scanner;
import java.util.Calendar;

class Main{

	public static void main(String args[]){

		Scanner scan = new Scanner(System.in);

		System.out.println("Please type you name.");

		String userName = scan.nextLine();

		System.out.println("Hi " + userName + " Please type your age.");

		int userAge = scan.nextInt();

		 Calendar cal = Calendar.getInstance();
        int currentYear = cal.get(Calendar.YEAR);


        int retirementAge = 73;
         int birthYear = currentYear - userAge;
		 int yearsLeft = retirementAge - userAge;  
		int retirementOption = currentYear + yearsLeft;
		// født i 1993 så kan man gå på persion som 73,5 år


		System.out.println("if you are " + userAge + " old you where born around " + birthYear);

		 


		System.out.println("you can retire at the year: " + retirementOption);
	}
}

/*

Task 2: Scanner basics: calculate years to retirement
This task will require you to use the Scanner type, to get some data from the user. You will then use one of the inputs in a simple calculation, that will tell the user how many years they have to work before they can retire.

2.a: create a Main class with a main method.

2.b: In the main method start by printing a message to the user: "Please type your name".

2.c: Create a Scanner object for reading the command line (remember to import the Scanner class from the util library: import java.util.Scanner; )

Hint
2.d: Declare a String variable, name and assign it the content of the scanner's call to nextLine().
peep solution
2.e: Print the name of the user in a greeting, followed by the message "Please type your age"

2.f: Declare another variable of type int, age and assign it the value returned by the nextInt method of the Scanner object. (you may reuse the Scanner object created in 2.c).

2.g: Print the value the user writes (the age variable)

2.h: Declare a third variable of type int. To this variable, assign the calculated number of years until the user can retire. You may assume retirement starts at 67 years. Print the result.

*/