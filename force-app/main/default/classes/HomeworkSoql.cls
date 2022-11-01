public  class HomeworkSoql {
    public static void Homework_Soql(){
        list<contact> lstcontact = [select Account.Id, Account.Name from contact];
        for(contact eachContact : lstcontact){
            system.debug('Each account id of the eachcontact is ' + eachContact.Account.Id);
            system.debug('Each account name of the eachcontact is ' + eachContact.Account.Name);
        }
    }
    public static void Homework_Soq2(){
        List<Account> lstaccount = [select (select id, name from contacts) from account];
        for(account eachAccount : lstaccount){
        
            list<contact> lstcontact2 = eachAccount.contacts;
            for(contact eachContact2 : lstContact2){
                system.debug('Contact id is ' + lstcontact2);
            }
        }
            
        

    }
}
 