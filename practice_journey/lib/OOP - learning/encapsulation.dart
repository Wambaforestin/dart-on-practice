//using the class Employee to demonstrate encapsulation in dart

class Employee {
  //private instance variable
  String? _name;
  int? _id;
  double? _salary;
  DateTime? _joiningDate;

  //getter and setter for the instance variable
  String? get name => _name!;
  set name(String? name) => _name = name;

  int? get id => _id!;
  set id(int? id) => _id = id;

  double? get salary => _salary!;
  set salary(double? salary) => _salary = salary;

  DateTime? get joiningDate => _joiningDate!;
  set joiningDate(DateTime? joiningDate) {
    if (joiningDate != null && joiningDate.isAfter(DateTime.now())) {
     throw Exception("Joining date cannot be after the current date");
    } else {
      _joiningDate = joiningDate;
    }
  }
  //alternative way of writing getter and setter

  // String? get name {
  //   return _name;
  // }

  // void set name(String? name) {
  //   _name = name;
  // }

  // int? get id {
  //   return _id;
  // }

  // void set id(int? id) {
  //   _id = id;
  // }

  // double? get salary {
  //   return _salary;
  // }

  // void set salary(double? salary) {
  //   _salary = salary;
  // }

  // DateTime? get joiningDate {
  //   return _joiningDate;
  // }

  // void set joiningDate(DateTime? joiningDate) {
  //   _joiningDate = joiningDate;
  // }

  //private method

  void _showOutput() {
    print("Name : $_name");
    print("Id : $_id");
    print("Salary : $_salary");
    print("Joining Date : $_joiningDate");
  }

  //public method

  void showEmployeeDetails() {
    _showOutput();
  }
}

main() {
  Employee e = Employee();
  e.name = "John";
  e.id = 123;
  e.salary = 50000.0;
  //putting a future date to show that date cannot be after the current date
  // e.joiningDate = DateTime(2024, 10, 10);
  //putting the current date
  // e.joiningDate = DateTime.now();
  //putting a past date
  e.joiningDate = DateTime(2020, 10, 10);

  e.showEmployeeDetails();
}


//Note: Encapsulation is library level access and not class level access.
//Explanation: It means that if you try to access the private instance variable from another file, it will not be accessible.
//For example, if you try to access the private instance variable _name from another file, it will not be accessible.
//It is only possible if you make use of the variable getter and setter.
