public class Assignment9 {
    
    Public static void Show(){
        
        
        Account acc = New Account();
        
        acc.Name = 'ABC corp';
        
        insert acc;
        
        List <Contact> Mylist = new  List <Contact>{
            new Contact (LastName = 'ABC Contact1', accountID = acc.id),
            new Contact (LastName = 'ABC Contact2', accountID = acc.id),
            new Contact (LastName = 'ABC Contact3', accountID = acc.id),
            new Contact (LastName = 'ABC Contact4', accountID = acc.id)
        };     
        insert mylist;
        
        
      
    }

}