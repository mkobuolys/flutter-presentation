import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class SelfPromotionSlide extends StatelessWidget {
  const SelfPromotionSlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'Like, share, subscribe',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
