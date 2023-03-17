public class Homework22 {
    public static void show(){
        Department__C dept = [Select Id from Department__c where Name = 'IT'];
        List<Employee__C> employee = New List<Employee__C>{
                New Employee__C (First_Name__C = 'Thomas', Last_Name__C = 'Jacson',Salary__C = 150000.00,Join_Date__C = date.newInstance(2022, 01, 03), Department_Name__C = dept.ID),
                New Employee__C (First_Name__C = 'Julie', Last_Name__C = 'Jacson',Salary__C = 140000.00,Join_Date__C = date.newInstance(2022, 01, 09), Department_Name__C = dept.ID),
                New Employee__C (First_Name__C = 'Matthew', Last_Name__C = 'Pattrick',Salary__C = 160000.00,Join_Date__C = date.newInstance(2022, 11, 03), Department_Name__C = dept.ID),
                New Employee__C (First_Name__C = 'James', Last_Name__C = 'Noah',Salary__C = 120000.00,Join_Date__C = date.newInstance(2022, 12, 01)),
                New Employee__C (First_Name__C = 'Anna', Last_Name__C = 'Rick',Salary__C = 110000.00,Join_Date__C = date.newInstance(2022, 04, 03), Department_Name__C = dept.ID)
        };
        
        List<Database.SaveResult> results = database.insert(employee, false);
        for(Database.SaveResult temp:results){
            if (temp.isSuccess()){
                system.debug('Successfully Inserted:' + temp.getId());
            
            }
            else{
                system.debug('Error Not Inserted: ' + temp.getErrors());
            }
            
        }
  
        
    }
    
    
    

}