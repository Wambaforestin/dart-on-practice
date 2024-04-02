//An example to show how interface can be implemented in Dart

class Animal1{
  void breathe(){
    print("Animal is breathing");
  }
}

class Animal2{
  void sleep(){
    print("Animal is sleeping");
  }
}

class Animal3{
  void eat(){
    print("Animal is eating");
  }
}

class Animal4{
  void walk(){
    print("Animal is walking");
  }
}

class Dog implements Animal1, Animal2, Animal3, Animal4{
  @override
  void breathe(){
    print("Dog is breathing");
  }
  @override
  void sleep(){
    print("Dog is sleeping");
  }
  @override
  void eat(){
    print("Dog is eating");
  }
  @override
  void walk(){
    print("Dog is walking");
  }

}

void main(){
  Dog dog = Dog();
  dog.breathe();
  dog.sleep();
  dog.eat();
  dog.walk();
}

//Note: All the methods of an interface needs to be implemented in the class that implements the interface. If not, it will throw an error.
//you can also make use of abstract class to implement interface in Dart.

