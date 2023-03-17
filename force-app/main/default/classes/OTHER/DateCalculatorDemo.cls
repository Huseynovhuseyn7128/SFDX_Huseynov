public with sharing class DateCalculatorDemo {
    Date startDate;
    Date endDate;
    
    public void setStartDate (date startDate){
        this.startdate = startdate;
    }
    public void setEndDate (date EndDate){
        this.enddate = enddate;
    }
    public date getstartDate(){
        return startdate;
    }
    public date getendDate(){
        return enddate;
    }
    public  DateCalculatorDemo(){
        startdate= date.NewInstance(2022,01,01);
        endDate = date.NewInstance(2022,12,31);

    }

    public  DateCalculatorDemo(date startDate, date EndDate){
        this.startdate = startdate;
        this.endDate = endDate;
    }  

    Public Integer daysBetweenDate(){
        Integer diff1 = startDate.daysBetween(endDate);
        return diff1;
    }

    


}