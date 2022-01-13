import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:40,bottom: 30,left: 18,right: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'About Material Depot',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            about,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }

  final String about =
      'Engineers landing in architecture and interior space isn\'t common. But our founders started to love the industry despite the many glooming challenges being faced by their hard working colleagues. Discovering material and sampling turned out to be their personal nightmare. They began a journey that would take them months to battle and iron out the tiniest of details with one aim-- Simplify how Architects and Designers select material.';
}
