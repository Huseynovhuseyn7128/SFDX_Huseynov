public class NewAccountUtility3 {
   
    public static Account updateAccount(Id accId, Decimal annualRevenue){
        List<Account> accounts = [SELECT Id, AnnualRevenue FROM Account WHERE Id = :accId];
        if(accounts.size() > 0){
            Account acc = accounts[0];
            acc.AnnualRevenue = annualRevenue;
            UPDATE acc;
            return acc;
        }
        else{
            return null;
        }
    }
    
    public static List<Account> updateAccounts(Map<Id, Decimal> accountsMap){
        List<Id> accIds = new List<Id>();
        Set<Id> ids = accountsMap.keySet();
        accIds.addAll(ids);
		List<Account> accounts = [SELECT Id, AnnualRevenue FROM Account WHERE Id IN :accIds];       
        if(accounts.size() > 0){
            for(Account acc : accounts){
                acc.AnnualRevenue = accountsMap.get(acc.id);
            }
            UPDATE accounts;
            return accounts;
        }
        else{
            return null;
        }
    }
}