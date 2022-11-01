Map<string,decimal>  currISOCodeAndExchangeRateMap = new Map<string,decimal>();
currISOCodeAndExchangeRateMap.put('AUD',0.73);
currISOCodeAndExchangeRateMap.put('CAD',0.78);
currISOCodeAndExchangeRateMap.put('EUR',1.13);
currISOCodeAndExchangeRateMap.put('NZD',0.68);
currISOCodeAndExchangeRateMap.put('INR',0.013);
system.debug(currISOCodeAndExchangeRateMap);

//question 2.2

list<decimal>conversionRate = currISOCodeAndExchangeRateMap.values();
system.debug(conversionRate);

//question 2.3
boolean isContainSad = currISOCodeAndExchangeRateMap.containsKey('SAD');
system.debug(isContainSad);

//question 2.4
set<String> moreThan1 = new Set<String>();
set<String> lowerThan1 = new set<String>();

for(String eachIso : currISOCodeAndExchangeRateMap.keySet() ){
    if(currISOCodeAndExchangeRateMap.get(eachIso) >=1){
        moreThan1.add(eachIso);
    }else{
        lowerThan1.add(eachIso);
    }
}
system.debug('morethan1' + moreThan1);
system.debug('lowerthan1' + lowerThan1);
