import static org.junit.Assert.*;

public class GasolinCarTest {
    GasolinCar bil1 = new GasolinCar("AB80900", "Audi", "Rs4", 5,2);
    GasolinCar bil2 = new GasolinCar("AB80900", "Audi", "Rs4", 5,10);
    GasolinCar bil3 = new GasolinCar("AB80900", "Audi", "Rs4", 5,15);
    GasolinCar bil4 = new GasolinCar("AB80900", "Audi", "Rs4", 5,20);
    GasolinCar bil5 = new GasolinCar("AB80900", "Audi", "Rs4", 5,21);
    @org.junit.Before
    public void setUp() throws Exception {

    }

    @org.junit.Test
    public void getRegistrationFeeHigh() {
        int expected = 10470;
        int actual = this.bil1.getRegistrationFee();
        assertEquals(expected, actual);

        // highst Gasoline car fee
    }
    @org.junit.Test
    public void getRegistrationFeeNextHigh() {
        int expected = 5500;
        int actual = this.bil2.getRegistrationFee();
        assertEquals(expected, actual);

        // next highst Gasoline car fee
    }
    @org.junit.Test
    public void getRegistrationFee3rdHigh() {
        int expected = 2340;
        int actual = this.bil3.getRegistrationFee();
        assertEquals(expected, actual);

        //3rd highst Gasoline car fee
    }

    @org.junit.Test
    public void getRegistrationFee4rdHigh() {
        int expected = 1050;
        int actual = this.bil4.getRegistrationFee();
        assertEquals(expected, actual);

        //3rd highst Gasoline car fee
    }
    @org.junit.Test
    public void getRegistrationFeeLow() {
        int expected = 330;
        int actual = this.bil5.getRegistrationFee();
        assertEquals(expected, actual);

        //lowest Gasoline car fee
    }
}

