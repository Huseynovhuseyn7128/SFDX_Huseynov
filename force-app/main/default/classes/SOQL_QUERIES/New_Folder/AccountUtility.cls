public with sharing class AccountUtility {
    public static void viewAnnualRevenue(){

        String query = 'Select Name, AnnualRevenue from Account';

        List <Account> accountslist = Database.query(query);

        for (Account temp: accountslist){
            System.debug (temp.Name);
            System.debug (temp.AnnualRevenue);
            
        }

    }
}