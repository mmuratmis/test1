trigger CaseTriggerVideo2 on Case (before insert, before update, after insert, after update) {
    if(Trigger.isAfter){
        CaseTriggerVideoHandler.createTask(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }

}