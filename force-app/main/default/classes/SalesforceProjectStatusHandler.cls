public  class SalesforceProjectStatusHandler {
    
    public static void validateProjectCompletion(List<Salesforce_Project__c> spTriggerNew, List<Salesforce_Project__c> spTriggerOld,
    Map<id, Salesforce_Project__c> spTriggerNewMap, Map<id, Salesforce_Project__c> spTriggerOldmap) {
        set<id> sp = new set<id>();
        for(Salesforce_Project__c eachSP : spTriggerNew){
            if(spTriggerOldmap.get(eachSP.id).Status__c != eachSP.Status__c && eachSP.Status__c == 'Completed'){
               sp.add(eachSP.id);
            }
        }
        list<Salesforce_Ticket__c> st = [select id, name, Status__c, Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c in :sp and Status__c != 'Completed'];
        for(Salesforce_Ticket__c eachST :st){
            Salesforce_Project__c sp2 = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            sp2.addError('Can not update project bcz alll its tickets are not completed.');
            
        }
    }
    //static
    //returns void
    //pass primative datatype,collecyion of primative datatype
    @future
    public static void updateDescription(set<id> projectsIds){
        system.debug('future method called');
        system.debug('inserted projects id => ' + projectsIds);
        //update description off all the created projects here.
        List<Salesforce_Project__c> listSP = [select id, description__c from Salesforce_Project__c where id in :projectsIds];
        for(Salesforce_Project__c sp : listSP){
             sp.description__c += 'Updated from future';
        }
        update listSP;
       

    }
}
       
            
      


