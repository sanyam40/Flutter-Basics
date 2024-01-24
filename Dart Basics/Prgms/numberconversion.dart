// a) Decimal Number - Binary Conversion
String decimalToBinary(int decimalValue) {
  return decimalValue.toRadixString(2);
}

// b) Binary Number - Decimal Conversion
int binaryToDecimal(String binaryValue) {
  return int.parse(binaryValue, radix: 2);
}

// c) Decimal Number - Octal Conversion
String decimalToOctal(int decimalValue) {
  return decimalValue.toRadixString(8);
}

// d) Octal number - Decimal Conversion
int octalToDecimal(String octalValue) {
  return int.parse(octalValue, radix: 8);
}

// e) Octal Number - Binary Conversion
String octalToBinary(String octalValue) {
  int decimalValue = int.parse(octalValue, radix: 8);
  return decimalToBinary(decimalValue);
}

// f) Decimal Number - Hexa Conversion
String decimalToHexadecimal(int decimalValue) {
  return decimalValue.toRadixString(16);
}

// g) Hexa Number - Decimal Conversion
int hexadecimalToDecimal(String hexadecimalValue) {
  return int.parse(hexadecimalValue, radix: 16);
}

// h) Hexa Number - Binary Conversion
String hexadecimalToBinary(String hexadecimalValue) {
  int decimalValue = int.parse(hexadecimalValue, radix: 16);
  return decimalToBinary(decimalValue);
}

void main() {
  int decimalValue = 42;
  String binaryValue = '101010';
  String octalValue = '52';
  String hexadecimalValue = '2A';

  print('a) Decimal to Binary: ${decimalToBinary(decimalValue)}');
  print('b) Binary to Decimal: ${binaryToDecimal(binaryValue)}');
  print('c) Decimal to Octal: ${decimalToOctal(decimalValue)}');
  print('d) Octal to Decimal: ${octalToDecimal(octalValue)}');
  print('e) Octal to Binary: ${octalToBinary(octalValue)}');
  print('f) Decimal to Hexadecimal: ${decimalToHexadecimal(decimalValue)}');
  print('g) Hexadecimal to Decimal: ${hexadecimalToDecimal(hexadecimalValue)}');
  print('h) Hexadecimal to Binary: ${hexadecimalToBinary(hexadecimalValue)}');
}
