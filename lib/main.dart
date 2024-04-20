import 'package:flutter/material.dart';
import 'FoodMenu.dart';

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
  //กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu("กะเพราหมู", 100),
    FoodMenu("ข้าวผัด", 150),
    FoodMenu("หมึกชุบแป้งทอด", 200),
    FoodMenu("ไก่ย่าง", 250),
    FoodMenu("ปลาเผา", 300),
  ];

  //การแสดงผล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ToDo List"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                title: Text(food.name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                subtitle: Text("ราคา " + "${food.price}" + " บาท"),
              );
            }));
  }
}
