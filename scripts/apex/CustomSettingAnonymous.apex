//How to fetch records from Custom Settings?
//1. SOQL.
//2. Use getAll() and getInstance()-only for custom settingd- method.

//Map<id, account> --> 
//Name --> Country_code__c record
Map <string, Country_code__c> allCountryCode = Country_code__c.getAll();
system.debug(allCountryCode);

for(string eachCountry : allCountryCode.keySet()){
    Country_code__c eachCC = allCountryCode.get(eachCountry);
    system.debug(eachCountry + ' iso code is ...' + eachCC);
}
//account record --> billing Country -> United States.
string c1 = 'United States';
Country_code__c c1code = Country_code__c.getInstance(c1);
string isoCodeC1 = c1code.iso_code__c;
system.debug(c1 + ' isoCode is ' + isoCodeC1);

