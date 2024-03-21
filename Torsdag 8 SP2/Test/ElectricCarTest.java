import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class ElectricCarTest {
    ElectricCar bil3 = new ElectricCar("EQ86920", "Mercedes", "??", 5,200,100);
    ElectricCar bil4 = new ElectricCar("EQ86920", "Mercedes", "??", 5,90.6,632);
    ElectricCar bil5 = new ElectricCar("EQ86920", "Mercedes", "??", 5,200,300);
    ElectricCar bil6 = new ElectricCar("EQ86920", "Mercedes", "??", 5,200,350);

    ElectricCar bil7 = new ElectricCar("EQ86920", "Mercedes", "??", 5,200,150);





    @Before
    public void setUp() throws Exception {

    }
//    double kmL = 100 / (getWhPrKm() / 91.25);
//        return (batteryCapacity * 1000) / maxRange;

    @Test
    public void getRegistrationLowest() {
        int expected = 330;
        int actual = bil4.getRegistrationFee();
        assertEquals(expected, actual);
    }
    @Test
    public void getRegistrationFeeNext2rdLowest() {
        int expected = 1050;
        int actual = bil6.getRegistrationFee();
        assertEquals(expected, actual);
    }
    @Test
    public void getRegistrationFeeNext3rdLowest() {
        int expected = 2340;
        int actual = bil5.getRegistrationFee();
        assertEquals(expected, actual);
    }

    @Test
    public void getRegistrationFee2ndHighest() {
        int expected = 5500;
        int actual = bil7.getRegistrationFee();
        assertEquals(expected, actual);
    }

    @Test
    public void getRegistrationFeeHighest() {
        int expected = 10470;
        int actual = bil3.getRegistrationFee();
        assertEquals(expected, actual);
    }
}