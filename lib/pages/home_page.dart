import 'package:flutter/material.dart';

import '../Widgets/drawer.dart';

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
          child: Text("Welcome to $days Days of flutter With $name " + name),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}