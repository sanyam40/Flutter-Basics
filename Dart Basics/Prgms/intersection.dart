// intersection without using built-in methods

import 'dart:io';

void intersection(Set ar, Set ch) {
  Set<String> res = {};
  Set max = {};
  Set min = {};
  if (ar.length > ch.length) {
    max = ar;
    min = ch;
  } else {
    max = ch;
    min = ar;
  }
  for (var i in max) {
    if (min.contains(i)) {
      res.add(i);
    } else {
      continue;
    }
  }
  print("Intersection:$res");
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
  intersection(ar, ch);
}
