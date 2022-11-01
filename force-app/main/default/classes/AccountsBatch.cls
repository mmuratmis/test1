public  class AccountsBatch implements Database.Batchable<SObject>  {

   //1. start method
   public database.QueryLocator start(Database.BatchableContext bc){
    //soql to fetch account records
    database.QueryLocator ql = database.getQueryLocator([select id, description from account]);
    return ql;
   }

   public void execute(database.BatchableContext bc, List<account> scope){
    for(account acc : scope){
        acc.Description += '...updated via batch';
    }
    update scope;


   }

   public void finish(Database.BatchableContext bc){
    system.debug('batch execution finished. Done, simple.');
   }


    
}
