public  class staticmis {
    public string Name;
    public string Gender;
    public static string CompanyName;

    public void printCandidateInfo(){
        system.debug(Name +' '+Gender +' '+ CompanyName);
    }
    public static void printCandidateInfoSt(){
        system.debug(CompanyName);
    }

    public static void printCandidateInfo2(){
        system.debug(CompanyName);
        //system.debug(Name);
    }
}
