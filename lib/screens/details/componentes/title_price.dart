import 'package:flutter/material.dart';
import 'package:ui_exemplo_primeiro/constants.dart';

// ignore: camel_case_types
class Title_Price extends StatelessWidget {
  const Title_Price({
    Key? key, required this.name, required this.country, required this.price,
  }) : super(key: key);

  final String name, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: padraoPadding
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(text: "$name\n", 
              style: Theme.of(context).textTheme.headline4!.copyWith(
                color: corSecundaria,
                fontWeight: FontWeight.bold
              )),
              
              TextSpan(text: "$country",
              style: TextStyle(
                fontSize: 20,
                color: corPrimaria,
                fontWeight: FontWeight.w300)),
            ]),
          ),
          Spacer(),
          Text("\$$price",
          style: Theme.of(context).textTheme.headline5!.copyWith(
            color: corSecundaria
          )),
        ],
      ),
    );
  }
}
