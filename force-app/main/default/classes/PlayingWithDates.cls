public  class PlayingWithDates {
    public void printDateOutput(){
        //today
        date currentday = date.today();
        system.debug(currentday);
        //first
        date newDay1 = date.newInstance(2789, 11, 5);
        system.debug(newDay1);
        //second
        date newDay2 = date.newInstance(1459, 3, 4);
        system.debug(newDay2);

        //int1
        integer dayInt = 15;
        integer monthInt = 9;
        integer yearInt = 1992;

        date newdate = date.newInstance(yearInt, monthInt, dayInt);
        system.debug(newdate);

    }

}
