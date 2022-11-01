@isTest
public  class CaseTriggerLabHandlerTest {
   
    @isTest
    public static void CreateChildCaseTest1(){
        list<case> list1 = new list<case>();
        for(integer i = 0; i<200; i++){
           
            Case x = new Case();
            x.Description = 'Team4 password';
            x.Status = 'New';
            x.Origin = 'Phone';
           list1.add(x);
            
            }
        insert list1;
        list<case> controlTrigger = [select id from Case];

        
        system.assertEquals(400, controlTrigger.size());
    }
    
    @isTest
    public static void CreateChildCaseTest2(){
        list<case> list1 = new list<case>();
        for(integer i = 0; i<200; i++){
             
            Case y = new Case();
           y.Status = 'New';
           y.Origin = 'Phone';
            list1.add(y);
            
            }
        insert list1;
        
        system.assertEquals(200, list1.size());
    }
        
        }
    
   

