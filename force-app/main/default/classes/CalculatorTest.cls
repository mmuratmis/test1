@isTest
public class CalculatorTest {
    @isTest
    public static void CalculatorClassFirstTest(){

        Calculator calc1 = new Calculator();
        calc1.printNewMessage('This message is for testing.');
        Calculator calc2 = new Calculator();
        calc2.printAndReturnMessage('This message is for testing too!!');

        Calculator calc3 = new Calculator();
        integer result = calc3.add(9, 12);
        system.assertEquals(21, result);

    }
    
}
