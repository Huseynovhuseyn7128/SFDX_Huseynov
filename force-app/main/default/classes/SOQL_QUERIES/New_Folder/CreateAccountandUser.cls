public class CreateAccountandUser {
    public static void create(){
        Account acc = New Account(Name = 'Yoll Account');
        insert acc;
       createUser(); 
    }
                
        
        @future
        public static void createUser(){    
        Profile pr = [SELECT Id FROM Profile WHERE Name = 'Standard Platform User' LIMIT 1];
        UserRole ur = [SELECT Id FROM UserRole WHERE Name = 'Marketing Team' LIMIT 1];

        User u = new User();
        u.alias = 'sfpluser';
		u.lastname = 'Yoll Students';
		u.email = 'huseynov_huseyn@hotmail.com';
		u.username = 'yollstu1@yoll.io5';
		u.profileid = pr.id;
		u.userroleid = ur.id;
		u.emailencodingkey = 'UTF-8';
		u.languagelocalekey = 'en_US';
		u.localesidkey = 'en_US';
		u.timezonesidkey = 'America/Los_Angeles';

		INSERT u;
        
        }
        
        
    }