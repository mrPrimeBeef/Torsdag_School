package Task4;

public class Main {
    public static void main(String[] args) {

        Circle circle1 = new Circle(5);
        Square square1  = new Square(5);
        Square square2  = new Square(100);

        Shapebuilder shaper = new Shapebuilder();

        System.out.println(circle1.getArea());
        System.out.println(square1.getArea());

        shaper.addShapes(circle1);
        shaper.addShapes(square1);
        shaper.addShapes(square2);

        System.out.println(shaper.getTotalArea());

    }
}
