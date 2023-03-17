public with sharing class MyProductProgram {

    Public static void show(){

        MyProduct obj = New MyProduct();   

        obj.SetprodName('Table');
        obj.Setrate(25.75);
        obj.Setquantity(100);
        System.debug(' Name: ' + obj.GetprodName());
        System.debug(' Rate ' + obj.Getrate());
        System.debug(' Quantity ' + obj.Getquantity());
        System.debug(' Hidden Cost ' + obj.Gethiddencost());
        System.debug(' Total Price ' + obj.getTotal());

    }
}