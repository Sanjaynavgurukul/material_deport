import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_depo/screens/landing/landing_screen.dart';
import 'package:material_depo/theme/theme_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6),
        () => Navigator.pushNamed(context, LandingScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light
    ));
    return Scaffold(
      backgroundColor: Colors.black45,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              'assets/logo.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Material\nDeport',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 34,
                  letterSpacing: 1,
                  color: theme_color,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 18,
            ),
            SizedBox(
                width: 53,
                child: LinearProgressIndicator(
                  color: theme_color,
                  backgroundColor: Colors.black,
                )),
            const Spacer(),
            const Text(
              'Built with ❤️ in India',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                letterSpacing: 1,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
