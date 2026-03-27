import 'package:flutter/material.dart';

class BuildLabel extends StatelessWidget {
  final String heading;
  const BuildLabel({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
      child: Row(
        children: [
          Text(textAlign: .start,heading,style: TextStyle(fontSize: 32,fontWeight: .w800),),
        ],
      ),
    );
  }
}
