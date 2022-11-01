trigger AccValidationTrigger on Account (before insert, before update, after insert, after update) {
    if(Trigger.isBefore && Trigger.isUpdate){
    AccountValidationTriggerHandler.accValidation(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
}
}
