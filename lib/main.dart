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
    FoodMenu("กะเพราหมู", 100, "assets/images/pic1.jpg"),
    FoodMenu("ข้าวผัด", 150, "assets/images/pic2.jpg"),
    FoodMenu("หมึกชุบแป้งทอด", 200, "assets/images/pic3.jpg"),
    FoodMenu("ไก่ย่าง", 250, "assets/images/pic4.jpg"),
    FoodMenu("ปลาเผา", 300, "assets/images/pic5.jpg"),
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
                leading: Image.asset(food.img),
                title: Text(food.name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                subtitle: Text("ราคา " + "${food.price}" + " บาท"),
              );
            }));
  }
}
