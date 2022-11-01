public  class Calculator5 {
    public static decimal dynamicCalulationMethod(decimal a, decimal b, string operation){
        decimal result = 0;
        switch on operation{
            when 'addition'{
                result = a + b;
            }when  'subtraction'{
                result = a - b;
            }when 'division'{
                result = a / b;
            }when 'multiplication'{
                result = a * b;
            }
        }return result;


    }
}
