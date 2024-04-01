//using a student class to demonstrate all types of constructors

class Student {
  String? studentName;
  int? studentAge;
  String? studentGender;
  int? studentRollNo;

  //default constructor
  Student() {
    print("This is a default constructor");
    studentName = "Matin";
    studentAge = 30;
    studentGender = "M";
    studentRollNo = 123;
  }

  //named constructor
  Student.namedConstructor(String name, int age, String sex, int rollNumber) {
    print("This is a named constructor");
    studentName = name;
    studentAge = age;
    studentGender = sex;
    studentRollNo = rollNumber;
  }

  //parameterized constructor which is also a named constructor
  Student.parameterizedConstructor(
      String name, int age, String gender, int rollNo) {
    print("This is a parameterized constructor");
    studentName = name;
    studentAge = age;
    studentGender = gender;
    studentRollNo = rollNo;
  }

  //method to show student details
  void showStudentDetails() {
    print("Student name is : $studentName");
    print("Student age is : $studentAge");
    print("Student gender is : $studentGender");
    print("Student rollNo is : $studentRollNo");
  }
  //note : In dart constructor overloading is not possible, so to achieve the same effect we use named constructors
  //overloading is a concept where a class can have more than one constructor with same name but different parameters
}
