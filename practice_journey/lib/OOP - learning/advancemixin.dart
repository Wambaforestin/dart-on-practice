// Mixin for basic operations
mixin BasicOperations {
  int add(int a, int b) => a + b;
  int subtract(int a, int b) => a - b;
}

// Mixin for advanced operations
mixin AdvancedOperations on BasicOperations {
  int multiply(int a, int b) => a * b;
  int divide(int a, int b) => a ~/ b;
}

// Calculator class using both Basic and Advanced operations
class Calculator with BasicOperations, AdvancedOperations {
  @override
  int add(int a, int b) {
    print('Advanced add operation');
    return super.add(a, b);
  }

  @override
  int subtract(int a, int b) {
    print('Advanced subtract operation');
    return super.subtract(a, b);
  }
}

void main() {
  var calc = Calculator();
  print(calc.add(10, 5)); // Outputs: Advanced add operation, 15
  print(calc.subtract(10, 5)); // Outputs: Advanced subtract operation, 5
  print(calc.multiply(10, 5)); // Outputs: 50
  print(calc.divide(10, 5)); // Outputs: 2v
}

//Note: the line "mixin AdvancedOperations on BasicOperations" { is used to specify that the AdvancedOperations mixin depends on the BasicOperations mixin. This means that the AdvancedOperations mixin can access the methods defined in the BasicOperations mixin.}
//Also , that sentence means that the class AdvancedOperations can be used only a class extends the class BasicOperations, that is if a class inherits the class BasicOperations.
