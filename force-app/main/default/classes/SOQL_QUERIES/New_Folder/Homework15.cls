public class Homework15 {
    public static void dmldelete(){
        Employee__C emp = [Select Id from Employee__C where First_Name__c = 'David' limit 1];
        Employee__C employee = New Employee__C();
        employee.Id = emp.ID;
        DELETE employee;
        
    }

}