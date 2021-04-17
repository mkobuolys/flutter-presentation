import 'package:flutter/widgets.dart';

import '../../common/app_in_app_wrapper.dart';
import '../../templates/templates.dart';
import 'teddy_example/teddy_example.dart';

class RiveSlide extends StatelessWidget {
  const RiveSlide();

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'Rive',
      leftChild: const SizedBox(),
      rightChild: Container(
        margin: const EdgeInsets.all(32.0),
        alignment: Alignment.center,
        child: const AppInAppWrapper(app: TeddyExample()),
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
