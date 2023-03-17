public class HomeWork7 {
    public static void show(){
        
        Employee__C emp = new Employee__C();
        emp.First_Name__C = 'Dwayne';
        emp.Last_Name__c = 'Johnson';
        emp.Join_Date__c = date.today();
        emp.Email__c = 'dwayne@johnson.com';
        
        insert emp;
        Id accountid = emp.id;
        
        SYSTEM.DEBUG (Emp.id);
        List<Employee__C> mysob = [Select ID from Employee__C where Email__C = 'dwayne@johnson.com'];
        
        For (employee__C temp:mysob ){
        temp.First_Name__C = 'The';
        temp.Last_Name__C = 'Rock ';
        }
        update mysob;  
        SYSTEM.DEBUG (mysob);
      
    }

}