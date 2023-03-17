public with sharing class Student {
    Integer a;
    String str;
    Date d;

    public  Student(){
        a= 10;
        str = 'USA';
        d = date.NewInstance(2022,10,10);
    }

    public  Student (Integer a){
        this.a = a;
        
    }
    public  Student (Integer a, String str){
        this.a = a;
        this.str = str;
        
        
    }

    public  Student (Integer a, String str,date d){
        this.a = a;
        this.str = str;
        this.d = d;
        
    }

    Public void show(){
        system.debug (a);
        system.debug (str);
        system.debug (d);

    }


    
    
}