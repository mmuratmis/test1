public  class SOQLDemo2Home {
    public static void childToParent_soql1(){
      list<contact> listContact = [select id, name, Account.Name, Account.industry from contact where Account.Industry = 'Energy'];
      for(contact eachContact : listContact){
        string accName = eachContact.Account.Name;
        string accInd = eachContact.Account.Industry;
        system.debug('contact name is '+ eachContact.Name + 'its acc is ' + accName + 'and its industry is ' + accInd);
      }

        
    }
    public static void sampleSoql4(){
      list<Account> listExample = [select name, annualRevenue, (select name, amount from Opportunities where stageName = 'Closed Won') from account where type = 'Customer - Direct'];
      for(Account eachAcc : listExample){
        system.debug('Account name is '+ eachAcc.name + 'and its annualrevenue is ' + eachAcc.AnnualRevenue);
        for(Opportunity eachOpp : eachAcc.Opportunities){
          system.debug('Opportunity name is ' + eachOpp.name);
          system.debug('Opportunity amount is ' + eachOpp.Amount);
        }
      }
       }
       public static void parentToChild_soql1(){
        list<salesforce_project__c> newList = [select id, name, Project_Name__c, (select priority__c, name from salesforce_tickets__r) from salesforce_project__c];
        for(salesforce_project__c eachProject : newList){
          system.debug('project name is ' + eachProject.Project_Name__c);
          list<salesforce_ticket__c> listTicket = eachProject.salesforce_tickets__r;
          integer size = listTicket.size();
          system.debug('Total tickets in project is ' + size);

        }
       }
}
