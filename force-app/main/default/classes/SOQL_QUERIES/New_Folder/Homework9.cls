public class Homework9 {
    public static void show (){
        
        List<Department__C> dep = [select ID from Department__c where Name = 'Information Technology' limit 1];
        
        system.debug(dep);
        Employee__C employee = New Employee__C();
        employee.First_Name__C = 'Dwayne';
        employee.Last_Name__C = 'Johnson';
        employee.salary__C = 100.000;
        employee.Join_Date__c = date.today();
        
        Department__C dept = dep [0];  
        employee.Department_Name__c = dept.ID;
        insert employee;
        
        List<employee__C> emp = [Select Id from Employee__C where First_Name__C = 'Dwayne'];
        Employee__C empl = emp[0];
        System.debug ('ID of inserted record is:' + empl.id);
        
        
        
        
        
        
        
    }

}