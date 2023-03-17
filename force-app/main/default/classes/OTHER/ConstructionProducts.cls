public with sharing class ConstructionProducts implements Product {

    
    Decimal Discount;
    Decimal NetPrice;



     Public String getProductName(string Name){

        return Name;


    }
     Public Decimal getDiscount(Decimal discount){
        this.discount = discount;
        
        return Discount;

    }
     Public Decimal getPrice(Decimal Price){
       
        return Netprice = price-(price*Discount)-20;
    }


   
}