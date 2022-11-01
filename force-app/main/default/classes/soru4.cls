public  class soru4 {
    public static void accNoCont(){
        list<account> acc = [select id, name from account];
        list<account> accListToInsert = new list<account>();
        for(account eachacc : acc){
            if(eachacc.contacts.size() == 0){
                Contact addToAcc = new Contact();
            eachAcc.Id = addToAcc.AccountId;
            addToAcc.LastName = eachAcc.Name;
            accListToInsert.add(eachAcc);

            }

        }insert  accListToInsert;
            
        }

    }
    





