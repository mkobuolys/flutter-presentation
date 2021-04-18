import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';
import 'teddy_example/teddy_example.dart';

class RiveSlide extends StatelessWidget {
  const RiveSlide();

  @override
  Widget build(BuildContext context) {
    return const AppInAppTemplate(
      title: 'Rive',
      leftChild: SizedBox(),
      app: TeddyExample(),
    );
  }
}
