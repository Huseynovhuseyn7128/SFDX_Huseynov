public class insertandupdate {
    public static void perform(){}
         public static void completeTask (String countryCode ){
             
             List<employee__C> employees = New List<Employee__C>();
             List<employee__C> emps = [Select Id from Employee__C where Country__C = 'AZE' ];
             
             for (Employee__C emp:emps){
                 emp.Country__c = countryCode;
                 employees.add(emp);
                 
                 
             }
             Employee__C Newemp = New Employee__C(First_NAme__C = 'Salmuel', Country__C = countrycode);
             employees.add(newEmp);
             
             UPSERT employees;
        }
        
        
    }