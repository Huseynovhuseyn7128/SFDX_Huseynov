// syntax of any Batch Apex class
// Class Name will vary

public class MyAccountsBatch implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext cx){
        String query = 'Select ID , Name, Site From Account';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext cx, List<Account> accounts){
    }
    
    public void finish(Database.BatchableContext cx){
    }
}