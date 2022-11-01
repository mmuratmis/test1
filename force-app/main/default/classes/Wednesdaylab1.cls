public  class Wednesdaylab1 {
    public static decimal AccConAndOppOperations(){
        List<Opportunity> listOpp = [select id, name, stageName, amount from Opportunity where stageName = 'Closed Won'];
        decimal sumAmount = 0;
        for(Opportunity eachOpp : listOpp){
            system.debug(eachOpp.amount);
          sumAmount += eachOpp.amount;
          
        }return sumAmount;
    

    }
    public static list<account> dynamic(string a){
        list<account> listAcc =[select id, name, (select id, name, AccountId, stageName from Opportunities where stageName = :a)from account ];
        list<account> allAccOpp = new list<account>();
        for(Account eachAcc : listAcc){
          if(!eachAcc.Opportunities.isEmpty()){
            allAccOpp.add(eachAcc);
        
        


            
          }  
           
        }integer x = listAcc.size();
        system.debug(x);
        integer y = allAccOpp.size();
        system.debug(y);
        return allAccOpp;




    }
    public static list<account> oneContact(){
        list<account> listAccCont = [select id, name, (select id, name, AccountId from contacts ) from account ];
        list<account> conAcc = new list<account>();

        for(account eachAcc : listAccCont){
        if(!eachAcc.contacts.isEmpty()){
            conAcc.add(eachAcc);

        }
        }
        integer a = listAccCont.size();
    system.debug(a);
    integer b = conAcc.size();
    system.debug(b);
        
        
        
        return conAcc;
        
    }







}
