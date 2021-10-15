import 'package:flutter/material.dart';
import 'package:ui_exemplo_primeiro/constants.dart';
import 'package:ui_exemplo_primeiro/screens/details/componentes/image_card.dart';
import 'package:ui_exemplo_primeiro/screens/details/componentes/title_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Image_Card(size: size),
          Title_Price(country: "Brazil", price: 440, name: "Fulana"),
          SizedBox(height: padraoPadding),
          Row(
            children: [
              SizedBox(
                  height: 84,
                  width: size.width / 2,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: corPrimaria,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20))),
                      ),
                      onPressed: () {},
                      child: Text("Comprar",
                          style:
                              TextStyle(color: Colors.white, fontSize: 20)))),
              Expanded(
                child: TextButton(
                  onPressed: null, 
                  child: Text("Detalhes", style: TextStyle(fontSize: 20, color: corSecundaria))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
