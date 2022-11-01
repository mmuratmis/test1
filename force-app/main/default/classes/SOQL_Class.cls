public  class SOQL_Class {
    public static void account_SOQL(){
        //a
        list<Account> accsoql = [select id, name, phone from account where phone != null];
        for(account eachAcc : accsoql){
            system.debug(eachAcc);
        }system.debug('====son====');
        //b
        list<account> accsoql2 = [select id, name from Account where name like: '%A'];
        for(account eachAcc2 : accsoql2){
            system.debug(eachAcc2);
        }system.debug('======son2=====');
        }
        //c
     public static void account_SOQL_2(string a){
            list<account> test1 = [select id, name from account where Name =:a];
            for (account eachAcc3 : test1){
                system.debug(eachAcc3);
            }

            


        }
     //d
    public static void contact_SOQL(){
        list<contact> listCont = [select id, name, 	HomePhone, phone from contact where HomePhone = null and Phone = null];
        for (contact eachContact : listCont){
            system.debug(eachContact);
            system.debug('son');
        }

    }
    //e
    public static void account_SOQL_3(){
        decimal annual = 0;
        list<account> annualAcc = [select name, id, AnnualRevenue from account where AnnualRevenue != null];
        for(account eachAnnualAcc : annualAcc){
            system.debug(eachAnnualAcc.AnnualRevenue);
            annual += eachAnnualAcc.AnnualRevenue;
            system.debug(annual);

        }
    }



}
