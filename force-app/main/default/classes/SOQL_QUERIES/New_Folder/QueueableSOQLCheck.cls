public class QueueableSOQLCheck {
    public static void show(){
        QueueableSOQLTraining meq = New QueueableSOQLTraining();
        iD jobId = System.enqueueJob(meq);
        System.debug ('Job Id ' + jobId);
        
            AsyncApexJob aaj=[SELECT Id, Status FROM AsyncApexJob WHERE Id = :jobId];
            system.debug(aaj.Status);  
        
    }

}