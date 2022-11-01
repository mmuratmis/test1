public  class setDemo9 {
    public static void CheckOdd(set<integer> ciftMi){
        for(integer eachsayi : ciftMi){
            if(math.mod(eachsayi,2) == 0){
                system.debug(eachsayi + ' is Even number.');

            }else{
                system.debug(eachsayi + ' is odd number.');
            }
        }
    }
}
