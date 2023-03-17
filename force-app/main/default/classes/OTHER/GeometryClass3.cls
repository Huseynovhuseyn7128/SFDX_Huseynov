public virtual with sharing class GeometryClass3 {

    Decimal length, breadth;

    public decimal GetLength(){
        return length;
    }
    public decimal getBreadth(){
        return breadth;
    }

    public void Setlength(Decimal length){
        this.length = length;

    }
    public void SetBreadth(Decimal breadth){
        this.breadth = breadth;

    }

    Public virtual decimal getArea(Decimal length,Decimal breadth){
        system.debug ('Method to Return Area');
        return null;

    }
    Public virtual decimal GetPerimeter(Decimal length,Decimal breadth){
        system.debug ('Method to Return Perimeter');

        return null;

    }




    
    
}