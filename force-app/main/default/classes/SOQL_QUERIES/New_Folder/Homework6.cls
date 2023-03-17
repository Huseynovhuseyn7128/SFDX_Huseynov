public class Homework6 {
    public static  void show(){
        
      SObject obj = New Student__C(First_Name__C = 'Noah', Last_Name__C = 'Rachel',
                                   Age__C= 18,Joining_Date__C = date.today(), Gender__C = 'Female');
        
       system.debug (obj);
        
        Student__C stud  = (Student__C) obj ;
        
        System.debug (stud);
        
        
    } 

}