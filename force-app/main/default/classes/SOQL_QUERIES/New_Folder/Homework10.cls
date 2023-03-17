public class Homework10 {
    public static void show(){
        List <Classroom__C> cls = [Select Id from Classroom__C where Standard__C = '10' limit 1];
        
        Student__C student = new Student__C();
        student.First_Name__c = 'John';
        student.Last_Name__c = 'Wick';
        student.Joining_Date__c = date.today();
        Classroom__C clsr = cls[0];
        student.Classroom__c = clsr.ID;
        
        INSERT student;
        
        System.debug ('ID of inserted student:'+ student.ID);
        
        
        
        
        
    }

}