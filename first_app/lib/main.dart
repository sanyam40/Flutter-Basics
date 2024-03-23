import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Center(child: Text('Heyyy Peeppss'))
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        // body: const Center(child: Text('Content',style: TextStyle(fontSize: 34),),),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Text(
                  'SUSTAINIFY',
                  style: TextStyle(fontSize: 34),
                ),
                SizedBox(
                  height: 34,
                ),
                Image.network(
                    'https://images.pexels.com/photos/3735218/pexels-photo-3735218.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Username:'),
                ),
                // SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(labelText: 'Password:'),
                  obscureText: true,
                ),
                ElevatedButton(onPressed: () => (), child: Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
