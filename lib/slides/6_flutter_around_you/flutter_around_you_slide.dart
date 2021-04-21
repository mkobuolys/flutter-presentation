import 'package:flutter/material.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class FlutterAroundYouSlide extends StatelessWidget {
  const FlutterAroundYouSlide();

  @override
  Widget build(BuildContext context) {
    return CarouselTemplate(
      title: 'Flutter around you',
      leftChild: const BulletList(
        items: [
          'Google products - Google Ads, Google Pay, Google Nest Hub, Stadia',
          '150,000+ apps published to the App Store/Google Play Store',
          "World's largest companies say YES to Flutter",
        ],
      ),
      carouselChildren: [
        Image.asset('images/apps/google_assistant.png'),
        Image.asset('images/apps/google_ads.png'),
        Image.asset('images/apps/stadia.png'),
        Image.asset('images/apps/ebay.png'),
        Image.asset('images/apps/alibaba.png'),
        Image.asset('images/apps/the_new_york_times.png'),
        Image.asset('images/apps/reflectly.png'),
        Image.asset('images/apps/insight_timer.png'),
        Image.asset('images/apps/nubank.png'),
        Image.asset('images/apps/philips.png'),
        Image.asset('images/apps/realtor.png'),
        Image.asset('images/apps/hamilton.png'),
      ],
      autoplay: true,
    );
  }
}
