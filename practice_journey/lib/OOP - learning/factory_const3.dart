enum ShapedType { circle, square }

abstract class Shape {
  factory Shape(ShapedType type) {
    switch (type) {
      case ShapedType.circle:
        return Circle();
      case ShapedType.square:
        return Square();
      default:
        throw Exception('Invalid shape type: $type');
    }
  }
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print("Drawing Circle");
  }
}

class Square implements Shape {
  @override
  void draw() {
    print("Drawing Square");
  }
}

void main() {
  //creating a list of shapes
  print("Creating a list of shapes");
  List<Shape> shapes = [];
  shapes.add(Shape(ShapedType.circle));
  shapes.add(Shape(ShapedType.square));

  //drawing all shapes
  for (var shape in shapes) {
    shape.draw();
  }

  //creating a single shape
  print("Creating a single shape");
  Shape circle = Shape(ShapedType.circle);
  //here the factory will return an instance of Circle
  circle.draw();

  Shape square = Shape(ShapedType.square);
  //here the factory will return an instance of Square
  square.draw();
}
