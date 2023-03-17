public class Homework_5 {
    public static void show(){
        SObject obj = New Employee__C();
        
        obj.put('First_Name__C', 'Michael');
        obj.put('Last_Name__C', 'Rogers');
        obj.put('country__C', 'GER');
        obj.put('Email__C' ,'jshdshjd@examle.com');
        obj.put('Salary__c',  150000.00);
                
        Employee__C emp  = (Employee__C) obj;
        
        system.debug(emp);
    }

}