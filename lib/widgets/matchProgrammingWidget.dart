import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MatchProgrammingWidget extends StatelessWidget {
  final String typeChamp,
      nameFirstTeam,
      logoFirstTeam,
      nameSecondTeam,
      logoSecondTeam,
      date,
      hour,
      localisation;
  const MatchProgrammingWidget(
      {super.key,
      required this.date,
      required this.hour,
      required this.localisation,
      required this.logoFirstTeam,
      required this.logoSecondTeam,
      required this.nameFirstTeam,
      required this.nameSecondTeam,
      required this.typeChamp});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
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
            child: Center(
              child: Text(
                typeChamp,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                    fontSize: 12),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(nameFirstTeam,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF102A51),
                        fontSize: 14)),
                const SizedBox(
                  width: 8,
                ),
                Image.asset(
                  logoFirstTeam,
                  width: 20,
                  height: 20,
                ),
                const SizedBox(
                  width: 8,
                ),
                Image.asset(
                  logoSecondTeam,
                  width: 20,
                  height: 20,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(nameSecondTeam,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF102A51),
                        fontSize: 14)),
              ],
            ),
          ),
          const Divider(
            height: 4,
            color: Color(0xFFE6EAEE),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/calendar.svg', // Chemin vers votre fichier SVG
                  width: 20, // Largeur de l'icône
                  height: 20, // Hauteur de l'icône
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(date,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF292D32),
                        fontSize: 12)),
                Text(hour,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF292D32),
                        fontSize: 12)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  child: SvgPicture.asset(
                    'assets/images/Location.svg', // Chemin vers votre fichier SVG
                    width: 20, // Largeur de l'icône
                    height: 20, // Hauteur de l'icône
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(localisation,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF292D32),
                        fontSize: 12)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
