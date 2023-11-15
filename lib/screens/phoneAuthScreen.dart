import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_2/utils/constant.dart';

import '../widgets/bottomWidget.dart';

class PhoneAuthScreen extends StatefulWidget {
  const PhoneAuthScreen({super.key});

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  // Initial Selected Value
  String dropdownvalue = 'Orange CM';

  // List of items in our dropdown menu
  var items = [
    'Orange CM',
    'MTN CM',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
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
                    Color(0xFF033D05).withOpacity(0.54),
                    Color(0xFF023E08).withOpacity(0.94)
                  ]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 65,
                    height: 65,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Connectez-vous",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Connectez-vous à votre compte grâce à votre numéro de téléphone ou votre adresse email",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color(0xFF689471),
                        borderRadius: BorderRadius.circular(36)),
                    child: Row(
                      children: [
                        Container(
                          width: 99,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(36)),
                          child: Center(
                            child: Text(
                              "Télephone",
                              style: TextStyle(
                                  color: Color(0xFF36533B),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                        Container(
                          width: 99,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(36)),
                          child: Center(
                            child: Text(
                              "Email",
                              style: TextStyle(
                                  color: Color(0xFF36533B),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, right: 20, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF527B5B),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8, top: 8),
                          child: Text(
                            "Numero de télephone",
                            style: TextStyle(
                                color: Color(0xB2FFFFFF),
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              DropdownButton(
                                underline: Container(),
                                // Initial Value
                                value: dropdownvalue,
                                dropdownColor: Color(0xFF527B5B),
                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(
                                      items,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                },
                              ),
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "+237",
                                    hintStyle: TextStyle(
                                        color: Color(0xB2FFFFFF),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, right: 20, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF527B5B),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8, top: 8),
                          child: Text(
                            "Mot de passe",
                            style: TextStyle(
                                color: Color(0xB2FFFFFF),
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.white,),
                              /*suffixIcon: Expanded(
                                child: SvgPicture.asset(
                                  "assets/images/Eye-slash.svg",
                                  width: 10.0,
                                  height: 10.0,
                                ),
                              ),*/
                              hintText: ".......",
                              hintStyle: TextStyle(
                                  color: Color(0xB2FFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "J’ai oublié mon mot de passe",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: BottomWidget(title: "Se connecter"),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Nouveau membre? ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                    Text(
                      "Créez un compte",
                      style: TextStyle(
                          color: Color(0xFF0EB83B),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
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
