public  class SetDemoHome {

    public static void citySet(){
       Set<string> cities = new Set<String>();
       cities.add('Tokyo');
       cities.add('Lisbon');
       cities.add('Berlin');
       cities.add('Nairobi');
       cities.add('Tokyo');
       cities.add('Berlin');
       cities.add('Nairobi');

       system.debug('set of cities = ' + cities);
    }
    public static void randomIntegerSet(){
     Set<Integer> numbers = new Set<Integer>();
        numbers.add(10);
        numbers.add(15);
        numbers.add(21);
        numbers.add(15);
        numbers.add(15);
     
     system.debug('Set of numbers = ' + numbers);
    }

    public static set<integer> setFromList(List<Integer> convertList){
        Set<Integer> converted = new Set<Integer>();
        converted.addAll(convertList);
        return converted;


    }

//for each loop-set
public static Set<String> capitalizeSet(Set<String> cities){
    Set<String> gelen = new Set<String>();
    for(string eachCities : cities){
         string buyukHarf = eachcities.toUpperCase();
         gelen.add(buyukHarf);
         
}return gelen;
}
}
 