trigger LeadTriggerVideo on Lead (before insert, before update, after insert, after update) {
    
    if(Trigger.isBefore){
            LeadTriggerVideoHandler.Mandotory(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);

    }

}