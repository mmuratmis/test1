trigger AccountTriggerNewest on Account (before insert, before update, after insert, after update) {
    AccountTriggerNewestHandler.accountActivePicklist(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);

}