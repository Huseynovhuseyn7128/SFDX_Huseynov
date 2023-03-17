@IsTest
public class SampleClassTest {
	@IsTest (SeeAllData=true)
    	static void show(){
            List<Account> accounts = [Select Id, Name From Account];
            System.debug (accounts);
        
    }
}