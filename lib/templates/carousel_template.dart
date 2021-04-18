import 'package:flutter/widgets.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

import 'split_screen_template.dart';

class CarouselTemplate extends StatelessWidget {
  final String title;
  final Widget leftChild;
  final List<Widget> carouselChildren;
  final bool autoplay;

  const CarouselTemplate({
    required this.title,
    required this.leftChild,
    required this.carouselChildren,
    this.autoplay = false,
  });

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: title,
      leftChild: leftChild,
      rightChild: FractionallySizedBox(
        widthFactor: 0.9,
        heightFactor: 0.9,
        child: Swiper(
          itemBuilder: (context, index) => carouselChildren[index],
          itemCount: carouselChildren.length,
          control: const SwiperControl(color: Color(0xFF02569B)),
          autoplay: autoplay,
        ),
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
