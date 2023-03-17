public with sharing class Studentinfo4 {
    public Static void show() {

        List<Student__C> student = [Select Name, Last_name__C, Age__c 
        From Student__C 
        Order by Age__C 
        desc limit 1
        offset 1];

        for(Student__C temp:student){
            system.debug ('Student Name: '+ temp.Name + ' Last NAme: '+ temp.Last_Name__C);
            System.debug ('Age: ' + temp.Age__C+  ' years');
        }



    }
}