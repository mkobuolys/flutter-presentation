import 'package:flutter/material.dart';

class TitleScreenTemplate extends StatelessWidget {
  const TitleScreenTemplate();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: const Color(0xFF02569B),
              height: 200.0,
            ),
          ),
          Expanded(
            child: Container(
              color: const Color(0xFF0175C2),
              height: 200.0,
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            flex: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Let's talk about Flutter",
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: const Color(0xFF02569B),
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Mangirdas Kazlauskas, GDE for Flutter & Dart',
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: const Color(0xFF02569B),
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
