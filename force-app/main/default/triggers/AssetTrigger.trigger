trigger AssetTrigger on Asset (before insert, before update) {
     
    AssetTriggerHandler.AssetHandlerUpdate(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
   }
    


