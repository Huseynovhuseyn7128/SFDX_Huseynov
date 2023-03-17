trigger EmployeeTrigger on Employee__c (before insert, after insert, before delete , after delete) {
    
    if  (Trigger.isbefore && Trigger.isDelete){
        List <Department__c> relateddepartments = [Select id from Department__c where Head_of_department__C = :Trigger.old];
        
        if (relateddepartments.size() > 0 ) {
            Trigger.old.get(0).addError('This record cannot be deleted');
        }
        
    }

}