public with sharing class EmployeeInfo {
    public static void Show() {

        List<Employee__C> employee = [Select Name, Last_Name__c, Join_Date__C from Employee__C  order  by Join_Date__C Desc ];

        for (Employee__C temp:employee){
            system.debug ('First Name: '+ temp.Name + ' Last Name '+ temp.Last_Name__C);
            system.debug ('Joining Date: '+ temp.Join_Date__C);

        }

    }
}