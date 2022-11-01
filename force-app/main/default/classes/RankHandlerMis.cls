public  class RankHandlerMis {
    public static string rankPrice(integer rank){
        string result = '';
        if(rank == 1){
            result = 'Gold';
        }else if(rank == 2){
            result = 'Silver';
        }else if(rank == 3){
            result = 'Bronze';
        }else if((rank>=4) && (rank<=10)){
            result = 'top 10 certificate';
        }else if(rank>10){
            result = 'Participation certificate';
        }return result;
         }

         public string rankPriceSwitchMis(integer n){
            string sonuc = '';
            switch on n{
                when 1{
                sonuc = 'Gold';
            }when 2{
                sonuc = 'Silver';
            }when 3{
                sonuc = 'Bronze';
            }when 4,5,6,7,8,9,10{
                sonuc = 'Top !0 certificate';
            }when else{
                sonuc = 'Participation certificate';
            }
            }
            return sonuc;
}
}
