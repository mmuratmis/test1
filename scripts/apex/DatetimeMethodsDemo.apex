DatetimeMethodsDemo obj = new DatetimeMethodsDemo();
//obj.calculateAgelnMonth();
//obj.calculateAgelndays();
//obj.printSubscriptionEndDate();
obj.printOfferEndDateTime();

datetime birthDate = datetime.newInstance(1992, 09, 12, 7, 30, 56);
long longBirthDate = birthDate.getTime();
system.debug(' birthday in millisecond from 1970 Jan 1 0000 GMT ' + longBirthDate);
