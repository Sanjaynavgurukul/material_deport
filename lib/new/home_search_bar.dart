import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CupertinoSearchTextField(
            onChanged: (String value) {
              print('The text has changed to: $value');
            },
            onSubmitted: (String value) {
              print('Submitted text: $value');
            },
          )
        ],
      ),
    );
  }
}
