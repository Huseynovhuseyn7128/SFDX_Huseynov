public class QueueableTraining implements Queueable  {
    public void Execute (QueueableContext qbl){
  
        List<Account> accountsWithContacts = [SELECT Id, (SELECT Id FROM Contacts) FROM Account];
        for (Account acct : accountsWithContacts) {
            acct.Total_Number_Of_Contact__c = acct.Contacts.size();
        }
        update accountsWithContacts;
    }
}