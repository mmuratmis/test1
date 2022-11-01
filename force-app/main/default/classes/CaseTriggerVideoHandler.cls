public  class CaseTriggerVideoHandler {
    public static void createTask(list<case> newCase, list<case> oldCase, Map<id, case> newCasemap, Map<id, case> oldCaseMap){

        if(oldCase == null){
            list<task> eklenecek = new list<task>();
            for(case eachCase :newCase){
                Task t1 = new Task();
                t1.WhatId = eachCase.Id;
                t1.Subject = 'Email';
                eklenecek.add(t1);
            }
            insert eklenecek;
        }

    }
}
