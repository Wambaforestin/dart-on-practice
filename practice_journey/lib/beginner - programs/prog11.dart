// Write a program that takes a list of numbers for example
// a = [5, 10, 15, 20, 25]
// and makes a new list of only the first and last elements of the given list. For practice, write this code inside a function.

void main() {
  List<int> testList = [5, 10, 15, 20, 25];
  getFirstLast(testList);
}

List<int> getFirstLast(List<int> list) {
  for (int i = 0; i <= list.length; i++) {
    if (i == 0) {
      list.add(i);
    } else if (i == list.length - 1) {
      list.add(i);
    } else {
      list.remove(i);
    }
  }
  return list;
}
