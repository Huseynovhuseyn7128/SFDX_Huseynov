public class Accountsnew {
    

    public static void insertContactToExistingAccount(String firstName, String lastName, String accountName){
        Account acc = [SELECT Id FROM Account WHERE Name = :accountName LIMIT 1];
        Contact cont = new Contact();
        cont.FirstName = firstName;
        cont.LastName = lastName;
        cont.AccountId = acc.Id;
        INSERT cont;
    }
}