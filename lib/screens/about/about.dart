import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);
  static const routeName = '/about';

  final String lineOne = 'Our team is a fusion of minds that come from diverse training. We have a ferocious problem solver, a brilliant coder, a design guru, and an ethical communications manager.';
  final String lineTwo = 'Our founders’ link with material sampling isn’t new. Just a few years ago they described it as a “nightmare”. While working in the construction space, they went through never-ending catalogs to find just 20-30 items they needed. What ensued? More catalogues, because they were unclear and outdated. They had to face multiple delayed projects, which in this business means a lot of lost money.';
  final String lineThree = 'Then and there, the idea of Material Depot was born. Our most important aim is to simplify Material search and sampling for those who we trust with the job - Architects and Interior designers.';
  final String lineFour = 'Material Depot came into existence after works and reworks. Each aspect of the business was carefully thought out and built around with a 3S objective - Simplify, Search, Sustainably.';
  final String lineFive = 'It is simple for everyone to understand and use. It is customer-focused, and increasingly so as we listen to every client\'s specific needs. And to tie it together, Material Depot is extremely smart. It does exactly what it promises—Makes your life easier.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: const Text('About Us'),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/logo.png',
            width: 80,
            height: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Material Depot',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24, letterSpacing: 1, fontWeight: FontWeight.bold),
          ),
          Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                '$lineOne\n\n$lineTwo\n\n$lineThree\n\n$lineFour\n\n$lineFive',
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 18, color: Colors.grey),
              ))
        ],
      ),
    );
  }
}
