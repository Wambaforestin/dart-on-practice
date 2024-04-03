import 'dart:html';

void main(){
  querySelector('#submit')?.onClick.listen((e) {
    var name = (querySelector('#name') as InputElement).value;
    var email = (querySelector('#email') as InputElement).value;
    var password = (querySelector('#password') as InputElement).value;
    var confirmPassword = (querySelector('#confirmPassword') as InputElement).value;
    var message = (querySelector('#message') as TextAreaElement).value;
     querySelector('#output')?.text = name! + '\n' + email! + '\n' + password! + '\n' + confirmPassword! + '\n' + message!;
  });
}