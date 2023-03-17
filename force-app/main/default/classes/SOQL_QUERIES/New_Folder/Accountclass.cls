public class Accountclass {
    public static void accountListwitholdValues(List<Account>ListA){
        
        
        for (Account acc :ListA){
            System.debug ('Old NAme '+acc.Name);
            System.debug ('Old Type '+acc.Type);
            System.debug ('old Rating '+acc.Rating);
            System.debug ('old Active '+acc.Active__c);
        }
        
    }
      public static void accountListwithNewValues(List<Account>ListB){
       
        
        for (Account acc :ListB){
            System.debug ('NEW NAme '+acc.Name);
            System.debug ('NEW Type '+acc.Type);
            System.debug ('NEW Rating '+acc.Rating);
            System.debug ('NEW Active '+acc.Active__c);
        }
        
    }

}