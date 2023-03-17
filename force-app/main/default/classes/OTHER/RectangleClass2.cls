public with sharing class RectangleClass2 extends GeometryClass2 {
    
    Public override Decimal Getarea(Decimal length, Decimal Breadth){
        Decimal Area;
        area = length*breadth;
        return Area;

    }
    Public override Decimal GetPerimeter(Decimal length, Decimal Breadth){
        Decimal Perimeter;
        Perimeter = 2*(length+ breadth);
        return Perimeter;

    }
    
}