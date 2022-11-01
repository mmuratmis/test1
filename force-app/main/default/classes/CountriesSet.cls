public  class CountriesSet {
    public static void capitalizeCountries(){
        Set<String> setOfCountries = new Set<String>();
        setOfCountries.add('india');
        setOfCountries.add('turkey');
        setOfCountries.add('france');
        setOfCountries.add('england');
        
        Set<String> countriesInCaps = new Set<String>();
        
        for(string eachString : setOfCountries){
            
            string a = eachString.toUpperCase();
            countriesInCaps.add(a);
       
        }system.debug(countriesInCaps);
    }
}
