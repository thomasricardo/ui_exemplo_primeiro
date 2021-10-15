import 'package:flutter/material.dart';
import 'package:ui_exemplo_primeiro/constants.dart';

class IconsCard extends StatelessWidget {
  const IconsCard({
    Key? key, required this.icone,
  }) : super(key: key);

  final IconData icone;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.03
      ),
      padding: EdgeInsets.all(padraoPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: corTerciaria,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 22,
                color: corPrimaria.withOpacity(0.22)),

            BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white
            ),
          ]),
          child: Icon(
            icone,
            color: corPrimaria),
    );
  }
}
