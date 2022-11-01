trigger AccountTrigger on Account ( after insert, after update, before insert,before update ) {
    //  contacthandler_assg.createContact(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    if(Trigger.isAfter && Trigger.isUpdate){
     AccountTriggerHandler.updateVIPforAllContacts(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }
}
   

    

   
    // system.debug('---start---');
    // //trigger.new ALWAYS gives List<sObject>
    // List<account> newAccounts = trigger.new;
    // system.debug('number of accounts ==> ' + newAccounts.size());

    // if (Trigger.isBefore && Trigger.isInsert) {
    //     system.debug('before trigger.new ==> ' + newAccounts);
    //     for (Account eachAcc : newAccounts) {
    //         system.debug('BEFORE acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
    //     }
    // }
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     system.debug('after trigger.new ==> ' + newAccounts);
    //     for (Account eachAcc : newAccounts) {
    //         system.debug('AFTER acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
    //     }
    // }trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
   
    //     system.debug('---start---');
    //     //trigger.new ALWAYS gives List<sObject>
    //     List<account> newAccounts = trigger.new;
    //     system.debug('number of accounts ==> ' + newAccounts.size());
    
    
    //     if (Trigger.isBefore && Trigger.isUpdate) {
    //         system.debug('before update trigger.new ==> ' + newAccounts);
    //         for (Account eachAcc : newAccounts) {
    //             system.debug('BEFORE acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
    //         }
    //     }
    //     if (Trigger.isAfter && Trigger.isUpdate) {
    //         system.debug('after update trigger.new ==> ' + newAccounts);
    //         for (Account eachAcc : newAccounts) {
    //             system.debug('AFTER acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
    //         }
    //     }
    //     system.debug('---end---');












    /*if (Trigger.isBefore) {
        system.debug('BEFORE trigger - insert or update.');
        if (Trigger.isInsert) {
            system.debug('account before insert trigger called');
        } 
        if (Trigger.isUpdate) {
            system.debug('account before update trigger called.');
        }
    }
    if (Trigger.isAfter) {
        system.debug('AFTER trigger - insert or update.');
        if (Trigger.isInsert) {
            system.debug('account after insert trigger called');
        } 
        if (Trigger.isUpdate) {
            system.debug('account after update trigger called.');
        }
    }*/
    /*
if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('account before insert trigger called');
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('account after insert trigger called');
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('account before update trigger called');
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('account after update trigger called');
    }
    */
/*if (trigger.isInsert) {
        system.debug('account before insert trigger called');
    }
    if (trigger.isUpdate) {
        system.debug('account before update trigger called');
    }*/
    /*if (trigger.isBefore) {
        system.debug('account before insert trigger called');
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }*/
