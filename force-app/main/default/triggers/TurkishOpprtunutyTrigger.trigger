trigger TurkishOpprtunutyTrigger on Opportunity (before insert, after insert, before update, after update) {
    if(trigger.isBefore && trigger.isUpdate){
            for(Opportunity eachOpp : trigger.new){
               
            if(eachOpp.amount != Trigger.oldMap.get(eachOpp.Id).Amount && eachOpp.StageName != Trigger.oldMap.get(eachOpp.Id).StageName ){
                eachOpp.Description = 'Stage updated: Old Stage =>' + Trigger.oldMap.get(eachOpp.Id).StageName + ' and New Stage =>' + eachOpp.StageName + ' & Amount updated : Old Amount => ' +  Trigger.oldMap.get(eachOpp.Id).Amount + ' and New Amount =>' + eachOpp.Amount;
            }
            else if(eachOpp.StageName != Trigger.oldMap.get(eachOpp.Id).StageName){
                eachOpp.Description ='Stage updated: Old Stage => Id.Decision Makers and New Stage =>' +eachOpp.StageName + '& Amount not updated.';
            }
            else if(eachOpp.amount != Trigger.oldMap.get(eachOpp.Id).amount){
                eachOpp.Description = 'Amount updated : Old Amount =>' + Trigger.oldMap.get(eachOpp.Id).amount + 'and New Amount =>' + eachOpp.Amount;
            }
            else if(eachOpp.amount == Trigger.oldMap.get(eachOpp.Id).amount && eachOpp.StageName == Trigger.oldMap.get(eachOpp.Id).StageName){
                eachOpp.Description ='Record updated but stage and Amount not updated';

            }


        }
    }

}