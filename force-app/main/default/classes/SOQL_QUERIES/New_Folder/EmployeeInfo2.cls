public with sharing class EmployeeInfo2 {
    public Static void show() {
        List<Employee__C>employee = [Select Name, Last_name__C, Country__c,Email__C from employee__C Limit 5];
        for (Employee__C temp:employee){
        system.debug('Employee Name: '+temp.Name + ' Last Name '+ temp.Last_Name__C);
        System.debug ('Conutry: '+ temp.country__C);
        System.debug ('Email: '+ temp.email__C);


        }
    }
}