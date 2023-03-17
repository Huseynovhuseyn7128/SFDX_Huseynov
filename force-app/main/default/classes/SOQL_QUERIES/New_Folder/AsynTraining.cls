public class AsynTraining {
   	@future (callout=true)
    public static void show (String accId){
        
       Account acc = [Select name from Account where id =:accId ];
        system.debug (acc.Name);
        
    }

}