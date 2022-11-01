public  class CaseTriggerHandler {
    // public static void caseCheck(list<case> newCaseList, list<case> oldCaseList, Map<id,case> newCaseMap, Map<id,case> oldCaseMap){
    //     if(Trigger.isupdate){
    //         for(case eachCase :newCaseList){
    //             if(eachCase.Status != oldCaseMap.get(eachCase.Id).Status){
    //                 system.debug('Status changed to new Status.');
    //             }
    //         }
    //     }
    //     if(Trigger.isinsert){
    //         for(case eachCase :newCaseList){
    //             system.debug('Status set to Status.');
    //         }
    //     }


    // }
    //public static void caseCreateTask(list<case> newCaseList, list<case> oldCaseList, Map<id,case> newCaseMap, Map<id,case> oldCaseMap){
        // list<task> eklenecek = new list<task>();
        //     for(case eachCase : newCaseList){
        //         Task x = new Task();
        //       x.WhatId = eachCase.Id;
        //         x.Subject = 'Email';
        //         eklenecek.add(x);
        //     }
        //     if(!eklenecek.isEmpty()){
        //         insert eklenecek;
        //     }
            
        //

        public static void caseCheck(list<case> newCaseList, list<case> oldCaseList, Map<id,case> newCaseMap, Map<id,case> oldCaseMap){
            List<Case> eklenecek = new List<Case>();
         for(case eachCase : newCaseList){
            if( eachCase.Description.contains('password')){
                Case a1 = new Case();
                a1.Subject = 'Parent Case may contain secret info, do something NOW';
                a1.ParentId = eachCase.Id;
                a1.Priority = 'High';
                a1.Description = 'Secret info not allowed in case';
                eklenecek.add(a1);

            }
        }insert eklenecek;
        
         }


    }
    

