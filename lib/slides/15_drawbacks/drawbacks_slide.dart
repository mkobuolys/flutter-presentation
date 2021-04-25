import 'package:flutter/widgets.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class DrawbacksSlide extends StatefulWidget {
  const DrawbacksSlide();

  @override
  _DrawbacksSlideState createState() => _DrawbacksSlideState();
}

class _DrawbacksSlideState extends State<DrawbacksSlide> {
  bool _showDrawbacks = false;

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'Drawbacks of Flutter',
      leftChild: GestureDetector(
        onTap: () {
          setState(() {
            _showDrawbacks = !_showDrawbacks;
          });
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: _showDrawbacks
              ? const BulletList(
                  key: ValueKey('Drawbacks'),
                  items: [
                    'Relatively immature',
                    'No official guidelines for app architecture',
                    'Cross-platform development is challenging',
                    'Flutter Web status is more like a "stable beta"',
                  ],
                )
              : const BulletList(
                  key: ValueKey('None'),
                  items: ['None'],
                ),
        ),
      ),
      rightChild: FractionallySizedBox(
        widthFactor: 0.9,
        child: Image.asset('images/drawbacks_of_flutter.png'),
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
