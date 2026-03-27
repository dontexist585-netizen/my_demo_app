import 'package:flutter/material.dart';

class BuildStatsCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String sublabel;
  final Color color;
  const BuildStatsCard({super.key, required this.icon, required this.label, required this.sublabel, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: ContinuousRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16)),
      margin: EdgeInsets.all(16),
      color: Colors.white,
      elevation: 3,
      child: SizedBox(
        width: 180,
        height: 180,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:Column(
            mainAxisAlignment: .center,
            children: [
              Icon(icon,size: 64, color: color,),
              Text(label,style: TextStyle(fontSize: 24,fontWeight: .w600),),
              Text(sublabel,textAlign:.center,style: TextStyle(color: Colors.grey,fontSize: 16,fontStyle: .italic,fontWeight: .w800)),
            ],
          )
          ),
      ),
      );
  }
}
