trigger M11Home7 on Account (before insert ,after insert,before update,after update, before delete, after delete) {
  /*  if (Trigger.Isbefore && Trigger.isUpdate){  
  For(Account acc:Trigger.old){
       For(Account acct:Trigger.new){
           
           if (acc.Rating !=acct.Rating ||acc.Ownership !=acct.Ownership ||acc.Industry !=acc.Industry){
             acct.description = 'Rating '+ acc.rating + ' changed to '+ acct.Rating +', Ownership '+ acc.Ownership + ' changed to '+ acct.Ownership + ', Industry '+ acc.Industry + ' changed to '+ acct.Industry;
               
           }
        	
        
         }
      
    
      }  
    }
	
    if (trigger.isbefore && trigger.isdelete){
        List<Opportunity> relatedOpplist = [Select id from Opportunity where AccountId in: Trigger.Old];
        if (relatedOpplist.size() != 0){
            Trigger.Old[0].addError('An account with opportunity can not be deleted');
        }
    }
    if (trigger.IsAfter && trigger.isUpdate){
        List<Opportunity> oppList = New List<opportunity>();
        for(Account acc: [Select Id, Name from Account where id In : Trigger.new and id not in (Select AccountId from Opportunity)]){
            oppList.add(new Opportunity(Name = acc.name+' opportunity', 
                                        stageName = 'prospecting' , 
                                        closedate = date.today()+ 30,
                                        accountId = acc.id));
            
        }
        Insert oppList;
    }
*/
    
    if (Trigger.IsBefore && Trigger.IsUpdate){
        
        List<opportunity> opportunities = [Select id, amount from opportunity where StageName = 'Closed Won' and  accountid =: trigger.New.get(0).id];
		Decimal sumofAmount = 0	;
        for (Account acc : Trigger.new){
            for(Opportunity opp : opportunities ){
                sumofAmount +=opp.Amount;
               
            }
             acc.AnnualRevenue = sumofAmount;
        }
        
         
    }
   
    
}