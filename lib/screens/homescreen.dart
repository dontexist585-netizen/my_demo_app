import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Tutedude Assignment 4"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(child: Text("Welcome to my App")),
    );
  }
}
