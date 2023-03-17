public with sharing class Home41 {
    public static void show() {

        List<Student__C> student = [Select Name, Last_Name__C,(Select Exam_Name__C,Date_of_exam__C,Marks_Obtained__C,Total_Marks__C from Exam_Details__R) 
        
                                       From Student__C];

        for (Student__C temp:student){
            System.debug ('Student First Name ' + temp.Name);
            System.debug('*******');
            for(Exam_Detail__C det:temp.Exam_Details__R){
                System.debug('Date of Exam: '+ det.Date_of_exam__C);
                system.debug ('Marks: '+ det.marks_Obtained__C+ '/' + det.Total_Marks__C);
                System.debug('*****');
            }
        }

    }
}