public class Homework16 {
    public static void show(){
        Student__C stu = [Select Id from Student__C where First_Name__c = 'Harry' limit 1];
		Student__C student = New Student__C();
		student.Id = stu.ID;
		DELETE student;
    }

}