public  class ListDemoHome {
    //public static string candidateList(integer i){
        
        //List<string> listCandidate = new List<string>();
        //listCandidate.add('Murat');
        //listCandidate.add('Rachel');
        //listCandidate.add('Deniz');
        //system.debug('Candidates are '+ listCandidate);
        //string msj = '';
    //if(i<listCandidate.size()){
        //msj = listCandidate[i];
    //}else{
        //msj = 'Value not found.';
    //}
        //return msj;
    public static void allCats(){
        List<cat> cats = new List<cat>();
        cats.add('Bandit');
        cats.add('Sarmal');
        cats.add('Tekir');
        system.debug(cats);
        boolean x = cats.isEmpty();
        if(x != true){
           cat y = cats.get(3);
            system.debug(y);
        }
    }
    
    
    
    
    
    
    
    
    } 
    
    //public static void randomIntegerList(){
        //List<integer> listInteger = new List<integer>();
       // listInteger.add(3);
        //listInteger.add(5);
        //listInteger.add(7);
        //system.debug('list of random integers = '+ listInteger);

        //integer x = listInteger.get(2);
         //system.debug(x);

    }

