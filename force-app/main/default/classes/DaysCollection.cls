public  class daysCollection {
    public static string daysAssignment(integer n){
        list<string> lstDays = new list<string>();
        lstDays.add('Monday');
        lstDays.add('Tuesday');
        lstDays.add('Wednesday');
        lstDays.add('Thursday');
        lstDays.add('Friday');
        lstDays.add('Saturday');
        lstDays.add('Sunday');
        integer sayi = lstDays.size();
         string output_day = ' ';
         if((n >0) && (n<sayi)){
            output_day = lstDays[n-1];
         }else{
            output_day = ('No Values FOUND.');
         }return output_day;
            
         }

        
        

    }

