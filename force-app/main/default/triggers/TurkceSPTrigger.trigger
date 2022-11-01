trigger TurkceSPTrigger on Salesforce_Project__c (before insert, before update, after insert, after update) {
    TurkceSPHandler.CompleteYapma(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);

}