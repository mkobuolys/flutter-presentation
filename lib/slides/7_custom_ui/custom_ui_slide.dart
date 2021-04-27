import 'dart:math';

import 'package:flutter/material.dart';

import '../../common/bullet_list.dart';
import '../../common/web_browser_dialog.dart';
import '../../templates/templates.dart';
import 'onboarding_app/onboarding_app.dart';

class CustomUiSlide extends StatefulWidget {
  const CustomUiSlide();

  @override
  _CustomUiSlideState createState() => _CustomUiSlideState();
}

class _CustomUiSlideState extends State<CustomUiSlide>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _rotateAnimation = Tween(begin: 0.0, end: pi * 2).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  void _rotate() =>
      _controller.isCompleted ? _controller.reverse() : _controller.forward();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline2?.copyWith(
          color: Colors.white,
          height: 1.5,
        );

    return Transform.rotate(
      angle: _rotateAnimation.value,
      child: AppInAppTemplate(
        title: 'Custom UI',
        leftChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BulletList(
              items: [
                'Material and Cupertino out of the box',
                'Default look sucks? Customise!',
                'Motion creates emotion',
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\u2022', style: textStyle),
                const SizedBox(width: 8.0),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => const WebBrowserDialog(
                          url: 'https://gallery.flutter.dev/',
                        ),
                      );
                    },
                    child: Text(
                      'Flutter Gallery',
                      style: textStyle?.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: _rotate,
              child: const Text(
                'Egg',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        app: const OnboardingApp(),
      ),
    );
  }
}
