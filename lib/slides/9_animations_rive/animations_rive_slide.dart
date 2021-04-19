import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';
import 'teddy_example/teddy_example.dart';

class AnimationsRiveSlide extends StatelessWidget {
  const AnimationsRiveSlide();

  @override
  Widget build(BuildContext context) {
    return const AppInAppTemplate(
      title: 'Rive',
      leftChild: SizedBox(),
      app: TeddyExample(),
    );
  }
}
