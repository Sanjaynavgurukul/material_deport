import 'package:flutter/material.dart';
import 'package:material_depo/new/slack_body.dart';

class SlackHome extends StatelessWidget {
   SlackHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SlackBody());
  }
}
