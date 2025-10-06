import 'package:flutter/material.dart';

class Imege extends StatelessWidget {
  const Imege({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
          "assets/images/pexels-francesco-ungaro-1525041.jpg"
      ),
    );
  }
}
