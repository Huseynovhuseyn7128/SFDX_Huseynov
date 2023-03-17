public with sharing class EmployeeUtility {

    public static void viewTheseFields (List<String>fields ) {
        
        
        String emp = 'Select ID';
        for (String field:fields){
            emp  += ',' + field; 
        }
        emp += 'FROM Employee__C';

        System.debug (emp);

   
        List <Employee__c>employees = database.query(emp);

        For (Employee__c temp: employees){
            for (String field:fields){
              System.debug (temp.get(field));
             
            }

            

        }

        

    }
}