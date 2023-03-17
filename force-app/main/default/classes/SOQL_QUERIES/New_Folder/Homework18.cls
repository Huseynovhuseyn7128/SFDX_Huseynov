public class Homework18 {
    public static void show (){
     	Student__C student = New Student__C();
        student.First_Name__c = 'Gal ';
        student.Last_Name__c = 'Gadot';
        Classroom__c cls = [Select Id from Classroom__C where Standard__C = '6'];
        student.Classroom__c = cls.ID;
        insert student;
        
        Student__C  stu = [Select Id from Student__c where First_Name__c = 'Gal ' limit 1];
        
        delete stu;
        
        List<student__C> undelstu = [Select Id  from Student__c where first_Name__C = 'Gal ' and isdeleted = true All ROWS] ;
        UNDELETE undelstu;
        
       
    }

}