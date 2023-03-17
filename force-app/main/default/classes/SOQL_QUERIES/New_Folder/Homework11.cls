public class Homework11 {
    public static void show(){
        List <employee__C> employee = [Select ID from Employee__c where First_Name__C = 'Dwayne' Limit 1];
        Employee__C emp = employee[0];
        emp.Email__C = 'dwayne@johnson.com';
        emp.Country__C = 'UK';
		UPDATE emp;        
    }
    
    public static void Homework12(String UpdateGender, Integer UpdateAge){
        
        List<Student__C> student = [Select Id from Student__C where First_Name__C = 'John' Limit 1];
        
        Student__C stu = student[0];
        stu.Gender__C = UpdateGender;
        stu.Age__C = UpdateAge;
        
        UPDATE stu;
        
        
    }

}