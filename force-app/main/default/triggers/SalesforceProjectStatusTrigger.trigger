trigger SalesforceProjectStatusTrigger on Salesforce_Project__c (before insert, after insert, before update) {
    
    if(Trigger.isBefore && Trigger.isUpdate){
        //validation method
        SalesforceProjectStatusHandler.validateProjectCompletion(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if(Trigger.isAfter && Trigger.isInsert){
        system.debug('calling future method....');
        SalesforceProjectStatusHandler.updateDescription(Trigger.newMap.keySet());
        system.debug('done calling future method');

    }
}











