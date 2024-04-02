//in this example to demonstrate hpw static works , deplay the number od times and object is created and the number of times the constructor is called
class StaticDemo {
  // static variable
  static int count = 0;
  // static method
  static void showOutput() {
    print("The number of times the object is created is $count");
  }

  // constructor
  StaticDemo() {
    count++;
  }
}

void main() {
  print("Initially when the object is not created");
  StaticDemo.showOutput();
  StaticDemo s1 = StaticDemo();
  StaticDemo s2 = StaticDemo();
  StaticDemo s3 = StaticDemo();
  StaticDemo s4 = StaticDemo();
  StaticDemo s5 = StaticDemo();
  StaticDemo s6 = StaticDemo();
  StaticDemo s7 = StaticDemo();
  StaticDemo s8 = StaticDemo();
  StaticDemo s9 = StaticDemo();
  StaticDemo s10 = StaticDemo();
  print("After the object is created");
  StaticDemo.showOutput();
  print("This means that 10 objects have been created and the constructor has been called 10 times.");
}

//Note: some of the key points to note about static type are:
//1. Static variables are shared among all the objects of the class.
//2. Static methods can only access static variables and static methods.
//3. Static variables are initialized only once.
//4. Static variables are initialized when the class is loaded.

//some uses of static variables are:

//1. Memory management: Static variables are stored in the memory only once.
//2. Code optimization: Static variables are shared among all the objects of the class.  