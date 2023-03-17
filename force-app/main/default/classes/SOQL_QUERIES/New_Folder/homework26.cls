public class homework26 {
    public static void show(){
        
        Schema.DescribeFieldResult fieldResult  = Contact.Stage__C.GetDescribe();
        
        system.debug(fieldResult.getPicklistValues());
        
		
		
   
    }

}