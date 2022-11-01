@isTest
public class CalculatorSipleTest {
    @isTest
   private static void testAdd1() {
       //we can call other methods, which accepts params.
       integer sum = CalculatorSimple.add(10,15);
       integer expectedSum = 25;
       system.assertEquals(expectedSum, sum);
   }

   @isTest
   public static void testadd2(){
    integer sum = CalculatorSimple.add(10,15,10);
       integer expectedSum = 35;
       system.assertEquals(expectedSum, sum);
   }

   @isTest
   public static void testadd3(){
    integer sum = CalculatorSimple.add(10, 11, 12);
    integer expectedSum = 33;
    system.assertEquals(expectedSum, sum);
    
   }
}