public  class PazarCustomerHandler {
    public static void custCreatePayment(List<Customer__c> newList){
        List<Payment__c> eklenecek = new List<Payment__c>();
        for(Customer__c eachCustomer :newList){
            Payment__c p1 = new Payment__c();
            p1.Amount__c = 0.1;
            p1.Mode__c = 'Online';
            p1.Customer__c = eachCustomer.Id;

            Payment__c p2 = new Payment__c();
            p2.Amount__c = 1;
            p2.Mode__c = 'Crypto';
            p2.Customer__c = eachCustomer.Id;
            eklenecek.add(p1);
            eklenecek.add(p2);
        } insert eklenecek;
    }
    
    public static void deleteFirst(List<Customer__c> oldList){
        set<id> aktifCustomId = new set<id>();
       for(Customer__c eachCustomer : oldList){
        if(eachCustomer.Active__c == true){
           aktifCustomId.add(eachCustomer.Id);
        }
       }//aktif accountlara bagli paymentleri bulacagiz.
       List<Payment__c> silinecek = new List<Payment__c>();
       List<Payment__c> aktifAccPay = [select id, name, Customer__c from Payment__c where Customer__c IN :aktifCustomId];
       for(Payment__c eachPay : aktifAccPay){
        if(eachPay.Customer__c == null){
            silinecek.add(eachPay);

        }
       } if(!silinecek.isEmpty()){
        delete silinecek;
       }
    }
}
