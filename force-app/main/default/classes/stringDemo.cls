public  class stringDemo {
    public void stringDemoMethod(){
        string strDemo = 'I am learning string methods in apex';
        system.debug(strDemo);

        integer lengOfStrDemo = (strDemo.length());
        system.debug('Leng of String Demo is ' + lengOfStrDemo);

        string capitalOfStr = (strDemo.toUpperCase());
        system.debug(capitalOfStr);

        boolean anyLearning = (strDemo.contains('learning'));
        system.debug(' Any learning? ' + anyLearning);
    }
   
}
