public  class Address {
    public void homeAddress(){
        string yourName = 'Musa Murat Mis';
        integer totalNumber = 2;
        string houseName = 'Baser';
        string houseNumber = '4051';
        string streetName = 'Bryant';
        string cityName = 'Denver';
        string stateName = 'CO';
        string sIso = 'US-CO';
        string countryName = 'US';
        string cIso = 'USA';
        integer zipCode = 80211;
        boolean currentHomeOrNot = false;

        system.debug('Name:' + yourName);
        system.debug('Total Number:' + totalNumber);
        system.debug('House Name:' + houseName);
        system.debug('House Number:' + houseNumber);
        system.debug('Street Name:' + streetName);
        system.debug('City Name:' + cityName);
        system.debug('State Name:' + stateName);
        system.debug('State ISO:' + sIso);
        system.debug('Country Name:' + countryName);
        system.debug('Country ISO:' + cIso);
        system.debug('ZIP Code:' + zipCode);
        system.debug('Is this your current home or not?:' + currentHomeOrNot);


    }
}
