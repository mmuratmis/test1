trigger AccountTrigger4 on Account (before insert, before update, after insert, after update) {
    system.debug('---start---');
    if (Trigger.isBefore) {
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    system.debug('---end---');
}