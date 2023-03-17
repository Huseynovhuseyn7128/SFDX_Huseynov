@IsTest
public class NewAccountUtility3Test {
    


	@IsTest
    static void updateAccountTest1(){
        Account acc = new Account(Name='Test Account');
        INSERT acc;
        Test.startTest();
        Account updatedAccount = NewAccountUtility3.updateAccount(acc.Id, 25000);
        Test.stopTest();
        System.assertEquals(25000, updatedAccount.AnnualRevenue, 'Annual Revenue not updated!');
        System.assertEquals(acc.Id, updatedAccount.Id, 'Method not updating correct account!');
    }
    
    @IsTest
    static void updateAccountTest2(){
        Test.startTest();
        Account updatedAccount = NewAccountUtility3.updateAccount('0012w00001FxYgwAAF', 25000);
        Test.stopTest();
        System.assertEquals(null, updatedAccount, 'Not returning null for wrong ids');
    }
    
}