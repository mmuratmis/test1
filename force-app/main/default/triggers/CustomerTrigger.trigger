trigger CustomerTrigger on Customer (before insert, before update, after insert, after update) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            CustomerTriggerHandler.customerPayment(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
        }
    }
    


}