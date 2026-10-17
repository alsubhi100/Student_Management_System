void main() {
  Student student1 = Student('Abdulah', 26);
  Student student2 = Student('Omar', 19);

  StudentManager manager = StudentManager();

  manager.addStudent(student1);
  manager.addStudent(student2);

  manager.showStudents();
}

class Student {
  String name;
  int age;
  Student(this.name, this.age);

  void showInfo() {
    print('Name:$name, Age: $age');
  }
}

class StudentManager {
  List<Student> students = [];

  void addStudent(Student student) {
    students.add(student);
  }

  void showStudents() {
    for (Student student in students) {
      student.showInfo();
    }
  }
}
