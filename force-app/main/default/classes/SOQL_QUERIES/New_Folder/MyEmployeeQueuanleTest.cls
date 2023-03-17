@isTest
public class MyEmployeeQueuanleTest {
    @IsTest
    static void testQueueableExecute(){
        List<Employee__c> employees = new List<Employee__c>{
        									new Employee__c(First_Name__c='First'),
                                            new Employee__c(First_Name__c='Second'),
                                            new Employee__c(First_Name__c='Third')
        };
        INSERT employees;
        Test.startTest();
        System.enqueueJob(new MyEmployeeQueable());
        Test.stopTest();
        List<Employee__c> updatedEmployees = [SELECT First_Name__c, Email__c FROM Employee__c];
        System.assertEquals(employees.size(), updatedEmployees.size(), 'Number of updated Employees are not Same !');
    }
}