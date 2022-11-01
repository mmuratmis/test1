trigger OpportunutyTrigger2 on Opportunity (before insert, after insert, before update, after update) {
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
                system.debug('After update new StageName : ' + eachOpp.StageName);
            for(Opportunity eachOpp2 : trigger.old){
                system.debug('After update old StageName : ' + eachOpp2.StageName);
                if(eachOpp.StageName != eachOpp2.StageName ){
                    system.debug('Opportunuty name is : ' + eachOpp.name + ' and description is ' + eachOpp.description);
                }
            }

            }
           
    }

}
}