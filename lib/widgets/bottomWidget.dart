import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  final String title;
  const BottomWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: const Color(0xFF0EB83B), borderRadius: BorderRadius.circular(8)),
      child: Center(
          child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14),
      )),
    );
  }
}
