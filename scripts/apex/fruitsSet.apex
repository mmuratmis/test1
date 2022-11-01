Set<string> fruitsSet = new Set<string>{'banana', 'mango', 'strawberries', 'apple'};
system.debug(fruitsSet);
system.debug(fruitsSet.size());
fruitsSet.add('appricot');
system.debug(fruitsSet);
boolean containsApr = fruitsSet.contains('appricot');
system.debug(containsApr);
boolean isEmpty = fruitsSet.isEmpty();
system.debug(isEmpty);
