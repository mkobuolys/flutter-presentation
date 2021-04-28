import 'package:flutter/widgets.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class TransitionToFlutterSlide extends StatelessWidget {
  const TransitionToFlutterSlide();

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'Transition to Flutter',
      leftChild: const BulletList(
        items: [
          'Previous OOP background saves the day',
          'Native development experience is not required but recommended',
          'No mindset shift for Web devs',
        ],
      ),
      rightChild: Image.asset('images/transition_to_flutter.png'),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
