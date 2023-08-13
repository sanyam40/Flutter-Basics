import 'dart:io';

void main() {
  print('Hello World');
  stdout.write("Hello World");

  // Taking input from the console
  print("enter a no");
  var no = stdin.readLineSync();
  print(no);

  // static declarations
  int a = 9;
  print('value of a= $a');

  int b = 10;
  print('A+B = ${b + a}');

  var name;
  name = 'sanyam'; // String type
  print(name.runtimeType);
  name = 9; // Number type
  print(name.runtimeType);
  name = false; // Boolean type
  print(name.runtimeType);
}
