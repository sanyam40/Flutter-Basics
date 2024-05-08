import 'package:flutter/material.dart';
import 'package:loginscreen/model/user.dart';
import 'package:loginscreen/provider/user_notifier.dart';
import 'package:loginscreen/screens/UserlistScreen.dart';
import 'package:provider/provider.dart';
import 'package:loginscreen/Bloc/eligibility_bloc.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? username;
  String? password;
  late int age;

  final _formKey = GlobalKey<FormState>();
  eligibilityBloc eligBloc = eligibilityBloc();

  @override
  Widget build(BuildContext context) {
    UserNotifier userNotifier = Provider.of<UserNotifier>(context);

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 34,
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn8UpzeUZ8uXraZ3XjvO8pFYghl7OiQSvZauchl-7uDQ&s',
                height: 100,
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'User Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  } else if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  } else if (value.length < 8) {
                    return 'Password must be at least 8 characters long';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              // Age TextFormField
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    age = int.tryParse(value) ?? 0;
                  });
                  eligBloc.eventSink.add(age);
                },
                decoration: InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
              ),
              StreamBuilder<Object>(
                stream: eligBloc.mainStream,
                builder: (context, snapshot) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: () {
                            if (snapshot.data == true) {
                              return const Color.fromARGB(255, 7, 150, 50);
                            } else {
                              return const Color.fromARGB(255, 190, 4, 4);
                            }
                          }(),
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    userNotifier.addUser(User(
                        username: username!, password: password!, age: age));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserListScreen()),
                    );
                  }
                },
                child: const Text('Login'),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook),
                    label: const Text('Login with Facebook'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Image.network(
                      "https://w7.pngwing.com/pngs/557/90/png-transparent-google-logo-g-suite-google-text-logo-business.png",
                      height: 20,
                    ),
                    label: const Text('Login with Google'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('No Account? Register Now'),
              ),
              // Display eligibility checker widget
            ],
          ),
        ),
      ),
    );
  }
}
