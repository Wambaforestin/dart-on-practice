import 'Person.dart';
import 'interest.dart';
import 'laptop.dart';
import 'all_contructors.dart';

void main() {
  //------------------- for the class person--
  Person o1 =
      Person(name: 'John', age: 30); //the new keyword could also be addded
  o1.showOutput();

  Person o2 = Person();
  o2.input();
  o2.showOutput();

  //----------------------for the class interest--
  Interest i = Interest();
  i.p = 500.0;
  i.r = 0.05;
  i.t = 10;

  print("The value of the simple interest from the class interest is ${i.calculateInterest(500.0, 0.05, 10)}");

  //--------------------for the class laptop--
  Laptop l = Laptop();
  print("brand : ${l.brand} and price : ${l.price}");

  //--------------------for the class student--
  Student s1 = Student();
  s1.showStudentDetails();

  Student s2 = Student.namedConstructor("John", 30, "F", 123);
  s2.showStudentDetails();

  Student s3 = Student.parameterizedConstructor("John", 30, "M", 123);
  s3.showStudentDetails();
}
