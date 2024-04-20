import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Flutter"),
        ),
        body: const Center(
          child: Text("Hello Dart",
              style: TextStyle(fontSize: 24, color: Colors.red)),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}
