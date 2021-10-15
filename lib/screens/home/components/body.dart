import 'package:flutter/material.dart';
import 'package:ui_exemplo_primeiro/constants.dart';
import 'package:ui_exemplo_primeiro/screens/home/components/featured_plants.dart';
import 'package:ui_exemplo_primeiro/screens/home/components/header_with_searchbox.dart';
import 'package:ui_exemplo_primeiro/screens/home/components/recomend_plants.dart';
import 'package:ui_exemplo_primeiro/screens/home/components/title_with_more_btn.dart';

// corpo do appBar
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recomendados'),
          RecomendPlants(),
          TitleWithMoreBtn(title: 'Destaques'),
          FeaturedPlants(),
          SizedBox(height: padraoPadding),
        ],
      ),
    );
  }
}