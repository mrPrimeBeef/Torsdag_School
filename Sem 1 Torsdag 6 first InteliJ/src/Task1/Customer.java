package Task1;

public class Customer {
    private String firstName;
    private String lastName;
    private String userName;
    private int id;
    static int counter = 0;

    public Customer(String firstName, String userName){
        this.firstName = firstName;
        this.userName = userName;
        counter++;
        id = counter;

    }

    @Override
    public String toString(){
        return "First name: " + getFirstName() + "\n" + " User name: " + getUserName()  + "\n" + " Users ID: " +getId();
    }

    public java.lang.String getFirstName() {
        return firstName;
    }

    public java.lang.String getLastName() {
        return lastName;
    }

    public java.lang.String getUserName() {
        return userName;
    }

    public int getId() {
        return id;
    }
}



//1.a Lav en klasse, Customer, med attributterne (felterne/instansvariablene):
//String firstName
//String lastName
//String username
//int id
//static int counter

//1.b Klassen skal have en konstruktør, der tager kundens navn og brugernavn som parametre.

//1.c Sørg for at counter tælles op med 1, hver gang konstruktoren bliver kaldt. Brug counter til at initialisere id

//1.d Giv klassen en toString() metode, der printer kundens detaljer pænt ud. Gør alle klassens felter private, og tilføj getters().