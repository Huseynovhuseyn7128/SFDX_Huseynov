trigger M11_Homework5 on Account (before insert) {
    List<Account> accounts = trigger.new;
    For (Account acc:accounts){
        if(acc.Shippingstreet  == null){
             acc.Shippingstreet = acc.BillingStreet ;
        }
    }
   
}