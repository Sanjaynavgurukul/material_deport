import 'package:flutter/material.dart';
import 'package:material_depo/nav_bar/nav_bar.dart';

class LandingScreen extends StatefulWidget {
  static const String routeName = '/landingScreen';

  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      drawer: const NavBar(),
      body: Container(),
    );
  }
}
