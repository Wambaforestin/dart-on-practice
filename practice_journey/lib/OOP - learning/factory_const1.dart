// An example of factory constructor
class Area{
  final double length;
  final double breadth;
  final double height;
  final double area;

  //using initializer list
  const Area._internal(this.length, this.breadth, this.height) : area = length * breadth * height;

  //factory constructor
  factory Area(double length, double breadth, double height){
    if(length < 0 || breadth < 0 || height < 0){
      throw ArgumentError("Length, breadth and height must be greater than 0");
    } else {
      //redirecting to const constructor
      return Area._internal(length, breadth, height);
    }
  }
  void display(){
    print("Area is $area");
  }
}


void main(){
  Area a = Area(10, 20, 30);
  a.display();
}