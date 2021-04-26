import 'package:flutter/widgets.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class FlutterComparisonSlide extends StatelessWidget {
  const FlutterComparisonSlide();

  @override
  Widget build(BuildContext context) {
    return CarouselTemplate(
      title: 'Flutter vs React Native',
      leftChild: const BulletList(
        items: [
          'Skia vs JavaScript Bridge',
          'React Native - larger community, but for how long?',
        ],
      ),
      carouselChildren: [
        Image.asset('images/flutter_vs_rn/rn_architecture.png'),
        Image.asset('images/flutter_vs_rn/google_trends.png'),
        Image.asset('images/flutter_vs_rn/has_flutter_passed_rn.png'),
      ],
    );
  }
}
