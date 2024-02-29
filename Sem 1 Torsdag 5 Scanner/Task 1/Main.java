class Main{

public static void main(String args[]){

	Team team1 = new Team("DreamTeam");

	Team team2 = new Team("numb2");
	Team team3 = new Team("Im3");
	Team team4 = new Team("maytheforce");
	Team team5 = new Team("five");
	Team team6 = new Team("YesPlease");

	int counter = 1;

	

	Team[] teams = {team1, team2, team3, team4, team5, team6};


	for (Team team : teams) {
            team.setRank(counter);
			counter ++;
        }


        for (Team team : teams) {
            System.out.println(team.toString());
        }


	}// end main methode

} // end main class


/*

Exercises with Scanner
Today's tasks should be coded using a text editor. For each Task you will create a new folder and start by adding a Main class with a main method (except for Task 3). In task 2 you will write all the code in the main method, while in 1 and 4 you will be asked to make both a Main class with a main method in it (sometimes refered to as the "client class") and an "entity class" whithout a main method but with a constructor.

NOTE: Task 5 is a continuation of Task 4. There are many small steps and you might loose track. Follow the steps as far as you can. Use the hints and codesnippets provided. The goal is to prepare yourself for review, where we will code it together.

Task 1:
In this exercise you will code an entity class Team and a client class Main. You will create private attributes on the entity class and give it a parameterized constructor, a toString and a setter method.

1.a Create a class Main with a main method.

1.b Create an entity class called Team.

1.c Add a private instance variable a.k.a attribute to Team to hold the team name.

1.d Add another private instance variable to hold the Teams rank (some number).

1.e Add yet another private instance variable to hold the names of players in the team.

1.f Add a constructor with a parameter, so that the Team can be instantiated with a team name. Make sure the parameter value is assigned to the mathcing instance variable.

Hint
1.g From the main method in the Main class, create an instance of the Team class (instantiate the Team class).

1.h In the Team class add a method called setRank that takes a number and assigns it to the rank attribute.

1.i From the main method, call the method setRank on the instance of Team you created in step 1.g with a number of your choice.

1.j In the Team class add a toString method that returns a String formated like this:

"Hold: De Uovervindelige Rang: 3"

(Precise wording will depend on the name and rank of the Team instance you have created in step 1.g)

1.k From the main method, create 5 more Team instances and print them.*/