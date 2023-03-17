public with sharing class AccountTriggerHandler {
    public static void newAccounttypeProspect(List<Account> newAccounts){
        List<Account> accountList = newAccounts;
        for(Account acc: accountList){
            if(acc.Type == null){
                acc.Type = 'Prospect';
            }
        }
    }
    public static void shippingandbilling(List<Account> newAccounts){
         List<Account> accounts = newAccounts;
    For (Account acc:accounts){
        if(acc.Shippingstreet  == null){
             acc.Shippingstreet = acc.BillingStreet ;
        }
    }
    }
    public static void ErrorDublicateAccount(List <Account> newAccounts){
        List <String> names = New List <String>();
        for (Account Acc : newAccounts){
         names.add(acc.Name);
        }
        List<Account> accounts = [Select id from account where Name in:names];
            if (accounts.size()>0){
                newAccounts.Get(0).addError ('Trigger:  Dublicate name Added');
            }          		
    }
    public static void NewContactWithSamePhoneNumber(List <Account> newAccounts){
        List <Account> accountList = newAccounts;
        	List <Contact> contactList = New List <Contact>();
        for (Account acc:accountList){
            if (acc.phone!=null){
              Contact cont = New Contact(FirstName = acc.Name,LastName = 'Contact', AccountID = Acc.ID, phone = acc.phone);
                
              contactList.Add(cont);  
            }	    
        }
      	Insert contactList;
    }
    public static void ActiveAccountCannotdeleted (List<Account> oldaccounts){
        List <Account> deletedaccounts = oldaccounts;
        for (Account delacc : deletedaccounts){
            if (delacc.Active__C == 'Yes'){
                delacc.addError('Active Accounts cannot be deleted');
            }
        }
    }
    public static void Cannotdeleteassosiatedaccountsandopp(Map<Id,Account> oldmapAccounts){
        List<Id> accIds = new List<Id>();
        accIds.addAll(oldmapAccounts.keySet());
        List<Contact> contacts = [SELECT Id FROM Contact WHERE AccountId IN :accIds];
        List<Opportunity> opps = [SELECT Id FROM Opportunity WHERE AccountId IN :accIds];
        if(contacts.size() > 0 && opps.size() > 0){
            Trigger.old.get(0).addError('Sorry, you cannot delete this record because it is associated with contacts and opportunities.');
         
        }
    }
    public static void TransferOpptoTemporaryAccount(List <Account> oldAccounts){
        List <Opportunity> relatedopps = [Select id, Name  from Opportunity where AccountId =:oldaccounts.get(0).id ];
        List <Account> newAcc = [Select id from account where Name = 'Temporary Account' limit 1 ];
        
        if (relatedopps.SIZE()>0){
            
            System.debug(relatedopps.SIZE());
            System.debug(newAcc.SIZE());
            
                for(Opportunity opp:relatedopps){
                    for (Account acc: newAcc){
                opp.AccountID = acc.Id;
            }
 			update 	relatedopps;
            }     
        }
    }
    public static void Deleterelatedoppandcont(List <Account> oldaccounts){
        List<id>ids = New List<id>();
        List<Account> accounts = oldaccounts;
        for (Account acc:Accounts){
            ids.add(acc.id);
        }
        List <Contact> contacts = [Select id, AccountId from Contact where AccountID in:ids];
        List <Opportunity> Opportunities = [Select id, AccountId from Opportunity where AccountID in:ids];
        List <Sobject> Realtedobjects = New List <Sobject>();
        Realtedobjects.addAll(contacts);
        Realtedobjects.addAll(Opportunities);
        
        Delete Realtedobjects;

        
    }
    public static void SendEmailwhenrestored(List <Account> newAccounts){
            List <Contact> contacts = [Select id,Name,Email from Contact Where Email <> null and  AccountId =: newAccounts];
        List<Messaging.SingleEmailMessage> mylist = New List<Messaging.SingleEmailMessage>();
        for (Contact con:Contacts){
          
          Messaging.SingleEmailMessage msga =  new messaging.SingleEmailMessage();
            msga.setSubject(con.Name + ' restored'); 
            msga.setToAddresses(new List<String>{con.Email}) ;
            msga.setPlainTextBody(con.Name + 'has been Restored');
            mylist.add(msga);
        }
          messaging.sendEmail(mylist);
    }
    public static void edirDescription(List <Account> newAccounts,List <Account> oldAccounts){
        For(Account acc:oldAccounts){
           For(Account acct:newAccounts){
           
           if (acc.Rating !=acct.Rating ||acc.Ownership !=acct.Ownership ||acc.Industry !=acc.Industry){
             acct.description = 'Rating '+ acc.rating + ' changed to '+ acct.Rating +', Ownership '+ acc.Ownership + ' changed to '+ acct.Ownership + ', Industry '+ acc.Industry + ' changed to '+ acct.Industry;
               
           }
        	
        
         }
      
    
      }  
    }
    public static void Cannotdeleteaccwithopp(List <Account> oldAccounts){
      if (trigger.isbefore && trigger.isdelete){
        List<Opportunity> relatedOpplist = [Select id from Opportunity where AccountId in: oldAccounts];
        if (relatedOpplist.size() != 0){
            Trigger.Old[0].addError('An account with opportunity can not be deleted');
        }
      }   
    }
    public static void UpdatesumofOpp(List <Account> newAccounts){
         List<opportunity> opportunities = [Select id, amount from opportunity where StageName = 'Closed Won' and  accountid =: newAccounts.get(0).id];
		Decimal sumofAmount = 0	;
        for (Account acc : newAccounts){
            for(Opportunity opp : opportunities ){
                sumofAmount +=opp.Amount;
               
            }
             acc.AnnualRevenue = sumofAmount;
        }
        

    }
    
    }