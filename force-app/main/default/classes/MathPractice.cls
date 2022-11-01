public class MathPractice {
   public static void ageCalculate(map<string,date> inputMap){
            map<string,decimal> NameAge = new map<string,decimal>();
            decimal daysage = 0;
            decimal age = 0;

            for(string keyName : inputMap.keySet()){
                date birthDate = inputMap.get(keyName);
                daysAge = birthDate.daysBetween(date.today());
                age = daysAge/365;
                NameAge.put(keyName, age);

            }
            //yaslari virgulden sonra bir basamak icin;
            for(string result : NameAge.keySet()){
                Decimal values = NameAge.get(result);
                system.debug(values.setScale(1));
            }
            
        }
    }

    
    
        

    
        
    
    

