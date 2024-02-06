// Take two lists, for example:
//   a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
//   b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
// and write a program that returns a list that contains only the elements that are common between them (without duplicates). Make sure your program works on two lists of different sizes.

void main() {
  List<int> list1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> list2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> finalList = [];

  for (int i in list1) {
    for (int j in list2) {
      if (i == j) {
        finalList.add(i);
      }
    }
  }
//  remove duplicates : convert to set and back to list
// using toSet() to convert list to set and toList() to convert set to list
  finalList = finalList.toSet().toList();
  print(finalList);
}
