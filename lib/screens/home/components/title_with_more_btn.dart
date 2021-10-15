import 'package:flutter/material.dart';
import 'package:ui_exemplo_primeiro/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key, required this.title
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padraoPadding),
      child: Row(
        children: [
          TitleWithCostumUnderline(text: title),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: corPrimaria,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            onPressed: () {},
            child: Text('Mais', style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }
}

class TitleWithCostumUnderline extends StatelessWidget {
  const TitleWithCostumUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: padraoPadding / 4),
            child: Text(text,
            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold
            )),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: padraoPadding / 4),
              height: 7,
              color: corPrimaria.withOpacity(0.2),
              ),
            ),
        ],
      ),
    );
  }
}

