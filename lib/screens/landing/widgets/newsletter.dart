import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewsLetter extends StatelessWidget {
  const NewsLetter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, bottom: 30, left: 18, right: 18),
      color: Colors.grey.shade200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Sign Up For Our Weekly Newsletter',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            about,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
          ), const SizedBox(
            height: 18,
          ), const SizedBox(
            height: 18,
          ),
          Container(
            child: Row(
              children: [
                 Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(right: 8),
                    child:  const TextField(
                      style:  TextStyle(
                          height: 1.0,
                          color: Colors.black
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(20),
                        hintText: 'Your email',
                        filled: true, // <- this is required.
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 54,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: const Text(
                      'Subscribe',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  final String about =
      'Join 2000 other designers and architects to stay updated on new launches,\n latest additions and announcements from Material Depot.\n Don\'t worry, we never spam you!';
}
