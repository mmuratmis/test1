trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    if(trigger.isBefore){
        if(trigger.isInsert){
            list<contact> test1 = trigger.new;
            for(contact eachAcc : test1){
                system.debug(eachAcc.Name + eachAcc.Id );
            }
        }
    }
    






    // list<account>listAcc = new list<account>();
    // Account obj = new Account();
    // obj.Name = 'Deniz';
    // obj.Phone = 53345676767;
    // listAcc.add(obj);

    // Account klm = new Account();
    // klm.Name = 'Taylan';
    // klm.Phone = 876555778;
    // listAcc.add(klm);



// if(trigger.isBefore && trigger.isInsert){
    //     system.debug('bu before-insert');
    // }
    // if( trigger.isAfter&&trigger.isInsert ){
    //     system.debug('Bu after-insert');
    // }
    // if( trigger.isBefore && trigger.isUpdate ){
    //     system.debug('Bu before-Update');
    // }
    // if(trigger.isAfter && trigger.isUpdate){
    //     system.debug('Bu after-update');
    // }














}