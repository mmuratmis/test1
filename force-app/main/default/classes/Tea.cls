public  class Tea {
    public void Start(){
        system.debug('We need to collect all raw material.');

    }
    public void Execute(){
        Start();
        system.debug('We need to mix all material and boil in water.');

    }
    public void Finish(){
        Execute();
        system.debug('Tea is ready to serve now.');
    }

}
