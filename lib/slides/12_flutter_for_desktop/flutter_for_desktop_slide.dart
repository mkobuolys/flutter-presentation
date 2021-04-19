import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class FlutterForDesktopSlide extends StatelessWidget {
  const FlutterForDesktopSlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'Flutter for desktop',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
