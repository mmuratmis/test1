@isTest
public  class RankHandlerTest {
    @isTest
    public static void denemetest1(){
        RankHandler obj1 = new RankHandler();
        string sonuc = obj1.rankPrize(3);
        system.assertEquals('Bronze', sonuc);

    }
    
}
