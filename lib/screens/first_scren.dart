import 'package:flutter/material.dart';

class FirstScren extends StatelessWidget {
  const FirstScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " Medium ",
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.normal,
            color: Colors.black87,
          ),
        ),
        centerTitle: false,
        actions: [Icon(Icons.abc_rounded),Icon(Icons.search), Icon(Icons.account_circle)],
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Human stories & ideas",
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "A place to read, write, and deepen your understanding",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "am",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black, width: 10),
                  ),
                  child: Center(
                    child: Text("YJAM", style: TextStyle(color: Colors.black)),
                  ),
                ),

                Text(
                  "am",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
