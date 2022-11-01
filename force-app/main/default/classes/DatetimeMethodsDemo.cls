public class DatetimeMethodsDemo {
    public void calculateAgelnMonth(){
        date birthDate = date.newInstance(1992, 9, 12);
        //today date
        date todayDate = date.today();
        //calculate difference
        integer ageInMonths = birthDate.monthsbetween(todayDate);
        system.debug(ageInMonths);
    

    }
    public void calculateAgelndays(){
        date birthdate = date.newInstance(1992, 9, 12);
        date todayDate = date.today();
        integer ageInDays = birthDate.daysbetween(todayDate);
        system.debug(ageInDays);
    }
    public void printSubscriptionEndDate(){
        date today = date.today();
        date subscriptionEndDay = today.addDays(1000); //basina - koyarsan cikarir.
        system.debug(subscriptionEndDay);

        integer endDateMont = subscriptionEndDay.month();
        system.debug(endDateMont);

        integer endDateYear = subscriptionEndDay.year();
        system.debug(endDateYear);
        
    }
    public void printOfferEndDateTime(){
        datetime dt1 = datetime.now();
    //calculate after51 hours
        datetime dt2 = dt1.addHours(51);
        system.debug('Offer will end on:' + dt2);

        date offerEndDate = dt2.date();
        system.debug(' offer end date is ' + offerEndDate );
    }
        
}

