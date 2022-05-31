import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Welcome Bipana',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'What would you like to play?',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        const SizedBox(width: 18.0),
        const CircleAvatar(
          radius: 35,
          //child: Image.asset("assets/images/headIcon.jpg"),
          backgroundImage: NetworkImage(
            'https://cdn2.myminifactory.com/assets/object-assets/5f435a90d22ba/images/720X720-viper-avatar.jpg',
          ),
        ),
      ],
    );
  }
}
