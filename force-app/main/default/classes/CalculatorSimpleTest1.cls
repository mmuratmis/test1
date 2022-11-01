@isTest
public  class CalculatorSimpleTest1 {
    @isTest
public static void simpleTest(){
    integer result = CalculatorSimple.add(3, 5);
    system.assertEquals(8, result);

    integer result2 = CalculatorSimple.add(3, 5, 7);
    system.assertEquals(15, result2);
}


}
