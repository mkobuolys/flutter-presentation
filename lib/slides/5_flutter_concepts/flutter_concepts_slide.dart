import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class FlutterConceptsSlide extends StatelessWidget {
  const FlutterConceptsSlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'How Flutter works?',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
