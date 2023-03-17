trigger AccountTrigger1 on Account (before insert,before update) {
    if(trigger.isInsert == true){
       system.debug('INSERT OPERATION:'+ trigger.isInsert); 
    }
    if (trigger.isUpdate == true){
        system.debug('UPDATE OPERATION:'+ trigger.isUpdate);
    }
    
}