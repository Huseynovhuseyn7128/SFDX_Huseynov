public with sharing class ExecutiveDemo extends EmployeeDemo{

    List<String> skills;

    public ExecutiveDemo (String empCode, String empName,  Decimal salary, List<String> skills){

        super(empCode, empName, salary );
        this.skills = skills;

    }

    public List<String> getskills(){
        return skills;
    }
    
}