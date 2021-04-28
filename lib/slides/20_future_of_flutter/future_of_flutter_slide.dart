import 'package:flutter/widgets.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class FutureOfFlutterSlide extends StatelessWidget {
  const FutureOfFlutterSlide();

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'Future of Flutter',
      leftChild: const BulletList(
        items: [
          'Trending for several years straight',
          'The best choice for cross-platform app development?',
          'Big companies are investing in Flutter',
          'The increasing amount of job opportunities',
        ],
      ),
      rightChild: Image.asset('images/flutter_is_the_future.png'),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
