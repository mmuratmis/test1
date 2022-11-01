public  class AssetHandler {
    public static void assetHandlerUpdate(list<asset> newList, list<asset> oldList, Map<id,asset> newAssetMap, Map<id,asset> oldAssetMap){
        Boolean x = false;
        for(asset eachAsst : newList){
           
            if(eachAsst.Status != 'shipped'){
                x = true;
           
           
            }else if(eachAsst.Status == oldAssetMap.get(eachAsst.Id).Status && eachAsst.Status != 'Shipped' ){
                 x = true;
            }
            
            if( x == true){
            eachAsst.addError('System will only accept Shipped');
            }
        }
        }

    }

