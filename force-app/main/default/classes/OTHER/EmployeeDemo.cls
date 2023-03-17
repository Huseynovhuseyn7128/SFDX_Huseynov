public virtual with sharing class EmployeeDemo {
String empCode;
String empName;
Decimal Salary;



public EmployeeDemo(String empCode, String empName, Decimal salary){

    this.empcode = empcode;
    this.empname = empName;
    this.Salary = Salary;

}

public String getempCode(){
    return empcode;
}
public String getempName(){
    return empname;
}
public decimal getSalary(){
    return salary;
}




   
}