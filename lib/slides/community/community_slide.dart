import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class CommunitySlide extends StatelessWidget {
  const CommunitySlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'Community',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
