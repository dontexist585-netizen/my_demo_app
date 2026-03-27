import 'package:flutter/material.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text("Home Page",style: TextStyle(color: Colors.white,fontWeight: .w800,fontSize: 32),),
      centerTitle:  true,
      expandedHeight: 250,
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(64),
          bottomLeft: Radius.circular(64),
        ),
      ),
      actions: [Icon(Icons.notifications,color: Colors.white,)],
      backgroundColor: Colors.teal.shade700,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: .topCenter,
              end: .bottomStart,
              colors: [Color(0xFF004D40), Color(0xFF00897B)],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 8,
                left: 16,
                child: Icon(
                  Icons.mediation_outlined,
                  color: Colors.black.withValues(alpha: 0.1),
                  size: 230,
                ),
              ),
              Positioned(
                bottom: 8,
                right: 16,
                child: Icon(
                  Icons.museum_rounded,
                  color: Colors.black.withValues(alpha: 0.1),
                  size: 115,
                ),
              ),
              Padding(
                padding: const EdgeInsetsGeometry.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                child:const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Welcome,",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: .w600,
                      ),
                    ),
                    Text(
                      "User",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: .w800,
                      ),
                    ),
                    Text(
                      "Have a great day",
                      style: TextStyle(
                        fontStyle: .italic,
                        color: Colors.grey,
                        fontSize: 24,
                        fontWeight: .w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
