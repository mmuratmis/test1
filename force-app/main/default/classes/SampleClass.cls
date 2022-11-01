public  class SampleClass {
    //static string variable;yalnizca classin icinde olusturabilirsin. Methodun icinde olusturamazsin.
    public static string SampleStaticStringVariable;
    //non-static string variable;hem class icinde hem de method icinde olusturulabilir.
    public string SampleString;
    
    //static method olusturma;
    public static void SampleStaticMethod(){
       system.debug('this is static method. Parametre degeri de alsa, void yerine baska tur returnler de olsastatic olabilir.'); 
    }
    //non static method olusturma;
    public void SampleMethod(){
        system.debug('Klasik method olusturma.');
    }


    
}
