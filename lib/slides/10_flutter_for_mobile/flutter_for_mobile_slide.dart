import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class FlutterForMobileSlide extends StatelessWidget {
  const FlutterForMobileSlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'Flutter for mobile',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
