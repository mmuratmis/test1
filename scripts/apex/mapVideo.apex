Map<string,integer> shoppingList = new Map<string,integer>();

shoppingList.put('Apple',5);
shoppingList.put('Orange',6);
shoppingList.put('Football',1);
shoppingList.put('LED',3);
shoppingList.put('Notebooks',12);
shoppingList.put('Pen',25);
system.debug(shoppingList);

set<string> keyOfMap = new set<string>();
keyOfMap = shoppingList.keySet();
system.debug(keyOfMap);
for(string eachKey : keyOfMap){
list<integer> valuesOfMap = new list<integer>();
valuesOfMap = shoppingList.values();
for(integer eachValue : valuesOfMap){
    system.debug(eachKey + 'quantity is ' + eachValue);
}
}


