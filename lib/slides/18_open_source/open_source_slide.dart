import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class OpenSourceSlide extends StatelessWidget {
  const OpenSourceSlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'Open source',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
