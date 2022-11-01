@isTest
public class CalculationTest {
    @isTest
    public static void CalculationT1(){
        Calculation c1 = new Calculation();
        integer x = c1.add(3, 5);
        system.assertEquals(8, x);

        Calculation c2 = new Calculation();
        integer y = c2.subtract(5, 3);
        system.assertEquals(2, y);

        Calculation c3 = new Calculation();
        integer z = c3.multiply(3, 5);
        system.assertEquals(15, z);

        Calculation c4 = new Calculation();
        integer t = c4.divide(15, 3);
        system.assertEquals(5, t);

        
    }
}
