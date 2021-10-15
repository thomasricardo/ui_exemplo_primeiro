import 'package:flutter/material.dart';
import 'package:ui_exemplo_primeiro/constants.dart';
import 'package:ui_exemplo_primeiro/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Planta',
      theme: ThemeData(
        scaffoldBackgroundColor: corTerciaria,
        primaryColor: corPrimaria,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: corSecundaria)
      ),
      home: HomeScreen(),
    );
  }
}

