import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class FlutterForToasterSlide extends StatelessWidget {
  const FlutterForToasterSlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'Flutter for toaster',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
