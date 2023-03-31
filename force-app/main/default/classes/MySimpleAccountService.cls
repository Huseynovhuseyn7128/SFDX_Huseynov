public class MySimpleAccountService {
     public static List<Account> getAccounts(){
        return [SELECT Id, Name, Type FROM Account WITH SECURITY_ENFORCED];
    }
    
    public static List<Account> createAccount(String name, Integer num){
        if(num > 0){
            List<Account> accounts = new List<Account>();
            for(Integer i=1; i<=num; i++){
                Account acc = new Account(Name=name+' '+i);
                accounts.add(acc);
            }
            INSERT as USER accounts;
            return accounts;
        }
        else{
            return null;
        }
    }
}