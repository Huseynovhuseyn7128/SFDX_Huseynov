public class Homework_4 {
    Public static void show(){
        Classroom__C cls = [select Id from Classroom__C Where Name = 'B' limit 1];
		System.debug(cls.id);
        
     	Student__C stu = New Student__C();
        stu.First_Name__C = 'Jenny';
        stu.Last_Name__C = 'Ron';
        stu.Age__C = 18;
        stu.Joining_Date__c = date.today();
        stu.Gender__C = 'Male';
        stu.Classroom__C = cls.Id;
        INSERT stu;
        
        
    }

}