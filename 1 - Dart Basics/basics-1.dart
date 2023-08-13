import 'dart:io';

void main() {
  print('Hello World');
  stdout.write("Hello World");

  // Taking input from the console
  print("enter a no");
  var no = stdin.readLineSync();
  print(no);

  // static declarations
  int a = 9; // inline declaration
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

  // data types
  String aa = "abc"; // String type
  int u = 9; // Integer type
  num bb = 10; // num can store a number and double
  BigInt c = BigInt.parse('67777777777'); // Big number
  bool d = true; // boolean type
  double e = 7.8; // float type
  print("$aa + $bb + $c + $d + $e + $u");
}
