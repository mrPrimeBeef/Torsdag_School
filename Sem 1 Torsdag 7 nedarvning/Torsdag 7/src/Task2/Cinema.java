package Task2;

public class Cinema {
    String[][] seats;

    // Række 0, sæde 0 er altid reserveret til direktøren og skal derfor have værdien X
    // Sæder, der ikke er reserveret, har værdien "O"
    public Cinema(int rows, int seats) {
        // -----------------------        1.fejl this.seats[0][0] = "X"; kom før this.seats = new String[rows][seats];
        this.seats = new String[rows][seats];

        for (int i = 0; i < getRows(); i++) {
            for (int j = 0; j < getSeats(); j++) {
                this.seats[i][j] = "0";
            }
        }
        // -----------------------        2. fejl fyld array med værdi 0

        this.seats[0][0] = "X";
    }

    //  --------------------------------------------   3. fejl off by 1 i getRows og i getSeats
    public int getRows() {

        return seats.length;
    }

    public int getSeats() {

        return seats[0].length;
    }

    // If the seat is not yet reserved, it's value is O.
    // In that case, change the value to X and return true.
    // If the seat is already reserved, return false.
    public boolean reserve(int row, int seat) {
        row -= 1;
        seat -= 1;
        if (seats[row][seat].equals("0")) {
            seats[row][seat] = "X";
            return true;
        }
        return false;
    }

    public boolean cancelReservation(int row, int seat) {
        row -= 1;
        seat -= 1;
        // ----------------------------                 4. fejl, der var et lille x X x X
        if (seats[row][seat].equals("X")) {
            seats[row][seat] = "O";
            return true;
        }
        return false;
    }


    // -----------------------        2. fejl fyld array med værdi 0
    // -----------------------        5. fejl result stod til null

    public String toString() {
        String result = "";
        for (int i = 0; i < seats.length; i++) {
            for (int j = 0; j < seats[i].length; j++) {
                result += seats[i][j] + " ";
            }
            result += "\n";
        }
        return result;
    }
}
