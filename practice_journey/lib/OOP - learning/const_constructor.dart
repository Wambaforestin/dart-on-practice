//using the class Point we will show how to use a const contructor.

class Point {
  //final fields(properties) are required to be initialized at the point of declaration or in the constructor.
  final double x;
  final double y;

  //const constructor
  const Point({required this.x, required this.y});
}


void main() {
  //creating an object of the class Point
  Point p1 = const Point(x: 10, y: 20);
  const Point p2 = Point(x: 10, y: 20);
  const p3 = Point(x: 10, y: 20);
  //all the 03 different ways of creating an object of the class Point are valid.
  print(p1.x);
  print(p2.x);
  print(p3.x);
}


