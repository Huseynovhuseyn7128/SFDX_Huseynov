public class ClassAssign {
    
   
    public Static void show(){
         String Country  = 'UK';
        List<Employee__C> employee = [Select Name,Last_Name__C, Country__C 
                                      From Employee__C 
                                      Where Country__C = : country];
        system.debug(employee);
        
      }  
        
    }