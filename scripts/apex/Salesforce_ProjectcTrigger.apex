Salesforce_Project__c odev1 = new Salesforce_Project__c();
odev1.Project_Name__c = 'Musa Murat';
insert odev1;

Salesforce_Project__c x = [select id, Project_Name__c from Salesforce_Project__c  order by Project_Name__c limit 1 ];
x.Project_Name__c = 'Musa Murat Mis';
update x;

