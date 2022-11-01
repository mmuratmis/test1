public  class ListDemoLoopHOme {
    public static void iterateIntegerList(){
        List<integer> listInteger = new List<integer>();
       listInteger.add(3);
       listInteger.add(5);
       listInteger.add(7);

       for (integer eachInteger : listInteger) {
        system.debug(eachInteger);
        
       }

    }

    public static integer add(list<integer> intList){
        integer resultSum = 0;
        for(integer eachInt : intList){
            resultSum += eachInt;
        }
        
         return resultSum;
    }
}
