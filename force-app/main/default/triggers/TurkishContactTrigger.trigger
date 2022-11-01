trigger TurkishContactTrigger on Contact (before insert, after insert, before update, after update) {
    if(trigger.isAfter && trigger.isInsert){
        list<contact> mmis = trigger.new;
        for(contact eachCont : mmis){
            if(eachCont.FirstName == '' | eachCont.FirstName == null | eachCont.FirstName =='   '){
                system.debug('Bu recordda firstName yazilmadi.. Name sadece  last name =' + eachCont.LastName + 'den olusuyor.');
            }
        }
    }

}