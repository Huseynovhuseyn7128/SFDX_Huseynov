public class SObjectUtility {
    //
    public static void viewTheseFields (List<String> fieldsnames, String Sobjectname, String Conditionalfieldname, Object Conditionalvalue){
        
        String fieldstart  = 'SELECT ID';
        
        for (String field : fieldsnames){
            
		  fieldstart += ','+field ;
           
            
        }
         fieldstart += ' FROM '+ Sobjectname;
       	 fieldstart += ' WHERE '+Conditionalfieldname+ '=  :Conditionalvalue ';
        
        system.debug(fieldstart);
        
        List <Sobject> Sobjects = database.query(fieldstart);
         System.debug (Sobjects);
        
        for (Sobject temp:Sobjects){
            for(String field : fieldsnames){
                system.debug (temp.get(field));
                
                    }
                }
            }
          
        }