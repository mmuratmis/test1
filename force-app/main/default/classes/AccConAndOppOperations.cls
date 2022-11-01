public  class AccConAndOppOperations {
    public static void creatContInAcc(id accID){
        Account accForCon = [select id, name FROM Account WHERE id = :accID];
            Contact yazilacakCont= new Contact();
            yazilacakCont.AccountId = accForCon.Id;
            yazilacakCont.LastName = accForCon.Name;
        insert yazilacakCont; 
        }
        public static void oppDescrip() {
            List<Opportunity> oppList = [select id, name, Amount, description FROM Opportunity ORDER BY Amount DESC LIMIT 10];
            List<Opportunity> oppDesc= new List<Opportunity>();
            for (Opportunity eachOpp : oppList) {
                eachOpp.Description =  'This is one of the top 10 opportunities. Please work on this properly';
                oppDesc.add(eachOpp);
                               
            }
            update oppDesc;
            
          }  
          public static List<Opportunity> creatOppforAcc(id accId, Integer n) {
            Account fetchId = [select id, name, AnnualRevenue FROM Account WHERE id = :accId];
          List<Opportunity> oppDesc2= new List<Opportunity>();
          for (Integer i = 0; i < n; i++) {
              Opportunity nTane = new Opportunity();
                  nTane.AccountId = fetchId.Id;
                  nTane.CloseDate = Date.today().addYears(3);
                  nTane.StageName = 'Prospecting';
                  if (fetchId.AnnualRevenue != null) {
                  nTane.Amount = fetchId.AnnualRevenue/n;                    
                  }
                  nTane.Name = fetchId.Name;
                  oppDesc2.add(nTane);    
          }
          insert oppDesc2;
          return oppDesc2;
        }
        public static list<account> contactFree() {
            List<Account> accList = [Select id, name, (select AccountId from Contacts) FROM Account ];
            List<Contact> yeniListe = new List<Contact>(); 
            Contact yeniContact=new Contact();
            for (account eachAcc : accList) {
                    if (eachAcc.Contacts.isEmpty()) {
                    yeniListe.add(eachAcc.Contacts);
                }
            }
            return yeniListe;
            
}
public static void deleteOpp() {
    List<Opportunity> deleteOppp = [Select id,name, amount, StageName from  Opportunity WHERE Amount<20000 AND StageName='Closed Lost'];
    delete deleteOppp;
  }

