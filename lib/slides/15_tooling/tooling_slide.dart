import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class ToolingSlide extends StatelessWidget {
  const ToolingSlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'Tooling',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
