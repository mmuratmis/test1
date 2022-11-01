trigger LeadTriggerNew on Lead (before insert, before update, after insert, after update) {
    if(trigger.isBefore){
        LeadTriggerHandler.leadStatusCheck(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }


}