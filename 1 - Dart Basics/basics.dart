// Basics and Data types in Dart

import 'dart:io';

void main() {
  print('Hello World');
  stdout.write("Hello World");

  // Taking input from the console
  print("enter a no");
  var no = stdin.readLineSync();
  print(no);

  // Static declarations
  int a = 9; // inline declaration
  print('value of a= $a');
  int b = 10;
  print('A+B = ${b + a}');

  // Different Data types
  String aa = "abc"; // String type
  int u = 9; // Integer type
  num bb = 10; // num can store a number and double
  BigInt c = BigInt.parse('67777777777'); // Big number
  bool d = true; // boolean type
  double e = 7.8; // float type
  print("$aa + $bb + $c + $d + $e + $u");

  print('Enter two nos.:');
  String? no1 = stdin.readLineSync();
  int f = int.parse(no1!);
  String? no2 = stdin.readLineSync();
  int g = int.parse(no2!);
  print('Sum of two numbers is: ${(f + g)}');
}
