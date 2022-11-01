@isTest
public  class SoqlDemo2Test {
    @isTest
    public static void soqlDemo(){
        Account acc = new account();
        acc.name = 'SI Test';
        acc.Industry = 'Energy';

        Account acc2 = new account();
        acc2.name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.name = 'PI Test';
        acc3.Industry = 'Banking';
        List<account> listAcc = new list<account>{acc, acc2, acc3};
        insert listAcc;

        list<contact> newContacts = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            contact c = new contact();
            c.LastName = 'soql test ' + i;
            if (i < 100) {
                c.AccountId = acc.id;
            } else if(i<200){
                c.accountid = acc2.id;
            } else if(i < 300){
                c.AccountId = acc3.id;
            }
            newContacts.add(c);
        }
        insert newContacts;
        //we consumed some heap size, 2 dmls, 303 dml rows
        //2. call method
        test.startTest(); //this will reset governor limit for our method.
        //governor limit will be reset to 0 here.
        SoqlDemo2.childToParent_soql1();

        test.stopTest();
        //after the stop, it will resume from previous.
        // so again, we consumed some heap size, 2 dmls, 303 dmls rows.
    }
}
