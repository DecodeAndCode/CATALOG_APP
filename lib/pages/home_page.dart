import 'package:flutter/material.dart';

import '../Widgets/drawer.dart';

//day 11 learned about contraints and context
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Chiranjeev";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text(context.runtimeType.toString()),
        ),
      ),
        // Container(
        // constraints: BoxConstraints(
        //   minHeight: 70,
        //   maxHeight: 200,
        //   minWidth: 70,
        //   maxWidth: 200,
        // ),
        // color: Colors.green,
        // child: Container(
        //   height: 10,
        //   width: 20,
        //   color: Colors.amber,
        // ),
        // ),
      drawer: MyDrawer(),
    );
  }
}