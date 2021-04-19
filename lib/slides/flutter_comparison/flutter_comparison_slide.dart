import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class FlutterComparisonSlide extends StatelessWidget {
  const FlutterComparisonSlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'Flutter vs React Native',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
