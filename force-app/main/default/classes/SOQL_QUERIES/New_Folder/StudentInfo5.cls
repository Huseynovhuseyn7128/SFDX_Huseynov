public with sharing class StudentInfo5 {
    public Static Void show() {
        List<Student__C> student = [Select Name, Last_name__C, Gender__c 
        From Student__C 
        where CreatedDate = Last_Week];

        for(Student__C temp:student){
            system.debug ('Student Name: '+ temp.Name + ' Last NAme: '+ temp.Last_Name__C);
            System.debug ('Age: ' + temp.gender__C);
        }

    }
}