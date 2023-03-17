public class Homework23 {
     public static void show(){
        
         
       Department__C dept = [Select Id from Department__c where Name = 'IT'];
        
        List<Employee__C> employee = New List<Employee__C>{
                New Employee__C (First_Name__C = 'Thomas', Last_Name__C = 'Jacson',Salary__C = 150000.00,Join_Date__C = date.newInstance(2022, 01, 03), Department_Name__C = dept.ID),
                New Employee__C (First_Name__C = 'Julie', Last_Name__C = 'Jacson',Salary__C = 140000.00,Join_Date__C = date.newInstance(2022, 01, 09), Department_Name__C = dept.ID),
                New Employee__C (First_Name__C = 'Matthew', Last_Name__C = 'Pattrick',Salary__C = 160000.00,Join_Date__C = date.newInstance(2022, 11, 03), Department_Name__C = dept.ID),
                New Employee__C (First_Name__C = 'James', Last_Name__C = 'Noah',Salary__C = 120000.00,Join_Date__C = date.newInstance(2022, 12, 01)),
                New Employee__C (First_Name__C = 'Anna', Last_Name__C = 'Rick',Salary__C = 110000.00,Join_Date__C = date.newInstance(2022, 04, 03), Department_Name__C = dept.ID)
        };
            
            Database.Insert(employee,false);
         
            List<Employee__C> emp = New List <employee__C>();
         
            for(Employee__C oldemp :employee){
                 
                oldemp.Email__c = 'example@example.com';
                oldemp.Country__c = 'MEX';
  
                emp.add(oldemp);
            }
         Database.update(emp,false);
         
         
 			
      List<Database.SaveResult> results = database.Update(emp, false);
        
        for(Database.saveResult temp:results){
            
            if (temp.isSuccess()){
                system.debug('Successfully Updated:' + temp.getId());
            
            }
            else{
                temp.getErrors();
                system.debug('Error Not Updated: ' + temp.getErrors());
            }
            
        }

}
}