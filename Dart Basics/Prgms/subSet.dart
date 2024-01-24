import 'dart:io';

//  Write a function that checks if a given Set is a subset of another Set.
bool subset(Set ar, Set ch) {
  return ar.containsAll(ch);
}

void main() {
  print("Parent set");
  Set<String> ar = {};
  int p = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < p; i++) {
    ar.add(stdin.readLineSync()!);
  }
  print("Child set:");
  Set<String> ch = {};
  int c = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < c; i++) {
    ch.add(stdin.readLineSync()!);
  }
  bool res = subset(ar, ch);
  print(res);
}
