import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class FutureOfFlutterSlide extends StatelessWidget {
  const FutureOfFlutterSlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'Future of Flutter',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
