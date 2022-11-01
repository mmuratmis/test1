public class ListDemoForLoop {
    public static void iterateIntegerList() {
         List<integer> listInteger = new list<integer>();
         listInteger.add(15);//0
         listInteger.add(21);//1
         listInteger.add(10);//2
         listInteger.add(15);//3
         listInteger.add(15);//4
 
         for (integer eachInteger : listInteger) {
             system.debug(eachInteger);
         }
    }
 
    public static integer add(list<integer> intList) {
        integer returnSUM = 0;
        
         for (Integer eachInt : intList) {
             system.debug('BEFORE r = ' + returnSUM);
             system.debug('eachInt = ' + eachInt);
             returnSUM = returnSUM + eachInt;
             system.debug('AFTER adding r=' + returnSUM);
         }
        return returnSUM;
    }
 }