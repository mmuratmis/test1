Set<string> fruits = new Set<string>();
fruits.add('elma');
fruits.add('armut');
fruits.add('karpuz');
system.debug(fruits);

list<string> shoppingList = new list<string>();
shoppingList.add('Egg');
shoppingList.add('Milk');
shoppingList.add('Yogurt');
shoppingList.add('Jam');
shoppingList.add('Cucumber');
shoppingList.add('Cucumber');
System.debug(shoppingList);
system.debug('<-------->');

Set<string> alinacaklar = new Set<string>();
alinacaklar.addAll(shoppingList);
system.debug(alinacaklar);