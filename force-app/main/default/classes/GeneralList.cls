public  class GeneralList {
    //public static list<string> toCaps(list<string> girenList){
        //list<string> ilkHBuyuk = new list<string>();
        //for(string eachElementOfGirenList : girenList){
        //string buyukHarf = eachElementOfGirenList.capitalize();
        //ilkHBuyuk.add(buyukHarf);
        //}
        
        //return ilkHBuyuk;
    //}

    public static void printAge(list<date> birthdates){
        for(date eachBirthdates : birthdates){
            integer year1 = eachBirthdates.year();
            date today = date.today();
            integer year2 = today.year();
            integer age = year2 - year1;
            system.debug(age);
        }
    }
    
}
