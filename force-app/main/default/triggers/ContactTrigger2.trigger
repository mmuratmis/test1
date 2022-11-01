trigger ContactTrigger2 on Contact (before insert, after insert, before update, after update) {
    if(trigger.isBefore && trigger.isUpdate)
    ContactTriggerHandler.contactLeadSourceUpdate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    ContactTriggerHandler.contactLeadSourceValidate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);

}