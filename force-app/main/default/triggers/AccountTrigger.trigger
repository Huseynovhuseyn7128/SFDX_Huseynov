trigger AccountTrigger on Account (before insert) {
    
    For (Account acc : Trigger.New){
        acc.Description = 'This Account created by Huseyn Huseynov';
        acc.Website = 'www.hjuseynov.com';
    }

}