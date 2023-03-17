trigger M11_H6 on Case (before insert) {
    
    List <Case> cases = Trigger.new;
    For (Case css:cases){
       if (css.ContactID !=null && css.Subject!=null){
    css.Priority = 'High';
           
     }
       if (css.ContactID !=null){
    css.Priority = 'Medium';
          
     }
       if (css.Subject!=null){
    css.Priority = 'Low';
           
     } 
      }
    

     }