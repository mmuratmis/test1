public  class AccountLabTriggerHandler {
    public static void AccountLabContact(List<account> accTriggerNew, List<account> accTriggerOld, 
    Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){

        if(Trigger.isAfter && Trigger.isUpdate){
            set<id> accset = new set<id>();
            
            for(account eachAcc :accTriggerNew){
                if(eachAcc.Phone != accTriggerOldMap.get(eachAcc.Id).phone){
                    accset.add(eachacc.id);
                    
                }
                list<contact> listCont = [select name, id, AccountId, MobilePhone, OtherPhone from Contact where AccountId =:accset];
            }  update listCont;
        }
    }
}







    //     if(Trigger.isAfter && Trigger.isInsert){
    //         list<contact> ContList = new list<contact>();
    //         for(account eachAcc :accTriggerNew){
    //             Contact newContact = new Contact();
    //             newContact.LastName = eachAcc.Name;
    //             newContact.Phone = eachAcc.Phone;
    //             newContact.AccountId = eachAcc.Id;
    //             ContList.add(newContact);
    //         }if(!ContList.isEmpty()){
    //             insert ContList;
    //         }
            
    //     }

    // }
    // public static void AccountLabOpp(List<account> accTriggerNew, List<account> accTriggerOld, 
    // Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
    //     List<Opportunity> lostOpp = [select name, id, StageName from Opportunity where StageName != 'Closed Won' and AccountId = :accTriggerNew];
    //     for(Opportunity eachOpp : lostOpp){
    //         lostOpp.StageName = 'Closed lost';
    //     }if(!lostOpp.isEmpty()){
    //         update lostOpp;
    //     }
        
    //  }
        


