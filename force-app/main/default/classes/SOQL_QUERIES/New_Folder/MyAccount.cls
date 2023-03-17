public class MyAccount {
    public static void show(){
        List<Account> myaccounts = [SELECT Name, Type, Phone FROM Account];

        for(Account acc : myaccounts){
            System.debug('Account Name : '+acc.Name);
            System.debug('Account Type : '+acc.Type);
            System.debug('Phone Number : '+acc.Phone);
            System.debug('==============================');
        }
    }
}