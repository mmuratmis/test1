// q5 a
Set<String>  uniqueNameSet=new Set<String> {'Tom', 'Jerry'};
System.debug(uniqueNameSet);
// q5 b
System.debug( 'Bizim setin sizi -- '+uniqueNameSet.size());

// q5 c
uniqueNameSet.add('Bayram');
uniqueNameSet.add('Bayram');

System.debug( 'Bizim setin yeni elemanlari -- '+uniqueNameSet);
// q5 d
String myName = 'Bayram';

Boolean doesContain = uniqueNameSet.contains(myName);
System.debug('Benim ismim varmi '+doesContain);

// q5 e
Boolean isEmpty = uniqueNameSet.isEmpty();
System.debug('Setimiz bosmu: '+isEmpty);

// q5 f
uniqueNameSet.clear();
System.debug( 'Bizim setin sizi -- '+uniqueNameSet);

// q5 g
Boolean isEmpty2 = uniqueNameSet.isEmpty();
System.debug('Setimiz bosmu: '+isEmpty2);

// q5 h
// set have not ordered by index or key.

// q5 i
/*
List - is variable that can include a lot of values inside by type of data. it can take dublicated values too. And List is ordered values by indexing.
Set - is same with List but it can`t take dublicated values. Also it not ordered by index. And you can`t get any value each.
Map - is Variable that recognizing any value with it`s key. For map needs two values for recognize. Values can be different type of data. Key must be uniq. Key can`t dublicated value. The value can be dublicated.
*/



