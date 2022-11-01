public class AccountTriggerHandler {
    // public static void updateAccountDescription(List<account> accTriggerNew, List<account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {

    //     Map<id, account> newAccMap = accTriggerNewMap;
    //     map<id, account> oldAccMap = accTriggerOldMap;
    //     for (account eachAcc : accTriggerNew) {
    //         if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
    //             eachAcc.Description = 'Account is now active. Enjoy!';
    //         }
    //         if (Trigger.isUpdate) {
    //             //id accId = eachacc.id;
    //             Account oldAccount = oldAccMap.get(eachacc.id);
    //             Account newAccount = newAccMap.get(eachacc.id);

    //             if(eachAcc.Active__c == 'Yes' && oldAccount.Active__c != newAccount.Active__c){
    //                 eachAcc.Description = 'Account is now active. Enjoy!';
    //             }
    //         }
    //     }
    // }
    public static void updateVIPforAllContacts(List<account> accTriggerNew, List<account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
        //get all accounts which are vip field updated.
        set<id> accID = new set<id>();
        for(Account eachAcc : accTriggerNew){
            if(eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.Id).Vip__c){
                accID.add(eachAcc.Id);
            }

        }
        if(!accID.isEmpty()){
        List<Contact> contact1 = [select id, name, Vip__c, AccountId from Contact where AccountId in :accID];
        for(Contact eachContact :contact1){
            Account sonhal = accTriggerNewMap.get(eachContact.AccountId);
            //check box oldugu icin boolean olacak.
            boolean vipacc = sonhal.VIP__c;
            eachContact.Vip__c = vipacc;
        }
        update contact1;
    }


    }
}