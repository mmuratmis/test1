public  class LeadTriggerHandler {
    public static void leadStatusCheck(list<lead> newLeadList,list<lead> oldLeadList, Map<id, lead> newLeadMap, Map<id, lead> oldLeadMap){
        if(Trigger.isInsert){
            for(lead eachLead : newLeadList){
            if(eachLead.status == 'Closed - Not Converted' ){
                eachLead.Closed_Lost_Date__c = Datetime.now();
            }else if(eachLead.status == 'Open - Not Contacted'){
                eachLead.Lead_Created_Date__c = Datetime.now();
            }else if(eachLead.status == 'Working - Contacted'){
                eachLead.Contacted_Date__c = Datetime.now();
            }else if(eachLead.Status == 'Closed - Converted	'){
                eachLead.Close_Won_Date__c = Datetime.now();
            }
        }
     }
        if(Trigger.IsUpdate){
            for(lead eachLead : newLeadList){
            if((eachLead.status != oldLeadMap.get(eachLead.id).status) && eachLead.status == 'Closed - Not Converted' ){
                eachLead.Closed_Lost_Date__c = Datetime.now();
            }else if((eachLead.status != oldLeadMap.get(eachLead.id).status) && eachLead.status == 'Open - Not Contacted' ){
                eachLead.Closed_Lost_Date__c = Datetime.now();
            }else if((eachLead.status != oldLeadMap.get(eachLead.id).status) && eachLead.status == 'Working - Contacted' ){
                eachLead.Closed_Lost_Date__c = Datetime.now();
            }else if((eachLead.status != oldLeadMap.get(eachLead.id).status) && eachLead.status == 'Closed - Converted' ){
                eachLead.Closed_Lost_Date__c = Datetime.now();
}
}
        }
    }
}