public class employee23 {
    public static void show (){
        List <Classroom__C> classes = [Select id from Classroom__C];
        List <Student__C> students = new List <Student__C>();
        for (Classroom__C cls : classes){
            
            Student__C stu = New Student__C();
            stu.Classroom__c = cls.id;
            stu.First_Name__c = 'David';
            stu.Last_Name__c = 'Johnson';
            stu.Gender__c = 'male';
            stu.Age__c = 15;
            cls.Standard__c = '6';
            
            students.add(stu);
        }
        
			insert students;    
    }

}