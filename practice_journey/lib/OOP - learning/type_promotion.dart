void main() {
  //Ex1
  Object obj = "Hello";
  // print(obj.length); Error: The getter 'length' is not defined for the class 'Object'.
  if (obj is String) {
    print(obj.length);
  }

  //Ex2
  String result;

  if(DateTime.now().hour < 12) {
    result = "Good Morning";
  } else {
    result = "Good Afternoon";
  }
  print(result);
}
 
