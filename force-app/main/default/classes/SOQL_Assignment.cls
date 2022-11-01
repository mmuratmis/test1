public  class SOQL_Assignment {
    public static void soql_WhereClause(){
        list<contact> lstcontact = [select lastname from contact where lastname like '%A%'];
        system.debug('List of contacts which contains A in lastname is ' + lstcontact);
        system.debug('Size of the list which we got above is ' + lstcontact.size());
        system.debug('==========<>==========');



    }

    public static void soql_formethod(){
        list<contact> lstcontact = [select lastname, phone from contact];
        for(contact eachContact : lstcontact){
            system.debug('Lastname and phoneNUmber of the each records is ' + eachContact);
        }
    }
}
