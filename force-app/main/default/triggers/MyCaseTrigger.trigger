trigger MyCaseTrigger on Case (before insert, after insert, before update, after update) {
    
    if(trigger.isInsert && trigger.isBefore){
      System.debug ('Trigger before insert event');  
    }
    if(trigger.isInsert && trigger.isAfter){
     System.debug ('Trigger after insert event');  
    }
    if(trigger.isUpdate && trigger.isBefore){
      System.debug ('Trigger before update event');  
    }
    if(trigger.isUpdate && trigger.isAfter){
      System.debug ('Trigger after update event');  
    }
    

}