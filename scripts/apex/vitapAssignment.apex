Map<Integer,String> zipCodeToCityMap = new Map<Integer,String>();
zipCodeToCityMap.put(80220, 'Denver');
zipCodeToCityMap.put(80446, 'Aurora');
zipCodeToCityMap.put(80889, 'Thornton');
zipCodeToCityMap.put(80557, 'Broadway');

boolean a = zipCodeToCityMap.containsKey(204101);
system.debug(a);
set<integer> zipCodes = zipCodeToCityMap.keySet();
system.debug(zipCodes);

list<string> cityNames = zipCodeToCityMap.values();
system.debug(cityNames);

integer howMany = zipCodeToCityMap.size();
system.debug(howMany);

Set<integer> uniqueZipCodeSet = zipCodeToCityMap.keySet();
system.debug(uniqueZipCodeSet);
List<string> cityNameList = zipCodeToCityMap.values();
system.debug(cityNameList);
boolean empyty = zipCodeToCityMap.isEmpty();
system.debug(empyty);

/*List has index numbers, dublicate is allowed,set and map doesn't have index number. for set, elemenets should be unique. For map keys should be unique but values can be dublicated. and any dublicate condition, map uses latest value.*/


