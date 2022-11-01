list<string> shoppingList = new list<string>();
shoppingList.add('milk');
shoppingList.add('flour');
shoppingList.add('salt');
shoppingList.add('milk');


system.debug('today shoppingList ' + shoppingList);
system.debug('<---------->');
system.debug('2.index element = ' + shoppingList.get(3));
system.debug('4. index element = ' + shoppingList.get(1));