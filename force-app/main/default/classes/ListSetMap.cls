public  class ListSetMap {
    public static void practiceOne(){
        List<string> cityList = new List<string>{'Ankara','Istanbul', 'London', 'Paris', 'New York', 'Tokyo', 'Antalya', 'London', 'Paris', 'New York', 'Tokyo'};
        integer boyut = cityList.size();
        system.debug(boyut);
        boolean bosmu = cityList.isEmpty();
        system.debug(bosmu);
        string yedinci = cityList.get(7);
        system.debug(yedinci);
        set<string> cityListSet = new Set<String>(cityList);
        system.debug(cityListSet);



    }
    public static void practiceTwo(list<integer> yeniList){
        Set<Integer> tekSayi = new Set<Integer>();
        Set<Integer> ciftSayi = new Set<Integer>();
        for(integer eachList : yeniList){
            if(math.mod(eachList,2)==0){
                ciftSayi.add(eachList);
            }else{
                tekSayi.add(eachList);
            }
        }system.debug('Cift sayilar ' + ciftSayi);
        system.debug('Tek Sayilar ' + tekSayi);
        
    }
    
    
}
