package Task3;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        ArrayList<Person> persons = new ArrayList<>();

        ArrayList<String> studentCurrentCourses = new ArrayList<>();
        ArrayList<String> studentCurrentCourses1 = new ArrayList<>();
        ArrayList<String> teacherCurrentCourses = new ArrayList<>();
        ArrayList<String> teacherCurrentCourses1 = new ArrayList<>();
        teacherCurrentCourses.add("Java 1.0");
        studentCurrentCourses.add("Java 1.0");

        Student student1 = new Student("Rolf", studentCurrentCourses);
        Student student2 = new Student("John", studentCurrentCourses1);
        Teacher teacher1 = new Teacher("Rikke", teacherCurrentCourses);
        Teacher teacher2 = new Teacher("Lasse", teacherCurrentCourses1);


        persons.add(student1);
        persons.add(student2);

        persons.add(teacher1);
        persons.add(teacher2);

        for (Person element : persons){
            if (element instanceof Student){
                if (element.addCourse("Java 1.0")){
                    System.out.println(element.getName() + " er tilføjet til kursus");
                } else{
                    System.out.println(element.getName() + " har allerede bestået dette kursus.");
                }
            }
            if (element instanceof Teacher){
                if (element.addCourse("Java 1.0")){
                    System.out.println(element.getName() + " kan undervise");
                } else{
                    System.out.println(element.getName() + " kan ikke underviser i faget");
                }
            }
        }

    }

}