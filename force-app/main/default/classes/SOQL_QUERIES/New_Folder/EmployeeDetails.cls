public class EmployeeDetails {
    public static  void forInformationTechnology (List<String>Names ,List<String>LastNames , List<String>Email){
      Employee__C emp = New Employee__C();
        emp.First_Name__C = '';
            emp.Last_Name__C = '';
               emp.Email__C = '';
        INSERT EMP;
        
    }
    Public static void forFinanceandAccounting(List<String>Names ,List<String>LastNames , List<String>Email){
        List<Employee__C>  emp1 = New List<Employee__C>();
        INSERT EMP1;
    }
    Public static void forProductionEngineering(List<String>Names ,List<String>LastNames , List<String>Email){
        List<Employee__C> emp2 = New List<Employee__C>();
        INSERT EMP2;
    }
    Public static void forQualityAsurance(List<String>Names ,List<String>LastNames , List<String>Email){
        List<Employee__C> emp3 = New List<Employee__C>();
        INSERT EMP3;
    }
    

}