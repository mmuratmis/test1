trigger AccountLabTrigger on Account (before insert, before update, after insert, after update) {
    AccountLabTriggerHandler.AccountLabContact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    AccountLabTriggerHandler.AccountLabOpp(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);

}