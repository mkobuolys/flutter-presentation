import 'package:flutter/material.dart';

import '../../common/bullet_list.dart';
import '../../common/web_browser_dialog.dart';
import '../../templates/templates.dart';
import 'teddy_example/teddy_example.dart';

class AnimationsRiveSlide extends StatelessWidget {
  const AnimationsRiveSlide();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline2?.copyWith(
          color: Colors.white,
          height: 1.5,
        );

    return AppInAppTemplate(
      title: 'Custom UI++',
      leftChild: Column(
        children: [
          const BulletList(
            items: [
              'Every design is made of straight lines and curves',
              'Advanced interactions with Rive',
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
                        url: 'https://flutter.gskinner.com/vignettes/',
                      ),
                    );
                  },
                  child: Text(
                    'Flutter Vignettes',
                    style: textStyle?.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      app: const TeddyExample(),
    );
  }
}
