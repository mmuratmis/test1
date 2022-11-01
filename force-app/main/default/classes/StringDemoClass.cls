public  class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'learning string method in apex language.';
        //1. length
        integer lengthofStr = sessionDescription.length();
        system.debug('length of string is = '+ lengthofStr);

        //2. capitalize
        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('capital string is...' + sessionDescriptionInCaps);

        //3.contains 'apex'
        boolean containsApex = sessionDescription.contains('apex');
        system.debug('has apex? ' + containsApex);

        //3.a contains 'apex'
        boolean containsApex2 = sessionDescription.containsIgnoreCase('APEX');
        system.debug('has APEX? ' + containsApex2);

        //3.b contains salesforce
        boolean containsSalesforce = sessionDescription.containsIgnoreCase('salesforce');
        system.debug('has salesforce? ' + containsSalesforce);
        
    }
}
