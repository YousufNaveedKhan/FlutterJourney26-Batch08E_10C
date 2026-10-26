import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            height: 250,
            width: 300,
            color: Colors.red,
            child: Center(
              child: Text("Hello", style: TextStyle(fontSize: 26, color: Colors.blue, fontWeight: FontWeight.bold)),
              )
          ),
        )
      )
    );
  }
}
