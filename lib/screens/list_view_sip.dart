import 'package:flutter/material.dart';

class ListViewSip extends StatefulWidget {
  const ListViewSip({super.key});

  @override
  State<ListViewSip> createState() => _ListViewSipState();
}

class _ListViewSipState extends State<ListViewSip> {
  List<String>name=["YAMAN","JEHAD","MUHANNA"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("list view sip"),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemCount: name.length,
            separatorBuilder: (context,index){
              return SizedBox(height: 10,);
            },
            itemBuilder: (context,index){
              return Container(
                height: 50,
                color: Colors.amber[500],
                child: Center(child: Text(name[index])),
              );
            }
        )
    );
  }
}
