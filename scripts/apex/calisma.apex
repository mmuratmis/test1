Account son = [select name, id from account where name like '%Summer Fest LLC1%'];
system.debug(son);
list<contact> contlist = new list<contact>();

for(integer i = 0; i<4; i++){
    Contact newCont = new Contact();
    newCont.LastName = 'Event Planner';
    newCont.Phone = '4567990';
    newCont.AccountId = son.id;
    newCont.LeadSource = 'Web';
}