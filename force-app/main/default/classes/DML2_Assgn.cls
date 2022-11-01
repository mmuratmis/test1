public  class DML2_Assgn {
    public static void insert_dml(){
        list<account> listAcc = new list<account>();
        Account acc = new Account();
        acc.Name = 'Murat Assigment';
        listAcc.add(acc);
        Account acc1 = new Account();
        acc1.Name = 'Murat Assigment DML';
        listAcc.add(acc1);
        insert listAcc;

    }
    public static void updating_dml(){
        list<account> queryAcc = [select id, name from account where name like : '%Murat%'];
        list<account> updateacc = new List<Account>();
        for(account eachAcc : queryAcc){
            eachAcc.Name = 'Murat assigment updation';
            updateacc.add(eachAcc);
        }
        update updateacc;
    }
    

    
}
