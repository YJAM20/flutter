import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Imege extends StatelessWidget {
  const Imege({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: SvgPicture.asset("assets/svg/Shape.svg", width: 100, height: 100),
      ) ,
    );
  }
}
