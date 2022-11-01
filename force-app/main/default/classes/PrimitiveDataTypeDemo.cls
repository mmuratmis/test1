public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        system.debug('inside print basic datatype method.');

        string batchName = 'Batch 10';
        integer totalCandidates = 85;
        boolean isAdminCompleted = true;

        system.debug(batchName);
        system.debug(totalCandidates);
        system.debug(isAdminCompleted);

        string batchDescription = batchName + ' is amaizing, really.';
        system.debug(batchdescription);

        decimal decValue = 12234.77;
        system.debug('dec value-' + decvalue);

        long longValue = 456788L;
        system.debug('long value - ' + longValue);

        object obj = 'This is a string object.';
        system.debug('obj is -->'+ obj);
        object obj2 = 6566.8;
        system.debug('obj2 -->' + obj2);
        
        Id id1 = '0015g00000rtcluAAA';
        system.debug(id1);



    }
}
