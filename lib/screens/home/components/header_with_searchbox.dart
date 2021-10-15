import 'package:flutter/material.dart';
import 'package:ui_exemplo_primeiro/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: padraoPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: padraoPadding, right: padraoPadding, bottom: 36 + padraoPadding),
            height: size.height * 0.2 + 27,
            decoration: BoxDecoration(
              color: corPrimaria,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),

            child: Row(
              children: [
                Text('App de Plantas',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold
                )),
                Spacer(),
                Image.asset("assets/images/logo.png"),
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: padraoPadding),
              padding: EdgeInsets.symmetric(horizontal: padraoPadding),
              
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: corPrimaria.withOpacity(0.23)
                  ),]     
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: "pesquisar",
                  hintStyle: TextStyle(
                    color: corPrimaria.withOpacity(0.5)
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(Icons.search)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}