public  class PrimitiveDataTypeDemo2 {
    public void printNewData(){
        system.debug('create new date instances.');

        Date newDate = Date.newInstance(1995, 2, 17);
        system.debug(newDate);
        Date newDate2 = Date.newInstance(2021, 10, 7);
        system.debug(newDate2);

        //today date
        Date todayDate = date.today();
        system.debug(todayDate);

    }

    public void printNewTime(){
        //(hour,minute,second,milli seconds)
        Time myTime = Time.newInstance(18, 20, 2, 30);
        system.debug(myTime);

        Time myTime2 = Time.newInstance(02, 54, 6, 20);
        system.debug(myTime2);
        
    }
    public void printNewDateTime(){
        Date todayDate = date.today();
        Time myTime = Time.newInstance(18, 20, 2, 30);
    //1.date time using date and time
        Datetime dt1 = Datetime.newInstance(todayDate, myTime);
        system.debug('dt1 --> ' + dt1);

    //2. create datetime using year,month,day--> time will be midnight or user timezone.
        DateTime dt2 = Datetime.newInstance(2025, 09, 12);
        system.debug('dt2 --> ' + dt2);// but when it prints, it prints GMT.
    
    //3. create datetime using year,month,day,hour,minute,second
        dateTime dt3 = DateTime.newInstance(2022, 09, 13, 08, 11, 32);
        system.debug(dt3);
    
    //4.create newInstance from milliseconds
    Long longTime = 1234323456765L;
    DateTime dt4 = DateTime.newInstance(longTime);
    system.debug(dt4);
    //with 0
    long longTime1 = 0;
    dateTime dt4a = DateTime.newInstance(longTime1);
    system.debug(dt4a);
    
    //5. create GMT dateTime using y,m,d,h,m,s
    Datetime dt5 = DateTime.newInstanceGMT(1998, 1, 28, 18, 2, 3);
    system.debug(dt5);

    //6.Current time
    Datetime dt6 = DateTime.now();
    system.debug(dt6);

    }
}
