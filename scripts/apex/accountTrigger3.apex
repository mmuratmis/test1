Account cuma1 = new Account();
cuma1.Name = 'Bandit';
insert cuma1;

list<account> sonuc = [select id, name from account where name like '%Bandit&' limit 1];