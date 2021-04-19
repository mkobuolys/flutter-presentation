import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class DesignSystemSlide extends StatelessWidget {
  const DesignSystemSlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'Design system',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
