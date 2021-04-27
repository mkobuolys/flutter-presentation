import 'package:flutter/material.dart';
import 'package:web_browser/web_browser.dart';

class WebBrowserDialog extends StatelessWidget {
  final String url;

  const WebBrowserDialog({
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
          Text(
            url,
            style: Theme.of(context).textTheme.headline4,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: WebBrowser(
                initialUrl: url,
                javascriptEnabled: true,
                interactionSettings: const WebBrowserInteractionSettings(
                  topBar: null,
                  bottomBar: null,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
