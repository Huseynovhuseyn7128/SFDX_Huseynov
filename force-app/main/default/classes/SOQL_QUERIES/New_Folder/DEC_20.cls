public with sharing class DEC_20 {
    public static void show () {

        list <Employee__C> mylist = [Select name, Last_Name__C from Employee__C Limit 5];

        for (Employee__C temp:mylist ){


        system.debug ('First Name '+ temp.name);
            System.debug('Last Name '+ temp.Last_Name__c);
            system.debug('-------');
       }

    }
}