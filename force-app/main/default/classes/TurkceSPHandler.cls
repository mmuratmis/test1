public  class TurkceSPHandler {
    public static void CompleteYapma(list<Salesforce_Project__c> newSPList, list<Salesforce_Project__c> oldSPList, Map<id,Salesforce_Project__c> newSPMap, Map<id,Salesforce_Project__c> oldSPMap){
        set<id> unCompleteTicket = new set<id>();
        list<Salesforce_Project__c> murat = [select Project_Name__c,id,(select id,Status__c from Salesforce_Tickets__r where Status__c != 'Completed' ) Status__c from Salesforce_Project__c where Status__c = 'Completed' ];
        for(Salesforce_Project__c eachSP : murat){
            unCompleteTicket.add(eachSP.Salesforce_Tickets__r);

        }



    }
    