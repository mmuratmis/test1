trigger CaseTrigger2 on Case (before insert, after insert, before update, after update) {
    if(trigger.isBefore){
        if(trigger.isInsert){
            system.debug('before insert');

            for(case eachCase : trigger.new){
                if(eachCase.Origin == 'Email'){
                  eachCase.Status = 'New';
                  eachCase.Priority = 'Medium';
                }
            }
            
        }
        if(trigger.isUpdate){
            system.debug('before update');
            
        }
    }
    if(trigger.isAfter){
        
        if(trigger.isInsert){
            system.debug('after insert');

            
        }
        if(trigger.isUpdate){
            system.debug('after update');
            
        }
    }

}