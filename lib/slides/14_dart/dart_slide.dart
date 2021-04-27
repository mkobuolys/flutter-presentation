import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class DartSlide extends StatefulWidget {
  const DartSlide();

  @override
  _DartSlideState createState() => _DartSlideState();
}

class _DartSlideState extends State<DartSlide> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(initialVideoId: '5F-6n_2XWR8');
  }

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'Dart',
      leftChild: const BulletList(
        items: [
          'JIT and AOT compilation',
          'Optimized for UI',
          'Fast on all platforms',
          'Sound null safety',
        ],
      ),
      rightChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          YoutubePlayerIFrame(controller: _controller),
          const SizedBox(height: 16.0),
          Text(
            'Why Flutter uses Dart',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
