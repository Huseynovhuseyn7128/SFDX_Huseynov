public class MyAccountsUtility {
    public static Account createAccount(String name){
        if(name != null){
        	Account acc = new Account(Name=name);
        	INSERT acc;
        	return acc;    
        }
        else{
        	return null;    
        }
    }
    
    public static List<Account> getAllAccounts(){
        return [SELECT Id, Name FROM Account];
    }
}