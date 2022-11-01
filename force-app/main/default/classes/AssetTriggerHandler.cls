public  class AssetTriggerHandler {
     public static void AssetHandlerUpdate(List<Asset> newAsst, List<Asset> oldAsst, MAP<Id, Asset> newAsstMap, MAP<Id, Asset> oldAsstMap){

        for(asset eachAsst : newAsst){
            if(eachAsst.Status != 'Shipped'){
                eachAsst.addError('System will only accept Shipped.');
            }
            else if(eachAsst.Status == oldAsstMap.get(eachAsst.id).Status && eachAsst.Status != 'Shipped' ){
                eachAsst.addError('System will only accept Shipped.');
            }
        }
//         if(trigger.isInsert){
//             for(asset eachAsset : newAsst){
//                 if(eachAsset.Status == 'Shipped'){
//                     eachAsset.Description = 'Asset is shipped';
//                 }
//                 else if(eachAsset.Status == 'Installed'){
//                     eachAsset.Description = 'Asset is installed.';
//                 }
//             }
//         }
//         if(trigger.isUpdate){
//             for(asset eachAsset : newAsst){
//                 if((oldAsstMap.get(eachAsset.id).Status != eachAsset.Status) && eachAsset.Status == 'Shipped' ){
//                     eachAsset.Description = 'Asset is shipped';
//                 }else if(oldAsstMap.get(eachAsset.id).Status != eachAsset.Status && eachAsset.Status == 'Installed'){
//                     eachAsset.Description = 'Asset is installed.';
//                 }else if(oldAsstMap.get(eachAsset.id).Status == eachAsset.Status ){
//                     eachAsset.Description.addError('You can not change description.');
//                 }
//             }
//     }

// }
  
}
        
}