public  class contacthandler_assg {
    public static void createContact(list<account> newAccList, list<account> oldAccList, Map<id, account> newAccMap, Map<id, account> oldAccMap){
        list<contact> newContacts = new list<contact>();
        if(Trigger.isInsert){
        for(account eachAcc : newAccList){
            Contact a1 = new Contact();
            a1.AccountId = eachAcc.Id;
            a1.LastName = 'Mis';
            newContacts.add(a1);
        }insert newContacts;

    }
}
}
