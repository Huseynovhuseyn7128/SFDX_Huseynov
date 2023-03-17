public class Employee {
    decimal Hourlywage;
    Integer numberofhours;
    Decimal salary;
    public void getInfo (Decimal Hourlywage,Integer numberofhours  ){
        this.Hourlywage = Hourlywage;
        this.numberofhours = numberofhours;
        Salary = Hourlywage*numberofhours;   
    }
   /* 
    public void AddSal(){
        if (Salary<500){
            Salary = salary + 10;
        }
        
    }
    public void AddWork(){
        
        if (numberofhours >6){
            Salary = salary+5;
        }

    }
	*/
    public void show (){
        
        System.debug (Salary);
    }
}