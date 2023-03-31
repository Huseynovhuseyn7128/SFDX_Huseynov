public class MyAccountBatch implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
          String query = 'Select id , Name, Site from Account';
          return Database.getQueryLocator(query);
        
      }
    public void execute(Database.BatchableContext BC, list<Account> accounts){
        for (Account acc: accounts){
            acc.site = 'Site: '+acc.Name;
        }
        update accounts;
    }
    public void finish(Database.BatchableContext BC){
        
    }
}