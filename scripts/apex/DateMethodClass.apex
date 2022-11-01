DateMethodClass dm = new DateMethodClass();
Date someDate = date.newInstance(2005, 01, 01);
boolean leapCheck1 = dm.leapYearCheck(someDate);
system.debug('2005 falls in leap year? ' + leapCheck1);