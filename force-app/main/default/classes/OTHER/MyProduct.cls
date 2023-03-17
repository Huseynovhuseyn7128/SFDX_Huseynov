public with sharing class MyProduct {

    String prodName;
    Decimal rate;
    Decimal quantity;
    Final Integer hiddencost =  10;

    public void SetprodName(String prodName){
        this.prodName = prodName;
    } 

    public void Setrate(Decimal rate){
        this.rate = rate;        
    }

    public void Setquantity(Decimal quantity){
        this.quantity = quantity;        
    }

    public String GetprodName(){
        return prodName;        
    } 

    public Decimal Getrate(){
        return rate;
    }

     public Decimal Getquantity(){
       return quantity; 
    }

    public Integer Gethiddencost(){
        return hiddencost;
    }

    public decimal getTotal(){

        return  rate * quantity + hiddenCost;

    }
  
}