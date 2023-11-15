import 'package:flutter/material.dart';
import 'package:test_2/screens/accueilScreen.dart';
import 'package:test_2/screens/emailAuthScreen.dart';
import 'package:test_2/screens/phoneAuthScreen.dart';
import 'package:test_2/screens/splascreen.dart';
import 'package:test_2/utils/constant.dart';

class Presentation extends StatefulWidget {
  const Presentation({super.key});

  @override
  State<Presentation> createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        title: const Text("Test N°2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SplashScreen()));
                },
                child: Text("SplashScreen",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                        fontSize: 16))),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PhoneAuthScreen()));
                },
                child: Text("PhoneAuth Screen",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                        fontSize: 16))),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const EmailAuthScreen()));
                },
                child: Text("EmailAuth Screen",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                        fontSize: 16))),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AccueilScreen()));
                },
                child: Text("Accueil Screen",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                        fontSize: 16))),
          ],
        ),
      ),
    );
  }
}
