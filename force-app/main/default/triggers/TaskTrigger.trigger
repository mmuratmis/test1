trigger TaskTrigger on Task (before insert, before update, after insert, after update) {
    if(Trigger.isAfter){
            TaskTriggerhandler.updateTaskDate(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);

    }

}