public class ContactTriggerHandler {
    public static void contactLeadSourceUpdate(list<contact> newContact,list<contact> oldContact, Map<id, contact> newMap, Map<id, contact> oldMap){
        for(contact eachContact :newContact){
            if(oldMap.get(eachContact.id).LeadSource == 'Partner Referral'){
                eachContact.addError('Can not update Partner Referral Contacts.');
            }

            }
        }
        public static void contactLeadSourceValidate(list<contact> newContact,list<contact> oldContact, Map<id, contact> newMap, Map<id, contact> oldMap){
            for(contact eachContact :newContact){
                if(eachContact.LeadSource != oldMap.get(eachContact.id).LeadSource){
                    //how to fetch custom label text in apex?
                    string customMessage = system.label.ContactValidation2;
                    eachContact.LeadSource.addError(customMessage);

                }
            }






    }
}




