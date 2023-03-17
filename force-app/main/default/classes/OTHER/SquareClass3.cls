public with sharing class SquareClass3 extends GeometryClass3 {
    Public override Decimal GetArea(Decimal length,Decimal breadth){

        Decimal area  = length*breadth;
        return area;

    }
    
    Public override decimal GetPerimeter(Decimal length,Decimal breadth){
        Decimal Perimeter = 2*(length + breadth);

        return Perimeter;

    }
}