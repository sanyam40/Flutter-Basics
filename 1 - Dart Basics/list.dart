// List in Dart
// It is similar to Arrays

void main() {
  var list = [3, 5, 6, "sanyam"];
  print(list);
  print(list[2]);
  list.add(56); // insert element at the end
  list.insert(2, "00");

  // iterate over the list
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  list.removeLast();
  list.removeAt(2);

  var temp = [];
  temp.addAll(list);
  print("$temp");

  print(list.length);
  print(list.reversed);
  print(list.first);
  print(list.last);
  print(list.isEmpty);

  List<String> names = [
    "a",
    "b",
    "c",
    "d",
    "e",
  ];

  String finalName = "";
  for (int i = 0; i < names.length; i++) {
    finalName += names[i];
  }
  print(finalName);

  StringBuffer buffer = new StringBuffer();
  for (String name in names) {
    buffer.write(name + ' ');
    //print(identityHashCode(buffer));
  }

  print(buffer);
}
