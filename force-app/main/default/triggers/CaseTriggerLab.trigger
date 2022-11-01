trigger CaseTriggerLab on Case (before insert, after insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            CaseTriggerLabHandler.CreateChildCase(Trigger.new);

        }
    }
    
   

}