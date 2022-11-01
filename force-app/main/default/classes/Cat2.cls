public  class Cat2 {
public string name;
public string color;
    
    //second constructor parameterized
    public Cat2(string n, string clr){
    system.debug('constructor called again.');
    name = n;
    color = clr;
    sleeping();
    }

    public void sleeping(){
        system.debug(name + ' is sleeping.' );
    }
    

}
        
    
