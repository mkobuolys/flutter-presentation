import 'package:flutter/material.dart';
import 'package:web_browser/web_browser.dart';

import '../../templates/templates.dart';

class FlutterForWebSlide extends StatelessWidget {
  const FlutterForWebSlide();

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'Flutter for Web',
      leftChild: const SizedBox(),
      rightChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: FractionallySizedBox(
              child: WebBrowser(
                initialUrl: 'https://flutterplasma.dev/',
                javascriptEnabled: true,
                interactionSettings: WebBrowserInteractionSettings(
                  topBar: null,
                  bottomBar: null,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            'https://flutterplasma.dev',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
