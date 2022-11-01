trigger accountTrigger3 on Account (after update) {
    if(trigger.isAfter && trigger.isUpdate){
        Map<Id,account> newrealMap = new Map<id,account>();
        newrealMap = trigger.newMap;
        Map<Id,account> oldrealMap = new Map<id,account>();
        oldrealMap = trigger.oldMap;

        for(Id eachAccount : newrealMap.keySet()){
         Account newAcc =  newRealMap.get(eachAccount);
         system.debug(newAcc);

         Account oldAcc = oldRealMap.get(eachAccount);
         system.debug(oldAcc);
        }


    }

}