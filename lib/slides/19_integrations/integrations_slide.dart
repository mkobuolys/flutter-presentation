import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class IntegrationsSlide extends StatelessWidget {
  const IntegrationsSlide();

  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
      title: 'Flutter Integrations',
      leftChild: SizedBox(),
      rightChild: SizedBox(),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
