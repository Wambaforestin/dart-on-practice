class Person {
  String firstName;
  String lastName;

  //constructot
  Person(this.firstName, this.lastName);

  //named constructor using initializer list
  Person.fromMap(Map<String, String> map)
      : firstName = map['firstName'] as String,
        lastName = map['lastName'] as String {
    print("Person created from map: $firstName $lastName");
  }

  //named factory constructor
  factory Person.fromMapFactory(Map<String, String> map) {
    //check if map contains required keys
    if (map.containsKey('firstName') && map.containsKey('lastName')) {
      return Person.fromMap(map);
    } else {
      throw ArgumentError("Map does not contain required keys");
    }
  }
}

void main() {
  Person p = Person("John", "Doe");
  print("created from constructor: ${p.firstName} ${p.lastName}");
  Map<String, String> map = {'firstName': 'Jane', 'lastName': 'Doe'};
  Person p2 = Person.fromMapFactory(map);
  print("created from factory constructor: ${p2.firstName} ${p2.lastName}");
}
