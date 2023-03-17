public class Homework13 {
    public static void show(){
        Employee__c employee = New Employee__C();
        employee.First_Name__c = 'Peter';
        employee.Last_Name__c = 'Parker';
        employee.Salary__c = 235000.00;
        INSERT employee;
        Employee__c employee2 = New Employee__C();
        employee2.First_Name__c = 'David';
        employee2.Last_Name__c = 'Massey';
        employee2.Salary__c = 65000.00;
        
        
        Employee__C emp = [Select ID from Employee__C where First_Name__C = 'Peter' limit 1];
        
        emp.Email__C = 'peter@parker.com';
        
       
        
        List<Employee__C> emplist = New List<Employee__C>();
        
        emplist.add(emp);
        emplist.add(employee2);
        
        UPSERT emplist;
        
        
        
       
        
        
        
    }

}