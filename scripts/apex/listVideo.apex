list<string> shoppingList = new list<string>();
shoppingList.add('Egg');
shoppingList.add('Milk');
shoppingList.add('Yogurt');
shoppingList.add('Jam');
shoppingList.add('Cucumber');

//system.debug(shoppingList);

//string test = shoppingList.get(1);
//system.debug('item 1 is '+ test);

//string test1 = shoppingList.get(3);
//system.debug('Item 3 is ' + test1);

list<date> birthdays = new list<date>();
date dt1 = date.newInstance(1987, 8, 21);
birthdays.add(dt1);
//eger yeni dt2 olusturmadan direkt kisa yoldan yeni bir veri eklemek istiyorsan listeye;
birthdays.add(date.newInstance(1970, 9, 9));
birthdays.sort();
system.debug(birthdays);

//once bos liste yaratip sonra icini doldurmak yerine; listeyi olustururken icine element pass edebiliriz; kisa yol. Bunu yaparken koseli parantez.Ornegin;
list<integer> listTest = new list<integer>{1,3,5,7,9};
system.debug(listTest);



