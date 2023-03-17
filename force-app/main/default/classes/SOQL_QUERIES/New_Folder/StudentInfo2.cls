public with sharing class StudentInfo2 {
    public Static void show () {

        List<Student__C> student = [Select Name, Last_Name__C, Age__C, Gender__C from Student__C order by Age__C ASC];

        for (Student__C temp:student){

            System.debug ('Student Name: '+ temp.Name + ' Student Last Name: ' + temp.Last_Name__c);
            System.debug ('Student Age: '+ temp.Age__C);
            System.debug ('Student Name: '+ temp.Gender__C);
            System.debug ('=======================');
        }

    }
  
}