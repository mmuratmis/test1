public  class LeadTriggerVideoHandler {
    public static void Mandotory(list<lead> newLead, list<lead> oldLead, Map<id, lead> newLeadmap, Map<id, lead> oldLeadMap){
        if(oldLead != null){
            for(lead eachLead : newLead){
                if(eachLead.Status != oldLeadMap.get(eachLead.Id).Status && eachLead.Status == 'Closed - Not Converted'){
                    eachLead.Closed_Lost_Reason__c.addError('The reason can  not be empty.');
                }
            }


        }


    }
}
