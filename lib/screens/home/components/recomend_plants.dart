import 'package:flutter/material.dart';
import 'package:ui_exemplo_primeiro/constants.dart';
import 'package:ui_exemplo_primeiro/screens/details/details_screen.dart';

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Fulana",
            country: "Brazil",
            price: 440,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Ciclano",
            country: "Canada",
            price: 650,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Bertrana",
            country: "Angola",
            price: 120,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.only(
          left: padraoPadding,
          top: padraoPadding / 2,
          bottom: padraoPadding * 2.5),
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(padraoPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: corPrimaria.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                            text: "$country".toUpperCase(),
                            style:
                                TextStyle(color: corPrimaria.withOpacity(0.5)))
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\n$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: corPrimaria),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
