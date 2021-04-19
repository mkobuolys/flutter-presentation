import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class DartSlide extends StatelessWidget {
  const DartSlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'Dart',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
