import 'package:flutter/material.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class ToolingSlide extends StatelessWidget {
  const ToolingSlide();

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'Tooling',
      leftChild: const BulletList(
        items: [
          'Flutter SDK',
          'Dart DevTools',
          'Multiple IDE support',
          'Xcode for Apple platform-specific tasks',
        ],
      ),
      rightChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/dart_dev_tools.gif'),
          const SizedBox(height: 16.0),
          Text(
            'Dart DevTools',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
