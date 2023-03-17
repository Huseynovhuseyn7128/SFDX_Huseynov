trigger MyAccountTrigger on Account (before insert,after insert,before update, after update,before delete, after delete, after undelete) {
    if (Trigger.isInsert && Trigger.isBefore){
        AccountTriggerHandler.newAccounttypeProspect(Trigger.new);
        AccountTriggerHandler.shippingandbilling(Trigger.new); 
        AccountTriggerHandler.ErrorDublicateAccount(Trigger.new);        
    }  
    if (Trigger.isInsert && Trigger.isAfter) {

        AccountTriggerHandler.NewContactWithSamePhoneNumber(Trigger.new);

    } 
    if (Trigger.isUpdate && Trigger.isBefore) { 
        AccountTriggerHandler.edirDescription(Trigger.new,trigger.old);
            
        
     
    }
    if (Trigger.isUpdate && Trigger.isAfter){
       AccountTriggerHandler.UpdatesumofOpp(Trigger.new); 
    }    
    if (Trigger.isDelete && Trigger.isBefore){
        AccountTriggerHandler.ActiveAccountCannotdeleted(Trigger.Old);
        AccountTriggerHandler.Cannotdeleteassosiatedaccountsandopp(Trigger.oldMap);
        AccountTriggerHandler.TransferOpptoTemporaryAccount(Trigger.Old);
        accountTriggerhandler.Cannotdeleteaccwithopp(Trigger.old);
    }
    if (Trigger.isDelete && Trigger.isAfter){
        accountTriggerhandler.Deleterelatedoppandcont(Trigger.old)  ; 
        
   }
    if (Trigger.IsUndelete && Trigger.isAfter){
        AccountTriggerHandler.SendEmailwhenrestored(Trigger.new);
    }
    }