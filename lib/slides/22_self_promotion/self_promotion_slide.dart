import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class SelfPromotionSlide extends StatefulWidget {
  const SelfPromotionSlide();

  @override
  _SelfPromotionSlideState createState() => _SelfPromotionSlideState();
}

class _SelfPromotionSlideState extends State<SelfPromotionSlide> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(initialVideoId: '5vtthFGTaSs');
  }

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'Like, Share, Subscribe',
      leftChild: const BulletList(
        items: [
          'mkobuolys.medium.com - to learn',
          'github.com/mkobuolys - to explore',
          'youtube.com/mkobuolys - to watch (soon)',
          'twitter.com/mkobuolys - to get in touch',
        ],
      ),
      rightChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'See you around!',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 16.0),
          YoutubePlayerIFrame(controller: _controller),
          const SizedBox(height: 16.0),
          Text(
            'Design Patterns toolbox, (not so) obvious patterns for Flutter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
