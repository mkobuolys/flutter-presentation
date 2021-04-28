import 'package:flutter/widgets.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class CommunitySlide extends StatelessWidget {
  const CommunitySlide();

  @override
  Widget build(BuildContext context) {
    return CarouselTemplate(
      title: 'Community',
      leftChild: const BulletList(
        items: [
          'Open Source rocks!',
          'See you at the pub, developer',
          'Need help? We got your back!',
          'Conferences, meetups, watch parties',
          'Flutteristas',
        ],
      ),
      carouselChildren: [
        Image.asset('images/community/flutter_community.png'),
        Image.asset('images/community/pub_dev.png'),
        Image.asset('images/community/flutteristas.jpeg'),
      ],
    );
  }
}
