trigger PazarCustomerTrigger on Customer__c (before insert,before update, after insert, after update, before delete) {
    if(Trigger.isAfter && Trigger.isInsert){
        PazarCustomerHandler.custCreatePayment(Trigger.new);

    }
    if(Trigger.isBefore && Trigger.isDelete){
        PazarCustomerHandler.deleteFirst(Trigger.old);

    
}
}