import 'package:flutter/widgets.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class FlutterForMobileSlide extends StatelessWidget {
  const FlutterForMobileSlide();

  @override
  Widget build(BuildContext context) {
    return CarouselTemplate(
      title: 'Flutter for Mobile',
      leftChild: const BulletList(
        items: [
          'Android and iOS',
          'Native performance',
          'Platform-specific APIs access',
          'Add-to-app',
        ],
      ),
      carouselChildren: [
        Image.asset(
          'images/flutter_for_mobile/flutter_architecture.png',
          scale: 0.75,
        ),
        Image.asset(
          'images/flutter_for_mobile/platform_channels.png',
          scale: 0.75,
        ),
      ],
    );
  }
}
