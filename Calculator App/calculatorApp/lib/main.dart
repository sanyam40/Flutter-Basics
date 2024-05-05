import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController value1Controller = TextEditingController();
  TextEditingController value2Controller = TextEditingController();
  double result = 0.0;

  void add() {
    double value1 = double.tryParse(value1Controller.text) ?? 0.0;
    double value2 = double.tryParse(value2Controller.text) ?? 0.0;
    setState(() {
      result = value1 + value2;
    });
  }

  void subtract() {
    double value1 = double.tryParse(value1Controller.text) ?? 0.0;
    double value2 = double.tryParse(value2Controller.text) ?? 0.0;
    setState(() {
      result = value1 - value2;
    });
  }

  void multiply() {
    double value1 = double.tryParse(value1Controller.text) ?? 0.0;
    double value2 = double.tryParse(value2Controller.text) ?? 0.0;
    setState(() {
      result = value1 * value2;
    });
  }

  void divide() {
    double value1 = double.tryParse(value1Controller.text) ?? 0.0;
    double value2 = double.tryParse(value2Controller.text) ?? 0.0;
    setState(() {
      if (value2 != 0) {
        result = value1 / value2;
      } else {
        // Handle division by zero
        result = double.nan;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
        backgroundColor: Colors.blueGrey[400],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Output',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[100],
                ),
                child: Column(
                  children: [
                    TextFormField(
                      controller: value1Controller,
                      decoration: const InputDecoration(
                        hintText: 'Enter value 1',
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: value2Controller,
                      decoration: const InputDecoration(
                        hintText: 'Enter value 2',
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      add();
                    },
                    child: const Text(
                      '+',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      subtract();
                    },
                    child: const Text(
                      '-',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      multiply();
                    },
                    child: const Text(
                      '*',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      divide();
                    },
                    child: const Text(
                      '/',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      value1Controller.clear();
                      value2Controller.clear();
                    },
                    child: const Text(
                      'Clear',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 20, // Adjust the height as needed
              ),
              Text(
                'Result: $result',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
