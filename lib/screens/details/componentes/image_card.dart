import 'package:flutter/material.dart';
import 'package:ui_exemplo_primeiro/constants.dart';
import 'package:ui_exemplo_primeiro/screens/details/componentes/icon_card.dart';

// ignore: camel_case_types
class Image_Card extends StatelessWidget {
  const Image_Card({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: padraoPadding * 3
      ),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: padraoPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                        padding:
                            EdgeInsets.symmetric(horizontal: padraoPadding),
                      ),
                    ),
                    Spacer(),
                    IconsCard(icone: Icons.bedtime_outlined),
                    IconsCard(icone: Icons.brightness_medium_outlined),
                    IconsCard(icone: Icons.share),
                    IconsCard(icone: Icons.water),
                    
                  ],
                ),
              ),
            ),
            Container(
              child: Center(child: Text('Imagem')),
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: corPrimaria.withOpacity(0.29))
                ],
                color: corPrimaria,
                // image: DecorationImage(
                //fit: BoxFit.cover ,
                // alignment: Alignment.certerLeft,
                //image: AssetImage("assets\images\image_1.png")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}