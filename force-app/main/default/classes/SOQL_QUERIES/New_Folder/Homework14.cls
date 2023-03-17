public class Homework14 {
    public static void show(){
        Student__C student = New Student__C();
        student.First_Name__c = 'Emma';
        student.Last_Name__c = 'Watson';
        student.Age__c = 11;
        
        Classroom__C clss =[select id from Classroom__C where Standard__C = '6' limit 1];
        student.Classroom__c = clss.id;
        INSERT student;
        
        Student__C student2 = New Student__C ();
         student2.First_Name__c = 'Angelina';
        student2.Last_Name__c = 'Jolie';
        student2.Age__c = 13;
        Classroom__C clss2 =[select id from Classroom__C where Standard__C = '8' limit 1];
        student2.Classroom__c= clss2.id;
        
        Student__C updatestudent = [Select Id from Student__C where First_Name__C = 'Emma' limit 1];
        updatestudent.Gender__c = 'Female';
        
        List<Student__C> mylist = New List<Student__C>();
        mylist.add(updatestudent);
        mylist.add(student2);
        
        UPSERT mylist;
        
        system.debug (mylist);
        
        
        
        
        
    }

}