import 'package:flutter/material.dart';

import '../common/social_media_footer.dart';

class SplitScreenTemplate extends StatelessWidget {
  final String title;
  final Widget leftChild;
  final Widget rightChild;
  final int leftFlex;
  final int rightFlex;

  const SplitScreenTemplate({
    required this.title,
    required this.leftChild,
    required this.rightChild,
    required this.leftFlex,
    required this.rightFlex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: leftFlex,
          child: Container(
            padding: const EdgeInsets.all(32.0),
            color: const Color(0xFF02569B),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 32.0),
                Expanded(child: leftChild),
              ],
            ),
          ),
        ),
        Expanded(
          flex: rightFlex,
          child: Column(
            children: [
              Expanded(child: rightChild),
              const SocialMediaHandle(),
            ],
          ),
        )
      ],
    );
  }
}
