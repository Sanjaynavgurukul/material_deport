import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HowItsWork extends StatelessWidget {
  const HowItsWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade100.withOpacity(0.2),
      padding: const EdgeInsets.only(top:40,bottom: 30,left: 18,right: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'How it\'s work',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: const [
              Icon(
                FontAwesomeIcons.search,
                size: 40,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Discover your favourite brands and materials!',
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: const [
              Icon(
                FontAwesomeIcons.solidHandPointUp,
                size: 40,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Place your order on one click!',
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: const [
              Icon(
                FontAwesomeIcons.box,
                size: 40,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Get delivery at your doorstep in 48 hours!',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 200,
            padding: const EdgeInsets.all(12),
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              'Get More Details',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
