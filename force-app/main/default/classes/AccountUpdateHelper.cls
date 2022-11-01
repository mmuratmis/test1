public  class AccountUpdateHelper {
   @invocableMethod
   public static void updateAccountWebsite(list<id> accIds){
    list<account> updateAccounts = new list<account>();
    for(account acc : [select id, website from Account where id in :accIds]){
        acc.Website = 'www.softinnovas.com';
        updateAccounts.add(acc);
    }
    update updateAccounts;

   }
}
