trigger OpportunutyTrigger on Opportunity (before insert, after insert, before update, after update) {
    if(trigger.isBefore){
        if(trigger.isInsert){
            
        }
        if(trigger.isUpdate){
            
        }
    }
    if(trigger.isAfter){
        
        if(trigger.isInsert){

        }
        if(trigger.isUpdate){
            for(Opportunity eachOpp : trigger.new){
                system.debug('new name : ' + eachOpp.Name + ' and new Amount : ' + eachOpp.Amount);
            }
            for(Opportunity eachOpp2 : trigger.old){
                system.debug('old name : ' + eachOpp2.Name + ' and old Amount : ' + eachOpp2.Amount);
            }
            
        }
    }
    

}