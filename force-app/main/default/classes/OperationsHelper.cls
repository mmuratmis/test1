public  class OperationsHelper {
    public decimal largestOutOfTwoNumbers(decimal a, decimal b){
        decimal result = 0;
        if(a>b){
            result = a;
        }else if(b>a){
            result = b;
        }return result;


    }
    public decimal smallestOutOfThreeNumbers(decimal a, decimal b, decimal c){
        decimal result1 = 0;
        if((a<b) && (a<c)){
            result1 = a;
        }else if((b<a) && (b<c)){
            result1 = b;
        }else if((c<a) && (c<b)){
            result1 =c;
        }return result1;
    }
    public integer sumofPositiveIntegers(integer n){
        integer sonuc;
        if(n>0){
            sonuc = 0;
        for(integer i = 0; i<=n; i++){
                sonuc += i;
            }
        }else if(n<0){
            sonuc = null;
        system.debug('We are not calculating the sum for negative numbers');
    } else{
        sonuc = 0;
    }
        return sonuc;
        
        

    }
    
}
