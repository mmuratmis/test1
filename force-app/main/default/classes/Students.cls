public  class Students {
    public string firstName;
    public string lastName;
    public integer classYear;
    public string majorStream;
    
    public string GenerateReport(){
        system.debug('Report Generated for ' + firstName+' '+lastName+ ' of ' + classYear+' . ');
        return majorStream;

    }
    
}
