// union without built-in methods

import 'dart:io';

void union(Set ar, Set ch) {
  for (var i in ch) {
    if (ar.contains(i)) {
      continue;
    } else {
      ar.add(i);
    }
  }
  print("Union:$ar");
}

void main() {
  print("set1");
  Set<String> ar = {};
  int p = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < p; i++) {
    ar.add(stdin.readLineSync()!);
  }
  print("set2:");
  Set<String> ch = {};
  int c = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < c; i++) {
    ch.add(stdin.readLineSync()!);
  }
  union(ar, ch);
}
