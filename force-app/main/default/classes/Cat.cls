public  class Cat {
    public string name;
    public string color;

    public Cat(string n, string clr){
        name = n;
        color = clr;
        sleeping();
    }

    //public Cat() {
        //system.debug('cat constructor called');

    //}
    public void sleeping(){
        system.debug(name + 'is sleeping');
    }
}
