abstract class Vehicle {
  //abstract methods
  void drive();
  void honk();
  void refuel();
  void stop();
}

class Car extends Vehicle {
  @override
  void drive() {
    print("The car is driving");
  }

  @override
  void honk() {
    print("The car is honking");
  }

  @override
  void refuel() {
    print("The car is refueling");
  }

  @override
  void stop() {
    print("The car is stopping");
  }
}

void main(){
  Vehicle v1 = Car();  // <-- abstract class can be used as a type
  //Alternatively, you can use the following syntax
  // Car v1 = Car();

  v1.drive();
  v1.honk();
  v1.refuel();
  v1.stop();

}