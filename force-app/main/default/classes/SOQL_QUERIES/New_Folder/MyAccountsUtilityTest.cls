@IsTest 
public class MyAccountsUtilityTest {
    @testSetup static void mysetup(){
        Account  acc = new Account(name = 'Account 1');
        insert acc;
        
    }
    
    
    
    
    @IsTest
    public static void createAccountTest1(){
        Test.startTest();
        Account acc = MyAccountsUtility.createAccount('Yoll');
        Test.stopTest();
        //System.assert(acc.Name == 'Yoll', 'Account Name is not correct!');
        System.assertEquals('Yoll', acc.Name, 'Account Name is not correct!');
        System.assertNotEquals(null, acc.Id, 'Account not created!');
        System.debug('Debug 1 =>'+ [Select id from account].size());
    }
    
    @IsTest
    public static void createAccountTest2(){
        Test.startTest();
        Account acc = MyAccountsUtility.createAccount(null);
        Test.stopTest();
        System.assert(acc == null, 'Account is not coming null for null value!');
        System.debug('Debug 2 => '+ [Select id from account].size());
    }
    
    @IsTest
    public static void getAllAccountsTest(){
        Account acc1 = new Account(Name='Test 1');
        Account acc2 = new Account(Name='Test 2');
        List<Account> accountList = new List<Account>();
        accountList.add(acc1);
        accountList.add(acc2);
        INSERT accountList;
        
        Test.startTest();
        List<Account> accounts = MyAccountsUtility.getAllAccounts();
        Test.stopTest();
        
        System.assertEquals(3, accounts.size(), 'Number of Accounts present is not matching');
        System.debug('Debug 3 =>'+ [Select id from account].size());
    }
}