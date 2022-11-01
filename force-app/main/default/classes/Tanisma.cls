public class Tanisma{
    public string language;
    public string GreetHello(integer n){
        string mesaj = '';
        if(language == 'English'){
            for(integer i = 0; i<=n; i++){
                mesaj = 'Hello';
                system.debug(mesaj);
            }
        }else if(language == 'Hindi'){
            for(integer i = 0; i<=n; i++){
                mesaj = 'Namaste';
                system.debug(mesaj);
            }
        }return mesaj;
    }
    
    
}