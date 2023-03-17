public class Homework20 {
    public static void show(){
        Integer age=1;
        List<Classroom__C> allinfo = [Select Id,Name,Standard__C From Classroom__C];
        List <Student__C> mylist = New List <Student__C>();
        For (Classroom__C temp:allinfo){
            Student__C student = New Student__c();
            student.First_Name__C = 'David';
            student.Last_Name__C = 'Johnson';
            student.Gender__C = 'Male';
            student.age__c = age;
            age++;
            student.Classroom__c = temp.ID;
           mylist.add(student);
        }
          System.debug( mylist);

    }

}