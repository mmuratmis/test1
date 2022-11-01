trigger CustoerTrigger on Customer__c (before insert, after insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            PaymentHandler.CustomerPayment(Trigger.new);
        }
    }

}