import 'package:flutter/material.dart';
import 'package:untitled1/screens/first_scren.dart';
import 'package:untitled1/screens/grid_view_screen.dart';
import 'package:untitled1/screens/imege.dart';
import 'package:untitled1/screens/list_view_builder_screen.dart';
import 'package:untitled1/screens/list_view_screen.dart';
import 'package:untitled1/screens/list_view_sip.dart';
import 'package:untitled1/screens/login_screen.dart';
import 'package:untitled1/screens/signup_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> _pages = [
    FirstScren(),
    ListViewScreen(),
    LoginScreen(),
    SignupScreen(),
    GridViewScreen(),
    ListViewBuilderScreen(),
    ListViewSip(),
    Imege(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          print("index:$_selectedIndex");
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "list",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: "login",
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login_rounded),
            label: "Signup",
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on),
            label: "GridView",
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "list",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "list",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: "image",
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
