public class StudentDCOQL {
    public static void displayStudentName (){
        Integer var = 10;
        String query = 'SELECT Name, Last_Name__c FROM Student__c limit : var';

        List<Student__c> students = Database.query(query);

        for(Student__c student : students){
            System.debug('First Name  : '+ student.Name);
            System.debug('Last Name  : '+ student.Last_Name__C);
            System.debug('====================');
        }
    }
}