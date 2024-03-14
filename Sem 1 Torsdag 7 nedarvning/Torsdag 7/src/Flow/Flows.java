package Flow;

public class Flows {

    public void methodA(String input) {
        System.out.println("J");
        if (!input.equals("start")) {
            System.out.println("b");
            methodB("start");
        } else {
            System.out.println("a");
            System.out.println(methodC(input));

        }
        // System.out.println("i");
    }

    public void methodB(String start) {
        System.out.println("e");
        System.out.println("r");
    }

    public String methodC(String input) {
        System.out.println("v");
        methodD(input.length());
        return "";
    }

    public void methodD(int number) {
        System.out.println("a");
        if (number > 5) {
            System.out.println("o");
        }
        //System.out.println("h");

    }


}
