trigger AddError on Student__c (before insert,after insert, before update, after update, before delete , after delete ) {
    
  /* if(trigger.isInsert&&trigger.isBefore){
        for(Student__C stu:Trigger.new){
            
            if(stu.Age__C > 20){
                stu.addError('Student age cannot be grater than 20');
            }
            
        }
    }*/
    
    
    if (Trigger.isbefore && Trigger.isDelete){
        List <Exam_Detail__C> examdetails = [SELECT Id  FROM Exam_Detail__c where Student__C = :Trigger.old];
        if (examdetails.size()>0){
            Trigger.Old.get(0).AddError('This student cannot be deleted');
        }

        }
    
    
    }