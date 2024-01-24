// var and dynamic variables in Dart

void main() {
  // data type can be change at runtime using var and dynamic.
  // var name;
  dynamic name;
  name = 'sanyam'; // String type
  print(name.runtimeType);
  name = 9; // Number type
  print(name.runtimeType);
  name = false; // Boolean type
  print(name.runtimeType);

  // if var is declared as String or a particular type then
  // it's data type can't be changed again.
  var ab = "hello"; // type inferencing
  print(ab.runtimeType);
  // ab = 7; // it will through error as data type of ab is string.
}
