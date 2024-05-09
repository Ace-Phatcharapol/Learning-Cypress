import 'package:flutter/material.dart';
import 'package:myflutter/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
        appBar: _buildAppBar(),
        body: Container(
          child: Text('ToDo List'),
        ));
  }

    AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: cWhite,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu,
            color: cBlack,
            size: 30,
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/Fat Cat.jpg'),
              ),
            ),
          ],
        ),
      );
  }
}