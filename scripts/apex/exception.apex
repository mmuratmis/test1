try{
    Account ac = new Account();
     insert ac;
}catch(DmlException de){
    system.debug('dml went wrong buddy.');
}catch(Exception e){
    system.debug('something went wrong buddy.');


}

// will below line execute?
system.debug('Apex is simple.');