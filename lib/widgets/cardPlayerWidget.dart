import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardPlayerWidget extends StatelessWidget {
  const CardPlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 267,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: 30,
            width: MediaQuery.of(context).size.width * 0.55,
            decoration: const BoxDecoration(
              color: Color(0xFF4CB050),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(27),
              ),
            ),
            child: const Center(
              child: Text(
                "Nassara card",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF),
                    fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/images/logo.png',
                width: 20,
                height: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                  image: AssetImage(
                                "assets/images/profile.png",
                              ))),
                        ),
                        SvgPicture.asset(
                          'assets/images/Ellipse 134.svg', // Chemin vers votre fichier SVG
                          width: 95, // Largeur de l'icône
                          height: 95, // Hauteur de l'icône
                        )
                      ],
                    ),
                    const Text(
                      "Erick Ngono",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF000000),
                          fontSize: 18),
                    ),
                    const Row(
                      children: [
                        Text(
                          "Card id: ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF000000),
                              fontSize: 13),
                        ),
                        Text(
                          "523563243",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF4CB050),
                              fontSize: 13),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text("Saison 2023 - 2024",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF292D32),
                            fontSize: 12)),
                    const SizedBox(
                      width: 200,
                      child: Divider(
                        height: 4,
                        color: Color(0xFFE6EAEE),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/bet.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/dn.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/fifa.png',
                              width: 40,
                              height: 40,
                            ),
                            Image.asset(
                              'assets/images/sport.png',
                              width: 80,
                              height: 80,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/qrcode.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
