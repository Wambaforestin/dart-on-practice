// class IntData {
//   String data;
//   IntData(this.data);
// }

// class DoubleData{
//   double data;
//   DoubleData(this.data);
// }

class Generic<T>{
  T data;
  Generic(this.data);
}

//to specify the type of data we want to use in the class we use <T> in the class name.
class Generic2<T extends num>{
  T data;
  Generic2(this.data);
}
// Generic2 class will only accept data type that is a number, that is int, double, num.
void main(){
  //using the class Generic
  Generic<String> data = Generic<String>('Hello');
  print(data.data);

  Generic<double> data2 = Generic<double>(10.0);
  print(data2.data);

  Generic<int> data3 = Generic<int>(10);
  print(data3.data);

  Generic<bool> data4 = Generic<bool>(true);
  print(data4.data);

  //using the class Generic2
  Generic2<int> data5 = Generic2<int>(10);
  print(data5.data);
  // Generic2<String> data6 = Generic2<String>("Hello2");  //this will give an error because the class Generic2 only accepts data type that is a number.
  // print(data6.data);
}

//note : wit this generic class we can use any type of data type in the class.
//you can also use generocs for Map and List.
//Also with generics we can specify the type of data we want to use in the class.