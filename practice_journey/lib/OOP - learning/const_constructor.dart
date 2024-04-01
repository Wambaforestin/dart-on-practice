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
  const p1 = Point(x: 10, y: 20);
  print('The point is at (${p1.x}, ${p1.y})');
}


