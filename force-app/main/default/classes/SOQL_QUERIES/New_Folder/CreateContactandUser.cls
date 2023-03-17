@IsTest
public class CreateContactandUser {
    public static void accept (String lastName){
        Contact cont = New Contact();
        cont.FirstName = 'Contact1';
        cont.LastName = lastName;
        insert cont;
    
        createUser();
     
    }
        @future 
        Public static void createUser(){
                Profile pr = [SELECT Id FROM Profile WHERE Name = 'Identity User' LIMIT 1];
        UserRole ur = [SELECT Id FROM UserRole WHERE Name = 'Eastern Sales Team' LIMIT 1];
        
        User u = new User();
        u.alias = 'sfplus2';
        u.lastname = 'Sample User';
        u.email = 'Huseynov_huseyn@hotmail.com';
        u.username = 'sampleuser1@yoll.io4545';
        u.profileid = pr.id;
        u.userroleid = ur.id;
        u.emailencodingkey = 'UTF-8';
        u.languagelocalekey = 'en_US';
        u.localesidkey = 'en_US';
        u.timezonesidkey = 'America/Los_Angeles';
        
        INSERT u;
            
        }
    }