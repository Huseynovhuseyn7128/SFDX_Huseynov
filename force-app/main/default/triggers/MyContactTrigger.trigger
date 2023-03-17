trigger MyContactTrigger on Contact (before insert, after insert, before update, after update) {
    if (trigger.IsInsert && trigger.IsAfter){
        System.debug ('Trigger after insert event');
    }
     if (trigger.IsInsert && trigger.IsBefore){
        System.debug ('Trigger before insert event');
    }
     if (trigger.IsUpdate && trigger.IsBefore){
         System.debug ('Before old  '+ Trigger.old);
         System.debug ('Before new  '+ Trigger.new);
    }
     if (trigger.IsUpdate && trigger.IsAfter){
         System.debug ('After old : '+ Trigger.old);
         System.debug ('After new  '+ Trigger.new);
    }
    
    
    }