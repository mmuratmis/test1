trigger CaseTriggerNew on Case (before insert, before update, after insert, after update) {
if(trigger.isBefore){
    CaseTriggerHandler.caseCheck(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
}
}