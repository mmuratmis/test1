Map<String,String> countryCur = new Map<String,String>();
countryCur.put('usa', 'dollar');
countryCur.put('japan', 'yen');
countryCur.put('france', 'euro');
countryCur.put('india', 'rupees');
countryCur.put('india', 'rupee');
countryCur.put('turkey', 'lira');
system.debug('map of country vs currency : ' + countryCur);

string a = countryCur.get('india');
system.debug(a);
string b = countryCur.get('turkey');
system.debug(b);

set<string> countrySet = countryCur.keySet();
system.debug(countrySet);

list<string> currencyList = countryCur.values();
system.debug(currencyList);
//for map loop, i'm creating ket set of the countries.
Set<String> countriesSet = countryCur.keySet();

for(string eachKey : countriesSet){
    string printCountries = 'Country is '+ eachKey;
}
