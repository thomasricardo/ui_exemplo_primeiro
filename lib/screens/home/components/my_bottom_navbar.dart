import 'package:flutter/material.dart';
import 'package:ui_exemplo_primeiro/constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: padraoPadding * 2,
        right: padraoPadding * 2,
        bottom: padraoPadding),
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: corPrimaria.withOpacity(0.38))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.circle, color: corPrimaria)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.turned_in_outlined, color: corPrimaria)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.share, color: corPrimaria)),
        ],
      ),
    );
  }
}
