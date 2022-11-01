public  class DmlDemo {
    public static void dmlInsertDemo_stndObj1(){
       //create new instance of sObject
        Account acc = new Account(); 
       //2.set fields
       acc.Name = 'SoftInnovas';
       //3.Set other fields
       acc.phone = '09896678765';
       //4.Insert


       insert acc;

    }
    public static void dmlInsertDemo_cstmObj1(){
       //new instance
       Salesforce_Project__c sp = new Salesforce_Project__c();
       sp.Project_Name__c = 'Teach DML to Super Batch 10.';
       sp.Description__c = 'All are doing great.';
       sp.Status__c = 'New';
       //insert dml
       insert sp;
        
    }
    public static void dmlUpdateDemo_1(){
        Account acc = new Account();
        acc.name = 'anything';
        system.debug('Before Inserting -> '+ acc);
        insert acc;
        system.debug('After Inserting -> ' + acc);

    //updating
    acc.name = 'SoftInnovas Inc';
    update acc;
    system.debug('After updating --> ' +acc);

    }
    //updating record which is we have already have. we are calling soql first.
     public static void dmlUpdateDemo3() {
        account acc = [select id, name from account where name = 'SoftInnovas' limit 1];

    //update account
    acc.Name = 'SoftInnovas Inc.';
    acc.phone = '3456677876'; //we can set without querying the field.
    //DML
    update acc;
    system.debug('acc is' + acc);
    }
    


}
