import 'package:eligibiltychecker/eligibilityBloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  eligibilityBloc eligBloc = eligibilityBloc();
  late int age;

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Eligibility Checker'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 4000,
            child: StreamBuilder<Object>(
                stream: eligBloc.mainStream,
                builder: (context, snapshot) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      const Text(
                        "Enter your age to continue",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
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
                      TextField(
                        onChanged: (value) => {
                          age = int.parse(value),
                          eligBloc.eventSink.add(int.parse(value))
                        },
                        decoration: const InputDecoration(hintText: 'Age'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () => {eligBloc.eventSink.add(age)},
                          child: const Text('Submit'))
                    ],
                  );
                }),
          ),
        ),
      ),
    ));
  }
}
