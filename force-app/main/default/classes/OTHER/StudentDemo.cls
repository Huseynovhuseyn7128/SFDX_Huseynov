public  with sharing class StudentDemo {

    String admNo;
    String studName;
    List<Decimal> marks;
  

    Public StudentDemo(String admNo, String studName, List<Decimal> marks ){

        this.admNo = admNo;
        this.studName = studName;
        this.marks = marks;
        

    }

    public String getAdmissionNo(){

        return admNo;

    }
    public String getStudentName(){

        return studName;

    }
    public List<Decimal> getMarks(){

        return marks;
    } 

    public decimal getTotalMarks(){
         Decimal Total=0;
        for(Decimal  temp:marks){
          
            total += temp;
            
        }
        return total;
     
    }
    public decimal getAverageMarks(){
        Decimal Total=0;
        for(Decimal  temp:marks){
          
            total += temp;
            
        }

       return total/marks.size();
    
   }
   

    }