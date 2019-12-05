
public virtual class Rectangle extends Shape {
   public double height {get; set;}
   public double width {get; set;}

    //Initialization blocks are denoted by stand-alone curly braces
    {
        setNumberOfSides(4);
    }
   public Rectangle(){
        height = 0.0;
        width = 0.0 ;
        setNumberOfSides(4);
   }

   public Rectangle(double height, double width) {
       this.height = height;
       this.width = width;
       setNumberOfSides(4);
   }

    public void draw() {
        System.debug(' drawing a rectangle');
    }

     public double caculateArea() {
        return height * width;
    }

     public double calculatePerimeter() {
        return 2*(height + width);
    }
}
