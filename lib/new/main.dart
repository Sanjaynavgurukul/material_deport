import 'package:flutter/material.dart';
import 'package:material_depo/new/slack_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Slack',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
              subtitle1: TextStyle(color: Colors.black, fontFamily: "Aveny")),
          textTheme: TextTheme(subtitle1: TextStyle(color: Colors.black))),
      home: new SlackHome(),
    );
  }
}
