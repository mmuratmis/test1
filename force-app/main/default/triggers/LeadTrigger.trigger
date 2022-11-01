trigger LeadTrigger on Lead (before insert, before update,after insert, after update) {
    if(trigger.isBefore){
        if(trigger.isInsert){
            
        }
        if(trigger.isUpdate){
            
        }
    }
    if(trigger.isAfter){
        
        if(trigger.isInsert){
            for(lead eachLead : trigger.new){
            if(eachLead.LeadSource == 'Web' ){
                system.debug('Rating should be cold.');
            }else{
                system.debug('Rating should be hot.');
            }
            }



        }
        if(trigger.isUpdate){

        }
}
}