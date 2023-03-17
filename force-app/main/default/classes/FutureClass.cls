public class FutureClass {
    public static void createProfile(){
         Account acc = new Account(Name='Yoll Account');
        INSERT acc; 
        crateUser();
    }
    
        @future
        public static void crateUser(){ 
        Profile pr = [SELECT Id FROM Profile WHERE Name = 'Standard Platform User' LIMIT 1];
        UserRole ur = [SELECT Id FROM UserRole WHERE Name = 'Marketing Team' LIMIT 1];
    	
    
    
		
               
 
        User u = new User();
        u.alias = 'sfplus2';
        u.lastname = 'Sample User';
        u.email = 'Alejandrooo7128@gmail.com';
        u.username = 'sampleuser71281@yoll.io';
        u.profileid = pr.id;
        u.userroleid = ur.id;
        u.emailencodingkey = 'UTF-8';
        u.languagelocalekey = 'en_US';
        u.localesidkey = 'en_US';
        u.timezonesidkey = 'America/Los_Angeles';
        
        INSERT u;
           }
        }