import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  List<String> name = ["YAMAN", "JEHAD", "MUHANNA"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView"), centerTitle: true),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300),
       // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         // crossAxisCount: 3,
       // ),
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              color: Colors.amber,
              child: Center(child: Text(name[index])),
            ),
          );
        },
      ),
    );
  }
}
