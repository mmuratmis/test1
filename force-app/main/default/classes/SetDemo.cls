public  class SetDemo {
    public static void citySet(){
        set<string>     cities = new set<string>();
            cities.add('Tokyo');
            cities.add('Lisbon');
            cities.add('Berlin');
            cities.add('Nairobi');
            cities.add('Tokyo');
            cities.add('Lisbon');
            system.debug('cities set ' + cities);


        }
        public static void randomIntegerSet(){
            
            set<integer> integerSet = new set<integer>();
            integerSet.add(10);
            integerSet.add(15);
            integerSet.add(5);
            integerSet.add(12);
            integerSet.add(5);
            system.debug('random integers are '+ integerSet);
        }

        

        public static set<integer> setFromList(List<integer> l1){
            set<integer> s1 = new set<integer>();
            s1.addAll(l1);
            return s1;
        }
    
    }

