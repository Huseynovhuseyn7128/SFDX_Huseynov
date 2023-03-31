public with sharing class AccountUtility {
    public static void viewAnnualRevenue(){

        String query = 'Select Name, AnnualRevenue from Account';

        List <Account> accountslist = Database.query(query);

        for (Account temp: accountslist){
            System.debug (temp.Name);
            System.debug (temp.AnnualRevenue);
            
        }

    }

    Public static void databaseinsert(){  
    List <Account> accounts = new List< Account>{
                          new Account (Name = 'Account 1'),
                          new Account (Name = 'Account 2'),
                          new Account (Name = '')    
    
};
    system.database.insert(accounts,false);
 }
    
}