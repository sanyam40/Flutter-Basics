import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: "Name",
            ),
            maxLength: 50,
            onChanged: (String value) {
              print(value);
            },
          ),
        ),
      ),
    );
  }
}
