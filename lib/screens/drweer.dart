import 'package:flutter/material.dart';

class Drweer extends StatefulWidget {
  const Drweer({super.key});

  @override
  State<Drweer> createState() => _DrweerState();
}

class _DrweerState extends State<Drweer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drwer"), centerTitle: true,),
      drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(decoration: BoxDecoration(color: Colors.pink),
                child: Text("prof"),),
              ListTile(
                title: const Text('Business'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Business'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Business'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )
      ),
    );
  }
}
