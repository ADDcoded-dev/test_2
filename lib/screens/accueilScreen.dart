import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_2/widgets/matchProgrammingWidget.dart';

import '../widgets/cardPlayerWidget.dart';

class AccueilScreen extends StatefulWidget {
  const AccueilScreen({super.key});

  @override
  State<AccueilScreen> createState() => _AccueilScreenState();
}

class _AccueilScreenState extends State<AccueilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/images/Menu.svg', // Chemin vers votre fichier SVG
                        width: 30, // Largeur de l'icône
                        height: 30, // Hauteur de l'icône
                      ),
                      Center(
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 65,
                          height: 65,
                        ),
                      ),
                      Stack(
                        children: [
                          SvgPicture.asset(
                            'assets/images/Notification 3.svg', // Chemin vers votre fichier SVG
                            width: 30, // Largeur de l'icône
                            height: 30, // Hauteur de l'icône
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Center(
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                      color: Color(0xFF4CB050),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Row(children: [
                    Text(
                      "Bienvenue ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF363853),
                          fontSize: 20),
                    ),
                    Text(
                      "Joshua",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0C8A2D),
                          fontSize: 20),
                    )
                  ])
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Matchs à venir",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF363853),
                        fontSize: 16),
                  ),
                  Text(
                    "Tous",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF4CB050),
                        fontSize: 16),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: MatchProgrammingWidget(
                typeChamp: "Champ. Camerounais 2023",
                date: "Sam 15 Mai",
                hour: ". 18:30",
                localisation: "Stade omnisport de Yde",
                nameFirstTeam: "USD",
                logoFirstTeam: "assets/images/logo.png",
                nameSecondTeam: "MC FC",
                logoSecondTeam: "assets/images/mount.png",
 
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Votre carte",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF363853),
                        fontSize: 16),
                  ),
                  Text(
                    "Tous",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF4CB050),
                        fontSize: 16),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: CardPlayerWidget(),
            )
          ],
        ),
      ),
    );
  }
}
