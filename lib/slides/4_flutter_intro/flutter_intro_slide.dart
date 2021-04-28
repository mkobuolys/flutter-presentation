import 'package:flutter/material.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class FlutterIntroSlide extends StatelessWidget {
  const FlutterIntroSlide();

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      leftChild: Column(
        children: const [
          _Title(),
          SizedBox(height: 32.0),
          Expanded(
            child: BulletList(
              items: [
                'Free and open-source UI toolkit to build cross-platform applications',
                'First public release in 2017',
                'Built with C, C++, Dart, and Skia',
              ],
            ),
          ),
        ],
      ),
      rightChild: const FlutterLogo(
        size: 300,
        style: FlutterLogoStyle.stacked,
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: RichText(
        text: TextSpan(
          text: 'What is ',
          style: Theme.of(context).textTheme.headline1?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
          children: const [
            TextSpan(
              text: 'love',
              style: TextStyle(decoration: TextDecoration.lineThrough),
            ),
            TextSpan(text: ' Flutter?')
          ],
        ),
      ),
    );
  }
}
