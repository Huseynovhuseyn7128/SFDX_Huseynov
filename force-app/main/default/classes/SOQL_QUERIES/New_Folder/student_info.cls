public with sharing class student_info {
    public static void show () {

        list <Student__C> mylist = [Select First_Name__c, Last_Name__c,Age__c,Joining_Date__c from Student__c limit 5];
        for (Student__C temp : mylist){
            system.debug ('Name : '+ temp.First_Name__c + ', Last Name: '+ temp.Last_Name__c);
            system.debug ('Age : '+ temp.Age__c);
            system.debug ('Joining Date : '+ temp.Joining_Date__c);
            system.debug ('==============');

        }
    }
}