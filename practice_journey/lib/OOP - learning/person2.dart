import 'dart:convert';

class Person {
  //properties
  String? name;
  int? age;

  //constructor
  Person({this.name, this.age});

  //another constructor
  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }

  //method
  void showOutput() {
    print('Name: $name');
    print('Age: $age');
  }
}

void main() {
  String jsonStr1 = '{"name": "John", "age": 30}';
  var JsonMap = jsonDecode(jsonStr1);

  Person p1 = Person.fromJson(JsonMap);
  p1.showOutput();
}
