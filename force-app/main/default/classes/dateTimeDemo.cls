public  class dateTimeDemo {
    public void dateTimeDemoMethod(){
        date currentlyDate = date.today();
        system.debug('Current Date is' + ' ' + currentlyDate);
        
        date date1 = date.newInstance(1992, 09, 12);
        date date2 = date.newInstance(1993, 09, 12);
        //between these two days
        integer betweenTwo = date1.daysBetween(date2);
        system.debug('No.Of Days'+ ' ' + betweenTwo);
        //subscription
        date todayDate = date.today();
        date subscription = todayDate.addDays(30);
        system.debug('Subscription end date is' + ' ' + subscription);


    }
}
