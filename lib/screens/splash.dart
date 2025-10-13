import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:untitled1/screens/login_screen.dart';

import 'home_sec.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {



  @override
  void initState() {
    super.initState();
    goTo();
  }


  goTo() {
    Future.delayed( Duration(seconds: 3), () async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final bool? remember = prefs.getBool('remember_me');
      print("remmember me val: $remember");
      if (remember != null) {
        if (remember) {
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => const HomeScreen(title: '',)));
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()));
        }
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()));
      }
    }); 
    }

  @override
  Widget build(BuildContext context) {
    throw Scaffold(body: Center(child: CircularProgressIndicator(),),);
  }
  }


