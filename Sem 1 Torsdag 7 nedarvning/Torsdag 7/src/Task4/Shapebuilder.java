package Task4;

import java.util.ArrayList;

public class Shapebuilder {
    ArrayList<Shape> shapes = new ArrayList<>();

    public Shapebuilder() {
        this.shapes = shapes;
    }

    public void addShapes(Shape s){
       shapes.add(s);
    }

    public double getTotalArea(){
        double result = 0;
        for (Shape element : shapes){
            if( element instanceof Circle){
                result += element.getArea();
            } else if (element instanceof  Square) {
                result +=  element.getArea();

            }
        }
        return result;
    }
}
