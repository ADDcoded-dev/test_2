import 'package:flutter/material.dart';
import 'package:test_2/widgets/bottomWidget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background.png'))),
        child: OverflowBox(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF033D05).withOpacity(0.54),
                    const Color(0xFF023E08).withOpacity(0.94)
                  ]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.20,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 90,
                    height: 90,
                  ),
                ),
               const SizedBox(
                  height: 80,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Union sportive\nde douala",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 32),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Restez toujours à jour de l’actualité sportive de votre club de football préféré.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.10,),
                const Padding(
                  padding:  EdgeInsets.all(20),
                  child: BottomWidget(title: "Se connecter"),
                ),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text(
                      "Nouveau membre? ",
                      style: TextStyle(
                       color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14
                      ),
                    ),

                    Text(
                      "Créez un compt",
                        style: TextStyle(
                          color: Color(0xFF0EB83B),
                          fontWeight: FontWeight.w700,
                          fontSize: 14
                        ), 
                    )
                  ],
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
