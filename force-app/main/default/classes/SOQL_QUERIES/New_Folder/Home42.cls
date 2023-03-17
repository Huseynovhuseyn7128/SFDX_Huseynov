public with sharing class Home42 {
    public Static void show() {

        Integer SAl1 = 100000;
        Integer SAL2= 50000;

       List <Employee__C> Employee = [ Select Name, Last_name__C, Join_Date__c, (Select Short_Code__C from Departments__R)
       From Employee__C 
       Where Salary__C > : SAl1 or Salary__C < : Sal2];
       System.debug (Employee);
    }
}