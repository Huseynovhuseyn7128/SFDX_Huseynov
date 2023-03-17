public class Assignment3 {
    public static void show(){
       
        try{
			System.debug([SELECT Id, First_Name__c, Last_Name__c, Salary__c, Department_Name__c FROM Employee__c with Security_Enforced]);    
        }
        catch(QueryException qe){
            System.debug(qe.getCause());
            System.debug(qe.getLineNumber());
            System.debug(qe.getMessage());
            System.debug(qe.getInaccessibleFields());
     
}
    }

}