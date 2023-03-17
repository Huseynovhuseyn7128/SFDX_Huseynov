trigger AccountTriggerNew on Account (before insert, after insert, before update, after update, before delete, after delete) {
    
  /*  if (trigger.isBefore && trigger.isUpdate){
        
        for(Account oldvalues : Trigger.Old){
            for (Account newvalues :trigger.New){
                
                if (oldvalues.Name != newvalues.Name){
                   newvalues.addError ('Name Can not be changed ///this is Trigger'); 
                    
                }
                
                
                
            }
        }
        
 
    }
   
*/
    
    if (Trigger.isBefore && Trigger.isdelete){
        List <opportunity> opps = [select id from opportunity where accountId = : trigger.Old.get(0).id];
        
        List <Account> accounts = [Select Id From account where Name = 'Temporary Account'];
        for (account acc:accounts){
            For (opportunity opp: opps){
            opp.AccountId = acc.id;
        }
        
        }
            
        
        
        
    }
    
    

}