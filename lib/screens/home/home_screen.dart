import 'package:flutter/material.dart';
import 'package:ui_exemplo_primeiro/screens/home/components/body.dart';
import 'package:ui_exemplo_primeiro/screens/home/components/my_bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Barra(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar Barra() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
    );
  }
}