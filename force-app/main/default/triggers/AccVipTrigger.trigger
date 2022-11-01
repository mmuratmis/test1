trigger AccVipTrigger on Account (before insert, before update, after insert, after update) {
    if(Trigger.isBefore){
        if(Trigger.isUpdate){
            AccountVipTriggerHandler.accVip(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
        }
    }
    

}