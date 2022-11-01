public  class GetMonth {
    public string getMonthName(integer a){
        string output_Month = '';
        if(a == 1){
            output_Month = 'January';
        }else if(a == 2){
            output_Month = 'February';
        }else if(a == 3){
            output_Month = 'March';
        }else if(a == 4){
            output_Month = 'April';
        }else if(a == 5){
            output_Month = 'May';
        }else if(a == 6){
            output_Month = 'June';
        }else if(a == 7){
            output_Month = 'July';
        }else if(a == 8){
            output_Month = 'August';
        }else if(a == 9){
            output_Month = 'September';
        }else if(a == 10){
            output_Month = 'October';
        }else if(a == 11){
            output_Month = 'November';
        }else if(a == 12){
            output_Month = 'December';
        }else{
            output_Month = 'Not Valid Month';
        }
        return output_Month;
           

    }
    public string quarterSwitch(string monthName){
        string output_Quarter = '';
        switch on monthName {
             when 'January', 'February', 'March'{
                output_Quarter = 'Quarter 1';
             }
             when 'April', 'May', 'June'{
                output_Quarter = 'Quarter 2';
             }
             when 'July', 'August', 'September'{
                output_Quarter = 'Quarter 3';
             }
             when 'October', 'November', 'December'{
                output_Quarter = 'Quarter 4';
             }
             when else{
                output_Quarter = 'Enter a proper Month.';
             }
            }return output_Quarter;



     }
}

