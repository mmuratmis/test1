trigger CaseTriggerVideo on Case (before insert, before update, after insert, after update) {
    if(Trigger.isAfter && trigger.isInsert){
         CaseTriggerHandler.caseCreateTask(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }
   

}