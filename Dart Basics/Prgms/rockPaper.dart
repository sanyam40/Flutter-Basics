import 'dart:io';
import 'dart:math';

// Make a two-player Rock-Paper-Scissors game against computer. Ask for player’s input, compare them, print out a message to the winner.

String rockpaper() {
  print('Choose:\n R(rock)\n P(paper)\n S(scissors)');
  String x = stdin.readLineSync()!.toUpperCase();
  List<String> ar = ['R', 'P', 'S'];
  int index = Random().nextInt(ar.length);
  String option = ar[index];
  print(option);
  if (option == x) {
    return 'Draw';
  } else if (option == 'R') {
    if (x == 'S') {
      return 'Computer Won';
    } else {
      return 'User Won';
    }
  } else if (option == 'P') {
    if (x == 'S') {
      return 'User Won';
    } else {
      return 'Computer Won';
    }
  } else if (option == 'S') {
    if (x == 'R') {
      return 'User Won';
    } else {
      return 'Computer Won';
    }
  }
  return 'Wrong Choice';
}

void main() {
  String a;
  do {
    String res = rockpaper();
    print(res);
    print('Enter y to continue:');
    a = stdin.readLineSync()!;
  } while (a.toLowerCase() == 'y');
}
