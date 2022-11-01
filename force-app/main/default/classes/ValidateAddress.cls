public  class ValidateAddress {
    public void validateHomeAddress(){
        string hName = 'Baser';
        string sName = 'Platte';
        string cName = 'Sedona';
        string stateName = 'Arizona';
        string sISO = 'us-az';
        string countryName = 'US';
        string cISO = 'USA';

        
        //2.1
        integer result = sName.length();
        system.debug(result);
        //2.2
        boolean isTheStreetContains = sName.containsIgnoreCase(hName);
        system.debug(isTheStreetContains);
        //2.3
        boolean isTheStreetContains2 = sName.containsIgnoreCase(sISO);
        system.debug(isTheStreetContains2);
        //2.4
        string upper1 = sISO.toUpperCase();
        system.debug(upper1);
        string upper2 = cISO.toUpperCase();
        system.debug(upper2);
        string upper3 = countryName.toUpperCase();
        system.debug(upper3);
        string lower1 = cName.toLowerCase();
        system.debug(lower1);
        string lower2 = stateName.toLowerCase();
        system.debug(lower2);
        //2.5
        string validateAddress = 'My validate address is ' + hName + ' ' + sName + ' '+ cName + ' ' +stateName + ' ' +countryName;
        system.debug(validateAddress);




        

    }
}
