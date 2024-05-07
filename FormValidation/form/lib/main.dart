import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Validation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _checkBoxValue1 = false;
  bool _checkBoxValue2 = false;
  bool _checkBoxValue3 = false;
  String _radioValue = 'Option 1';

  String _displayData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Username:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Enter email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  // Simple email validation
                  if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Password:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Enter password',
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  // Minimum length validation
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters long';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Interests:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _checkBoxValue1,
                    onChanged: (bool? value) {
                      setState(() {
                        _checkBoxValue1 = value!;
                      });
                    },
                  ),
                  const Text('Interest 1'),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _checkBoxValue2,
                    onChanged: (bool? value) {
                      setState(() {
                        _checkBoxValue2 = value!;
                      });
                    },
                  ),
                  const Text('Interest 2'),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _checkBoxValue3,
                    onChanged: (bool? value) {
                      setState(() {
                        _checkBoxValue3 = value!;
                      });
                    },
                  ),
                  const Text('Interest 3'),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Radio Buttons:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                children: <Widget>[
                  Radio<String>(
                    value: 'Option 1',
                    groupValue: _radioValue,
                    onChanged: (String? value) {
                      setState(() {
                        _radioValue = value!;
                      });
                    },
                  ),
                  const Text('Option 1'),
                ],
              ),
              Row(
                children: <Widget>[
                  Radio<String>(
                    value: 'Option 2',
                    groupValue: _radioValue,
                    onChanged: (String? value) {
                      setState(() {
                        _radioValue = value!;
                      });
                    },
                  ),
                  const Text('Option 2'),
                ],
              ),
              const SizedBox(height: 20),
              // Submit button
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Submit'),
              ),
              const SizedBox(height: 20),
              // Display submitted data
              Text(_displayData),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_validateForm()) {
      String username = _usernameController.text;
      String password = _passwordController.text;
      bool checkBoxValue1 = _checkBoxValue1;
      bool checkBoxValue2 = _checkBoxValue2;
      bool checkBoxValue3 = _checkBoxValue3;
      String radioValue = _radioValue;

      setState(() {
        _displayData =
            'Username: $username\nPassword: $password\nInterest 1: $checkBoxValue1\nInterest 2: $checkBoxValue2\nInterest 3: $checkBoxValue3\nRadio: $radioValue';
      });
    }
  }

  bool _validateForm() {
    if (!_usernameController.text.contains('@')) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please enter a valid email')));
      return false;
    }
    if (_passwordController.text.length < 8) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Password must be at least 8 characters long')));
      return false;
    }
    return true;
  }
}
