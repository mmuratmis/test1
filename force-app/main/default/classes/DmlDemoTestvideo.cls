@isTest
public  class DmlDemoTestvideo {
    @isTest
    public static void DmlTest(){
       
        DmlDemo.dmlInsertDemo_stndObj1();
         list<account> acc1 = [select id, name, phone from account where name =  'SoftInnovas' and phone = '09896678765'];
        system.assertEquals( 'SoftInnovas', acc1[0].Name);

        DmlDemo.dmlInsertDemo_cstmObj1();
        List<Salesforce_Project__c> sp1 = [select id, name, Description__c from Salesforce_Project__c where Description__c = 'All are doing great.' ];
        system.assertEquals('Teach DML to Super Batch 10.', sp1[0].Name);

        DmlDemo.dmlUpdateDemo_1();
        list<account> acc2 = [select id, name from Account where name = 'anything'];
        system.debug('murat');
        system.assertEquals('anything', acc2[0].Name);
        list<account> acc3 = [select id, name from Account where name = 'SoftInnovas Inc'];
        system.debug('murat1');
        system.assertEquals('SoftInnovas Inc', acc3[0].Name);

        DmlDemo.dmlUpdateDemo3();
        Account x = new Account();
        x.Name = 'SoftInnovas';
        system.debug('deniz');
        insert x;
        system.assertEquals('SoftInnovas', x.Name);

        list<account> y = [select id, name, phone from account where Name = 'SoftInnovas Inc.'];
        system.assertEquals('SoftInnovas Inc.', y[0].Name);
        system.debug('Rachel');
        

    }
    
}
