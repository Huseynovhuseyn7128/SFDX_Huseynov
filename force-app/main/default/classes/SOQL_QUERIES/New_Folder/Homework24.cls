public class Homework24 {
    public static void show(){
        employee__C employee = New Employee__C(First_Name__C = 'Tony1', Last_Name__C = 'Stark');
        
        database.insert(employee);
        
        Employee__c emp = [Select Id from Employee__c where First_Name__C = 'Tony1' and Last_Name__c = 'Stark' limit 1];
        
        database.delete(emp);
        
		List<Employee__c> undeleteemp = [Select Id from Employee__c where First_Name__C = 'Tony1' and Last_Name__c = 'Stark'  ALL Rows ];
        
        database.undelete(undeleteemp);        
        
    }

}