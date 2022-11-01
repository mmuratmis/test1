public  class AccountTriggerNewestHandler {
    public static void accountActivePicklist(List<account> accTriggerNew, List<account> accTriggerOld, 
    Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
        if(Trigger.isInsert){
        for(account eachAcc : accTriggerNew){
            Boolean updateDesc = false;
            if(eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            }
        }
        if(Trigger.isUpdate){
            for(account eachAcc : accTriggerNew){
                Boolean updateDesc = false;
            if(accTriggerOldMap.get(eachAcc.Id).Active__c != eachAcc.Active__c && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
        }
    } if(updateDesc == true){
        eachAcc.Description = 'Account is now active. Enjoy!';
    }
}
}
