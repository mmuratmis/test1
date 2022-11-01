public with sharing class AccConAndOppOperations {
    //4.1
    public  static List<Account>  acc_1() {
    List<Account> acc= [ select id ,name,AnnualRevenue,type,AccountSource from Account ];
    return acc;
    }
    //4.2
    public  static List<Opportunity>  opp_2 (string  LeadSrc, string stage ) {
    List<Opportunity> opp= [ select name,amount from Opportunity where LeadSource = :LeadSrc AND stageName=:stage];
    return opp;
    }
    //4.3
    public static void accountOpp_1 (string accType,string oppStage) {
        List<Account> accOpp1=[select id,name,AnnualRevenue,( select name , amount ,type ,stageName from opportunities where stageName =:oppStage )  from account  where type=:accType];
        for (Account eachAccOpp : accOpp1) {
            system.debug('List of Account  Name ---->  '+ eachAccOpp.Name);
            for (Opportunity eachOpp : eachAccOpp.Opportunities) {
                system.debug('List of opportunities  from account---->  '+ eachOpp.Name);
            }
        }
    }
    //4.4
    public static Account createAcc (string name,integer annuaRevenu, string type) {
    Account acc= new Account();
    if(name!=null ){
    acc.Name=name;
    acc.AnnualRevenue=annuaRevenu;
    acc.Type=type;
    insert acc;
    }else{
    system.debug('Account without name cannot be created.');
    }
    return acc;
    }
    }