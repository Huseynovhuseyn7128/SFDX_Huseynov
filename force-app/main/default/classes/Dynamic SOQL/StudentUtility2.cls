public with sharing class StudentUtility2 {

        public Static void  viewTheseFields (List <String> fields, String conditionalvalue, Object age){
    
                
            String stu = 'SELECT ID ';
            for (String field: fields ){
                stu += ','+field;  
            }
            stu += ' FROM Student__C ';
            stu += 'WHERE ' +conditionalvalue+' >:age'; 
            
            List <SObject> records = database.query(stu);
            
            for (SObject record:records){
                for (String field: fields){
                  system.debug (record.get(field));  
                }
  
            }
    
        }
      
    }