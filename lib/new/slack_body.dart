import 'package:flutter/material.dart';
import 'package:material_depo/new/home_search_bar.dart';

class SlackBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          child: const HomeSearchBar(),
          height: deviceSize.height * 0.10,
        ),
        // Flexible(child: ChatList())
      ],
    );
  }
}
