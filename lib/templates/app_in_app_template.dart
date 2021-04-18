import 'package:flutter/widgets.dart';

import 'split_screen_template.dart';

class AppInAppTemplate extends StatelessWidget {
  final String title;
  final Widget leftChild;
  final Widget app;

  const AppInAppTemplate({
    required this.title,
    required this.leftChild,
    required this.app,
  });

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: title,
      leftChild: leftChild,
      rightChild: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450.0,
            maxHeight: 800.0,
          ),
          child: ClipRect(
            child: AspectRatio(
              aspectRatio: 9 / 16,
              child: app,
            ),
          ),
        ),
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
