import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; // สร้าง State

  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    data.add(Text(
      "คลิกเพื่อเพิ่มจำนวนตัวเลข",
      style: TextStyle(fontSize: 24, color: Colors.red),
    ));
    data.add(Text(
      number.toString(),
      style: TextStyle(fontSize: 60),
    ));
    data.add(Image(
      image: NetworkImage(
          "https://www.wfla.com/wp-content/uploads/sites/71/2023/05/GettyImages-1389862392.jpg?w=2560&h=1440&crop=1"),
    ));
    data.add(TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered))
              return Colors.blue.withOpacity(0.04);
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed))
              return Colors.blue.withOpacity(0.12);
            return null; // Defer to the widget's default.
          },
        ),
      ),
      onPressed: clearAll,
      child: Text('ล้างข้อมูล'),
    ));
    for (var i = 0; i <= number; i++) {
      data.add(Text("รายการที่ ${i+1}"));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo List"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: data,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNumber,
        child: Icon(Icons.add),
      ),
    );
  }

  void addNumber() {
    setState(() {
      number++;
    });
  }

  void clearAll() {
    setState(() {
      number = 0;
    });
  }
}
