// take a list e,g    a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// and write a program that prints out all the elements of the list that are less than 5.

void main() {
  List<int> myList = [7,-2,-1,1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89,54,78,2];
  List<int> newList = [];
  print("Given the list below");
  print(myList);
  // ------ alternatively--------
  // for (int listing in myList) {
  //   print(listing);
  // }
  print("The element of the list lessthan 5 is : ");
  for (int list in myList) {
    if (list < 5) {
      newList.add(list);
    }
  }
  print(newList);
  // alternatively
   print([for (var i in myList) if (i < 5) i]);
}
