public  class ListDemoHomework {
    public static string candidateList(integer n){
        List<string> listCandidate = new List<string>();
        ListCandidate.add('Murat');
        ListCandidate.add('Rachel');
        ListCandidate.add('Margaret');
        ListCandidate.add('Ayse');
        ListCandidate.add('Murat');
        system.debug('Candidate List = ' + ListCandidate);
        integer buyukluk = listCandidate.size();
        string msj1 ='';
        if(n>buyukluk){
            
            system.debug('No Value Found.');

        }else{
            msj1 = listCandidate[n];
        }
        return msj1;



        //string candidate2 = listCandidate.get(2);
        //system.debug('ListCandidate value 2 = ' + Candidate2);
        //string candidateValue = listCandidate[2];
        //system.debug('ListCandidate value 2 = ' + Candidate2);

    }

    public static void randomIntegerList(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(3);
        listInteger.add(5);
        listInteger.add(7);
        listInteger.add(9);
        system.debug('Integer list = ' + listInteger);

        integer index3 = listInteger.get(3);
        system.debug('ListInteger value 3 = ' +index3);
        //or
        integer indexValue3 = listInteger[3];
        system.debug('ListInteger value 3 = ' + indexValue3);
        

    }
    public static void allCats(){
      Cat falconsCat = new Cat('tekir', 'white');
      Cat vitapsCat = new Cat('Simba', 'brown');
      Cat muratsCat = new Cat('Bandit', 'black');

      List<Cat> cats = new list<Cat>();
      cats.add(falconsCat);
      cats.add(vitapsCat);
      cats.add(muratsCat);
      cats.add(muratsCat);

      system.debug('all cats are' + cats);

      //fetch [3];
      if(!cats.isEmpty()){
        cat result = cats.get(3);
        system.debug(result);
      }

    }
}
