import 'package:flutter/material.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class AboutMeSlide extends StatelessWidget {
  const AboutMeSlide();

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'About me',
      leftChild: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          BulletList(
            items: [
              'Software Engineer from Lithuania',
              'No prior mobile app development experience before Flutter',
              'Using Flutter since v0.10.2',
              'Technical writter',
              'Flutter & Dart GDE',
            ],
          ),
          Text(
            '* Finished the Snake game on Nokia 3310, twice!',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      rightChild: FractionallySizedBox(
        widthFactor: 0.5,
        child: Image.asset('images/about_me.jpg'),
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
