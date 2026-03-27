import 'package:flutter/material.dart';
import 'package:my_demo_app/screens/homescreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Super Star",
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal.shade900)
    ),
      home: Homescreen(),
    );
  }
}
