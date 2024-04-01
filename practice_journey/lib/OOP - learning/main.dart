import 'Person.dart';
import 'interest.dart';
import 'laptop.dart';

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
}
