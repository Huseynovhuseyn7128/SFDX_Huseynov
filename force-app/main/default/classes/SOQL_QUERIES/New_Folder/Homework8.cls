public class Homework8 {
    public static void show(){
    Student__C student = New Student__C();
    student.First_Name__c = 'Harry';
    student.Last_Name__c = 'Potter';
    student.Age__c = 11;
    student.Joining_Date__c = date.today();
    student.Gender__c = 'Male';
     Classroom__c cls = [Select ID from Classroom__C Limit 1];
        
    student.Classroom__C = cls.Id;    
        INSERT student;
        List<Sobject> mysob = [Select ID , First_Name__C from Student__C where First_Name__C = 'Harry'];
        For (Sobject temp:mysob ){
            Student__C stu = (Student__C) temp;
            
        if (stu.First_Name__C == 'Harry'){
            stu.Age__C = 12;
            UPDATE mysob;
           }
        }
    		System.debug('Updated list:'+ mysob);
    }
}