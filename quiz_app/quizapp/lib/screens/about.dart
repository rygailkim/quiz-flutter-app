import 'package:flutter/material.dart';
import 'package:quizapp/theme.dart';

import '../shared/bottom_nav.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('About Flutter Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'Flutter Quiz is made by Ryanne Gail Kim, in partial fulfillment for Applications Development and Emerging Technologies (CS106).',
            ),
            const Spacer(),
            Text(
                'Huge credits go to fireship.io for his course in Flutter and Firebase.'),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
