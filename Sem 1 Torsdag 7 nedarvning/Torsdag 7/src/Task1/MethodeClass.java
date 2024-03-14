package Task1;

public class MethodeClass {

    public void methodeA(String input){
        System.out.print("");
        if(input.equals("a") || input.equals("o")){
            System.out.print("v");
        } else {
            System.out.print("J");
        }
    }
    public void methodeB() {
        System.out.print("a");
        methodeA("a");
        System.out.print("a ");

    }
    public String methodeC(String input){
        if (input.equals("e")){
            System.out.print("e");
            methodeC("r");
            return "";
        } else {
            System.out.print("r");
            return " ";
        }


    }
    public void methodeD(){
        System.out.println(" sjovt");


    }
}
