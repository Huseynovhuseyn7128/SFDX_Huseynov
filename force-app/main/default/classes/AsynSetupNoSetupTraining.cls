public class AsynSetupNoSetupTraining {
    @future
    public static void show (String accId, String userId){
        Account acc = [Select id,Name from Account where id =: accID];
         User use = [Select id, LastName from User where id =: userId];
        acc.Name = acc.Name + '1';
        use.LastNAme = use.LastName + '1';
        update acc;
        update use;
        
    }

}