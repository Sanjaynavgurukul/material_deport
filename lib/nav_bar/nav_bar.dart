import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Sanjay Jana'),
            accountEmail: const Text('sanjaycizmar@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://media.istockphoto.com/photos/macro-close-up-of-different-color-oil-paint-colorful-acrylic-picture-id638820876?s=612x612',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              // image: DecorationImage(
              //     fit: BoxFit.fill,
              //     image: NetworkImage(
              //         '')),
            ),
          ),
          menuItem(
            'Home',
            selected: true,
          ),
          menuItem('Materials'),
          menuItem('Create an account'),
          menuItem('Manufacturer Signup'),
          Divider(
            thickness: 1,
            color: Colors.grey.shade200,
          ),
          needHelpLabel('NEED HELP?'),
          Divider(
            thickness: 1,
            color: Colors.grey.shade200,
          ),
          menuItem('Call us 8767857647', icon: Icons.call),
          menuItem('contact@materialdepot.in', icon: Icons.mail),
          Divider(
            thickness: 1,
            color: Colors.grey.shade200,
          ),
          needHelpLabel('Follow us'.toUpperCase()),
          Divider(
            thickness: 1,
            color: Colors.grey.shade200,
          ),
          menuItem('Facebook', icon: FontAwesomeIcons.facebook),
          menuItem('Twitter', icon: FontAwesomeIcons.twitter),
          menuItem('Instagram', icon: FontAwesomeIcons.instagram),
          menuItem('Pinterest', icon: FontAwesomeIcons.pinterest),
          menuItem('YouTube', icon: FontAwesomeIcons.youtube),
          menuItem('LinkedIn', icon: FontAwesomeIcons.linkedin),
        ],
      ),
    );
  }

  Widget menuItem(String label, {bool selected = false, IconData? icon}) =>
      ListTile(
        tileColor: selected ? Colors.grey.shade200 : Colors.white,
        leading: icon != null ? Icon(icon) : null,
        title: Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        dense: true,
        onTap: () {
          Navigator.pop(context);
        },
      );

  Widget needHelpLabel(String label) => Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      );
}
