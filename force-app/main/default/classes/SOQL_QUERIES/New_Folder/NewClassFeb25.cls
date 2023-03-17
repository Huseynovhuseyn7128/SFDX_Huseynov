public class NewClassFeb25 {
    public static void show(){
        
    String que = 'SELECT Id, First_Name__c, Last_Name__c, Email__c, Department_Name__r.Name__c  FROM Employee__c WHERE SALARY__C > 200000 ';    
    
    Database.query(que , Accesslevel.USER_MODE);
       Employee__C emp = New Employee__C(First_Name__c = 'Joe', Last_Name__C= 'Doe', Email__C = 'Example@example.com', Salary__C = 150000) ;  
       Database.insert(emp);    
    } 
}