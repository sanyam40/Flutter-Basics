import "dart:io";

void main() {
  String? str = stdin.readLineSync();

  int length = str!.length;
  bool ans = true;

  for (int i = 0; i < length ~/ 2; i++) {
    if (str[i] != str[length - 1 - i]) {
      ans = false;
      break;
    }
  }

  print(ans);
}
