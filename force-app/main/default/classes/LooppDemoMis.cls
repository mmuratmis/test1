public  class LooppDemoMis {
    public void print_N_numbers(integer n){

        for(integer i = 0; i<=n; i++){
            system.debug(i);
        }
    }


    public void print_N_Odd_Numbers(integer startInt, integer endInt){
        for(integer i=startInt ; i<=endInt ; i++){
            integer modI = math.mod(i,2);
            if(modI == 1){
                system.debug(i);
            }
        }
    }
}