@isTest
public  class DmlDemoTest2 {
    @isTest
    public static void dmlInsertDemo2TEST(){
       //1.prepare data
       Account acc = new Account(); 
       acc.Name = 'SoftInnovas';
       acc.phone = '09896678765';
       insert acc;
       //2.Call the method 
       DmlDemo2.dmlInsertDemo2();
       //what and how?
       list<contact> listContact = [select id, lastname, AccountId from contact where LastName = 'Mis'];
       system.assertEquals(1, listContact.size());
       system.assertEquals(acc.Id, listContact[0].AccountId);
    }
    @isTest
public static void dmlInsertDemo3Test(){
    //1.prepare Data
    Salesforce_Project__c sp = new Salesforce_Project__c();
       sp.Project_Name__c = 'Teach DML to Super Batch 10.';
       sp.Description__c = 'All are doing great.';
       sp.Status__c = 'New';
       insert sp;

       //2.call the method\
       DmlDemo2.dmlInsertDemo3();

       //3.Assertion
       List<Salesforce_Ticket__c> stList = [select id, subject__c, salesforce_project__c from Salesforce_Ticket__c where Subject__c = 'Learn APEX DML'];
       system.assertEquals(sp.Id, stList[0].Salesforce_Project__c);
}


         
}
