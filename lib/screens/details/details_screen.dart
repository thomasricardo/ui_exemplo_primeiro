import 'package:flutter/material.dart';
import 'package:ui_exemplo_primeiro/screens/details/componentes/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}