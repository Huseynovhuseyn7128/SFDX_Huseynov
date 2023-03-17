trigger OppNew on Opportunity (before insert,before update) {
    for(Opportunity opp : trigger.new){
        opp.LeadSource = 'Web';
    }

}