public with sharing class managerDemo extends EmployeeDemo{
 

    Integer numberOfExecutives;

    public managerDemo(String empCode, String empName, Decimal salary, integer numberOfExecutives ){
        
        super( empCode, empName, salary);
        this.numberOfExecutives = numberOfExecutives;
    
    }
   
  
    public Integer getnumberOfExecutives(){
        return numberOfExecutives;
    }
    
    
}