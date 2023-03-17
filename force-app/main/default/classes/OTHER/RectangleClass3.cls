public with sharing class RectangleClass3 extends GeometryClass3 {

    
    

    Public override Decimal GetArea(Decimal length,Decimal breadth){

       return length*breadth;
        

    }
    
    Public override decimal GetPerimeter(Decimal length,Decimal breadth){
       return  2*(length + breadth);

        

    }

  
}