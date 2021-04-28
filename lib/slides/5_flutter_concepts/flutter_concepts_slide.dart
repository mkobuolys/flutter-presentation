import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class FlutterConceptsSlide extends StatefulWidget {
  const FlutterConceptsSlide();

  @override
  _FlutterConceptsSlideState createState() => _FlutterConceptsSlideState();
}

class _FlutterConceptsSlideState extends State<FlutterConceptsSlide> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: 'kpcjBD1XDwU',
      params: const YoutubePlayerParams(
        startAt: Duration(minutes: 15, seconds: 32),
        endAt: Duration(minutes: 16, seconds: 22),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'How Flutter works?',
      leftChild: const BulletList(
        items: [
          'Uses its own high-performance rendering engine',
          'Takes charge of every pixel on the screen',
          'Flutter - declarative framework',
          'Widget - a unit of composition',
        ],
      ),
      rightChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '"Everything is a Widget"',
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  fontStyle: FontStyle.italic,
                ),
          ),
          const SizedBox(height: 16.0),
          YoutubePlayerIFrame(controller: _controller),
          const SizedBox(height: 16.0),
          Text(
            'Announcing Flutter 1.0 (Flutter Live, Keynote Part 1)',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
