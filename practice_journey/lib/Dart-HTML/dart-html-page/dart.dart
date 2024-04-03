import 'dart:html';

void main(){
  //call the querySelector method to get the element with the id of 'output'
  var output = querySelector('#header');
  output!.text = 'Hello Dart!';
}