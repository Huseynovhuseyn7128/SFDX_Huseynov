public class Homework19 {
    public static void show (){
        Account acc = New Account();
        acc.Name = 'ABC Corp';
        acc.Phone = '+15003664645';
        INSERT acc;
        
        
        Account acc2 = New Account();
        acc2.Name = 'ABC Corparations';
        acc2.Phone = '+100000000';
        Insert acc2;
        
        MERGE acc2 acc;
        
          List<Account> merged =  [Select Id, Name, Phone from account where Name = 'ABC Corparations'];
        
       		System.debug(merged);
        
        
    }

}