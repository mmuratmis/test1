public  class AccountVipTriggerHandler {
    public static void accVip(list<account> newAcc, list<account> oldAcc, Map<id,account> newMapAcc, Map<id,account> oldMapAcc){
        set<id> updatedAcc = new set<id>();
        for(account eachAcc :newAcc){
            if(eachAcc.VIP__c != oldMapAcc.get(eachAcc.Id).VIP__c){
                updatedAcc.add(eachAcc.Id);
            }
        }if(!updatedAcc.isEmpty()){

        list<contact> conList = [select id, name, Vip__c, AccountId from Contact where AccountId in :updatedAcc];
        for(contact eachCont :conlist){
            Account newAccount = newMapAcc.get(eachCont.AccountId);
            boolean vipAcc = newAccount.VIP__c;
            eachCont.Vip__c = vipAcc;
        }update conlist;
    }
}
}

