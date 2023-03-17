trigger HomeworkM11H8 on Opportunity (after insert, after update, before insert , before update) {
    
  /*  if(Trigger.IsInsert && Trigger.isAfter){
        List <opportunity> opportunities = Trigger.New;
	    List <Account> accounts = [Select Id, (Select Id from Opportunities) from Account];

	    For (Account acc:accounts ){
	         For (Opportunity opps:opportunities){


            if(opps.AccountId == Acc.id){
               Acc.Number_of_Opp__c = accounts.Size(); 
            }
          }
       }
        
    }
    if (Trigger.isBefore && Trigger.isUpdate){
           List <opportunity> opplist =  [Select id, StageName from Opportunity where StageName = 'Closed Won' and StageName = 'Closed Lost'];
            
            for (Opportunity opp:opplist){
              opp.addError('Closed won and closed lost opp cannot be changed');  
            }
        }   
   */
    if(Trigger.isUpdate && Trigger.isAfter){
      /* List <Opportunity> opps = [Select Id from Opportunity where AccountID =: Trigger.new.get(0).id]; 
       List <id> ids = New List<id>();
        for (opportunity opp:opps){
            ids.add(opp.id);
        }

		*/
        
        List <Opportunity> opps = [Select id, AccountId from opportunity];
        List <Account> accs = [Select id from account];
        List<id>ids = New List<id>();
        List <Account>accounts = New List <Account>();
        
        for (Opportunity opp:opps){
            for(Account acc:accs){
                if(opp.AccountId ==acc.id){
                  	
                 ids.add(acc.id);
                    acc.Number_of_Opp__c = ids.size();
                    Accounts.add(acc);
                }
                
            }
            
        }
         update accounts;
			       
      }
            
}