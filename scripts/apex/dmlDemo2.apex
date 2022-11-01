//DmlDemo2.dmlInsertDemo2();
//DmlDemo2.dmlUpdateDemo_2_CO();
//DmlDemo2.dmlMultipleRecord1();
//DmlDemo2.dmlMultipleRecord2();
DmlDemo2.dmlMultipleRecordUpdate_1();

list<account> listAcc = [select id, name from account order by createdDate desc limit 154];
delete listAcc;