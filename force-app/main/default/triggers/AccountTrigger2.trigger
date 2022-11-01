trigger AccountTrigger2 on Account (before insert, after insert, before update, after update) {
    if(trigger.isAfter){
        if(trigger.isInsert){
            list<account> test1 = trigger.new;
            for(account eachAcc : test1){
                system.debug(eachAcc.Name + eachAcc.Id );
            }
        }
        if(trigger.isUpdate){
            list<account> test2 = trigger.old;
            for(account eachAcc : test2){
                system.debug(eachAcc.Name + eachAcc.Id );
            }
        }
    }
    
}

    
