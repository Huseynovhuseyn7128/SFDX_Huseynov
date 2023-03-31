public class EmployeeDetails2 {
    public static void HumanResources(List<string>names,List<string>fnames,List<string>emails){
        if ( names.size()==fnames.size()&& fnames.size() == emails.size()){
            List<Employee__c> employees = New List<Employee__c>();
        		Department__c dep = [Select id from Department__c where Name__c= 'Human Resources' limit 1];
        
             for(integer index = 0; index < names.size(); index++){
             Employee__c emp = New Employee__C();
       		 emp.First_Name__c = names.get(index);
       		 emp.Last_Name__c =  fnames.get(index);   
       		 emp.Email__c = emails.get(index);
             emp.Department_Name__c = dep.id; 
             employees.add(emp);
           }
        insert employees;
        }
        else{
            system.debug('Error please provide same number of details');
        }
        		
        
    }
    public static void ProcessorEquipment(List<string>names,List<string>fnames,List<string>emails){
           if ( names.size()==fnames.size()&& fnames.size() == emails.size()){
            List<Employee__c> employees = New List<Employee__c>();
        		Department__c dep = [Select id from Department__c where Name__c= 'Process or Equipment' limit 1];
        
             for(integer index = 0; index < names.size(); index++){
             Employee__c emp = New Employee__C();
       		 emp.First_Name__c = names.get(index);
       		 emp.Last_Name__c =  fnames.get(index);   
       		 emp.Email__c = emails.get(index);
             emp.Department_Name__c = dep.id; 
             employees.add(emp);
           }
        insert employees;
        }
        else{
            system.debug('Error please provide same number of details');
        }
        
    }
    public static void InformationTechnology(List<string>names,List<string>fnames,List<string>emails){
        		   if ( names.size()==fnames.size()&& fnames.size() == emails.size()){
            List<Employee__c> employees = New List<Employee__c>();
        		Department__c dep = [Select id from Department__c where Name__c= 'IT' limit 1];
        
             for(integer index = 0; index < names.size(); index++){
             Employee__c emp = New Employee__C();
       		 emp.First_Name__c = names.get(index);
       		 emp.Last_Name__c =  fnames.get(index);   
       		 emp.Email__c = emails.get(index);
             emp.Department_Name__c = dep.id; 
             employees.add(emp);
           }
        insert employees;
        }
        else{
            system.debug('Error please provide same number of details');
        }
}
}