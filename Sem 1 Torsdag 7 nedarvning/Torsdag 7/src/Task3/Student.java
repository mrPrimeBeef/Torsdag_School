package Task3;

import java.util.ArrayList;

public class Student extends Person{
    ArrayList<String> passedCourses = new ArrayList<>();
    ArrayList<String> currentCourses = new ArrayList<>();
    public Student(String name,ArrayList<String> passedCourses) {
        super(name);
        this.passedCourses = passedCourses;
    }

    @Override
    public boolean addCourse(String course) {
        for (String element : passedCourses){
            if (!element.equals(course)){
                currentCourses.add(course);
            }
            return true;
        }
        return false;
    }

}
