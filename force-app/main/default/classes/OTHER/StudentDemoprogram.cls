public with sharing class StudentDemoprogram {

    Public static  void show(){


    StudentDemo obj = New StudentDemo('101', 'Peter', New List<Decimal>{75.5,56.0,80.5,70.0,58.5});
    System.debug ('Admission Code: '+ obj.getAdmissionNo());
    system.debug ('Student Name: '+ obj.getStudentName());
    system.debug ('Marks1: ' + obj.getMarks());
    system.debug ('Total Marks: '+ obj.getTotalMarks());
    system.debug ('Aarage Marks: '+ obj.getAverageMarks());


    System.debug ('*********');

    StudentDemo obj2 = New StudentDemo('105', 'David', New List<Decimal>{70.5,51.0,60.5,60.0,68.5});
    System.debug ('Admission Code: '+ obj2.getAdmissionNo());
    system.debug ('Student Name: '+ obj2.getStudentName());
    system.debug ('Marks2: ' + obj2.getMarks());
    system.debug ('Total Marks: '+ obj2.getTotalMarks());
    system.debug ('Aarage Marks: '+ obj2.getAverageMarks());


   
   }
}