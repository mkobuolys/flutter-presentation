import 'package:flutter/widgets.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class FlutterForToasterSlide extends StatelessWidget {
  const FlutterForToasterSlide();

  @override
  Widget build(BuildContext context) {
    return CarouselTemplate(
      title: 'Flutter for Toaster',
      leftChild: const BulletList(
        items: [
          'Cars',
          'TVs',
          'Microcomputers',
          '(You name it) - probably coming soon',
        ],
      ),
      carouselChildren: [
        Image.asset('images/flutter_for_toaster/toyota.png'),
        Image.asset('images/flutter_for_toaster/apple_tv.gif'),
        Image.asset('images/flutter_for_toaster/raspberry_pi.jpeg'),
      ],
    );
  }
}
