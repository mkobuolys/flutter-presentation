import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class TransitionToFlutterSlide extends StatelessWidget {
  const TransitionToFlutterSlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'Transition to Flutter',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
