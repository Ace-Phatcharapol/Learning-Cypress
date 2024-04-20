import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Flutter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hello Dart",
                style: TextStyle(fontSize: 24, color: Colors.red),
              ),
              Image(
                image: NetworkImage(
                    "https://www.wfla.com/wp-content/uploads/sites/71/2023/05/GettyImages-1389862392.jpg?w=2560&h=1440&crop=1"),
              ),
            ],
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}
