public  class AccountValidationTriggerHandler {
    public static void accValidation(List<account> accTriggerNew, List<account> accTriggerOld, 
    Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
        {
            for(account eachAcc :accTriggerNew){
                if(eachAcc.AnnualRevenue < accTriggerOldMap.get(eachAcc.Id).AnnualRevenue ||eachAcc.AnnualRevenue == null ){
                    eachAcc.addError('Annual Revenue for an account cannot be reduced. And do not allow the user to save the record.');
                }
            }
        }


    
}
}