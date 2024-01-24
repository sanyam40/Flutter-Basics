import 'dart:io';

// Create a program that simulates a library catalog system using a map. Allow users to add books, check out books, and view the current status of books.
void main() {
  Map<String, String> lib = {
    'The lottery': 'Available',
    'Home': 'Issued',
    'The Great Gatsby': 'Issued'
  };
  print("1:to add books\n2:to checkout\n3:check status");
  String option = stdin.readLineSync()!;
  if (option == '1') {
    print('Enter Book name:');
    String book = stdin.readLineSync()!;
    lib[book] = 'Available';
  } else if (option == '2') {
    String book = stdin.readLineSync()!;
    if (!lib.containsKey(book)) {
      print("No such book");
    } else {
      lib[book] = 'Issued';
    }
  } else if (option == '3') {
    String book = stdin.readLineSync()!;
    if (!lib.containsKey(book)) {
      print("No such book");
    } else {
      print(lib[book]);
    }
  } else {
    print("Wrong choice");
  }
}
