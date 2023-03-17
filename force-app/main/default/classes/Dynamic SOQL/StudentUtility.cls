public with sharing class StudentUtility {
    public Static void  viewTheseFields (List <String> students){

            //StudentUtility.viewTheseFields( New List <String> {'First_Name__C', 'Last_Name','Age__C','Gender__C'};
        String stu = 'SELECT ID';
        for (String temp: students ){
            stu += ','+temp;  
        }
        stu += ' FROM Student__C';
        
        List <Student__C> studentList = database.query(stu);
        
        for (Student__C var:studentList){
            for (String temp: students){
              system.debug (var.get(temp));  
            }
            
            
        }

    }
  
}