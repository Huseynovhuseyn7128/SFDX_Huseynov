public class Homework25 {
    Public static void show(){
        
        Schema.DescribeSObjectResult objresult = Contact.SobjectType.Getdescribe();
        
        
        Map<String, Schema.SObjectField > fieldsmap = objresult.fields.getMAp();
        
        for(String key :fieldsmap.keySet()){
            system.debug(key+ '   : '+fieldsmap.get(key) );
        }
        
       
    }

}