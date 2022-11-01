trigger CaseTrigger on Case (before insert, after insert, before update, after update) {
    system.debug('before insert');
    
    
    
    
    // if(trigger.isAfter){
    //     // system.debug('We are in the after triggers.');
    //     if(trigger.isInsert){
    //         CaseTriggerHandler.caseCheck(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    //     }
    // }
}

//     system.debug('We are in the triggers.');
//     if(trigger.isBefore){
//         if(trigger.isInsert){
//             system.debug('We are in the before -Insert triggers.');
//         }
//         if(trigger.isUpdate){
//             system.debug('We are in the before update triggers.');
//         }
//     }
//     if(trigger.isAfter){
//         system.debug('We are in the after triggers.');
//         if(trigger.isInsert){
//             system.debug('We are in the after- insert triggers.');
//             list<case> testlist = trigger.new;
//             for(case eachCase : testList){
//                 system.debug('Case #: ' + eachCase.CaseNumber + ' with id ' + eachCase.Id + 'Created date: ' + eachCase.CreatedDate);

//             }

//         }
//         if(trigger.isUpdate){
//             for(case eachCase : trigger.new){
//                 system.debug('Case origin is changed for ' + eachCase.CaseNumber);
//             }
//         }
//     }
    
  

// 