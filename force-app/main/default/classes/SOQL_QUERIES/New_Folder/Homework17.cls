public class Homework17 {
    public static void  show(){
        Employee__C  emp = new Employee__C();
        emp.First_Name__C = 'Robert';
        emp.Last_Name__c = 'Jackson';
        Insert emp;
        
        Employee__C delemp = [Select ID from Employee__C where First_Name__C = 'Robert' and Last_Name__c = 'Jackson' limit 1];
        DELETE delemp;
        
         List <Employee__C> employee = [Select ID, First_Name__C from Employee__C 
                                        where isdeleted = true and First_Name__C IN ('Robert') and 
                                        Last_Name__C IN('Jackson') All ROWS]; 
        
         UNDELETE employee;
    }

}