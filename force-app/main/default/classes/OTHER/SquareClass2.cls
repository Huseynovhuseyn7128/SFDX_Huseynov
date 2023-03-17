public with sharing class SquareClass2 extends GeometryClass2 {

    Public  override Decimal getArea(Decimal length, Decimal breadth) {
        Decimal Area;

        area = length*breadth;

        return area;

    }
    Public override Decimal getPerimeter(Decimal length, Decimal breadth){
        decimal Peri;
        peri = 2*(length+breadth);
        return Peri;

    }


    
}