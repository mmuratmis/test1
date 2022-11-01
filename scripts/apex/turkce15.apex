Account odevList = [select name, id from account where name like '%Arizona%'];
system.debug(odevlist);
Account odevAcc = new Account();
odevAcc.name = 'Summer Fest LLC';
odevAcc.Type = 'Technology Partner';
odevAcc.Rating = 'Hot';
odevAcc.AnnualRevenue = 200000000;
odevAcc.ParentId = odevList.Id;
insert odevAcc;

account summer = [select id, name from account where name like :'%Summer%'];
system.debug(summer);
list<contact> contactOdev = new list<contact>();

Contact odev1 = new Contact();
odev1.LastName = 'Event Planner';
odev1.Phone = '00123457896';
odev1.AccountId = summer.Id;
odev1.LeadSource = 'Web';
contactOdev.add(odev1);

Contact odev2 = new Contact();
odev2.LastName = 'Event Planner';
odev2.Phone = '00123457896';
odev2.AccountId = summer.Id;
odev2.LeadSource = 'Web';
contactOdev.add(odev2);


Contact odev3 = new Contact();
odev3.LastName = 'Event Planner';
odev3.Phone = '00123457896';
odev3.AccountId = summer.Id;
odev3.LeadSource = 'Web';
contactOdev.add(odev3);

insert contactOdev;
