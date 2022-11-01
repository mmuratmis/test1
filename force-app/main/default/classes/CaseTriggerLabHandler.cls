public  class CaseTriggerLabHandler {
    public static void CreateChildCase(list<case> newList){
        set<id> caseIDS = new set<id>();
        for(case eachCase :newList){

           if(eachCase.Description != null && eachCase.Description.containsIgnoreCase('password')){
            caseIDS.add(eachCase.Id);
        }
        }
        if(!caseIDS.isEmpty()){
            list<case> createCases = new list<case>();
            for(id eachID : caseIDS){
                Case c1 = new Case();
                c1.Subject = 'Parent Case may contain secret info, do something NOW';
                c1.Priority = 'High';
                c1.Description = 'Secret info not allowed in case';
                c1.ParentId = eachID;
                createCases.add(c1);
            }
            insert createCases;
            system.debug('Created Cases:' + createCases);
        }

    }
    
}
