public class MyEmployeeQueable implements Queueable {
    public void execute (QueueableContext qx){
        list<Employee__C> employees = [Select First_Name__C,Email__c from Employee__C where Email__c = null];
        for (Employee__C emp:employees){
            String fname = emp.First_Name__C;
            emp.Email__C = fname.toLowerCase()+'@yoll.io';
            
        }
        update employees;
    }
}