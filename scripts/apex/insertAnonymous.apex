  list<account> listAcc = new list<account>();

         Account acc = new account();
         acc.name = 'acc bukl 1';
         acc.phone = '987654321';
         listAcc.add(acc);
 
         Account acc1 = new account();
         acc1.name = 'acc bukl 2';
         acc1.phone = '987654321';
         listAcc.add(acc1);
 
         Account acc2 = new account();
         acc2.name = 'acc bukl 1';
         acc2.phone = '987654321';
         listAcc.add(acc2);

         Account ac1 = new Account();
         Account ac2 = new Account();

         listAcc.add(ac1);
         listAcc.add(ac2);

         list<Database.SaveResult> results = Database.insert(listAcc, false); 
         for(Database.SaveResult eachResult : results){
            //if ile check ediyoruz. true ise id aliyoruz; false ise error.
            if(eachResult.isSuccess() == true){
               system.debug('account created succesfully. Id is ' + eachResult.getId());

            }else {
               system.debug('Bad guy. Error is ' + eachResult.getErrors());

            }
         }
          
         


