import 'package:flutter/material.dart';

import '../common/social_media_footer.dart';

class TitleScreenTemplate extends StatelessWidget {
  final String title;
  final String subtitle;

  const TitleScreenTemplate({
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
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
                Expanded(
                  flex: 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: Text(
                            title,
                            style:
                                Theme.of(context).textTheme.headline1?.copyWith(
                                      color: const Color(0xFF02569B),
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        FittedBox(
                          child: Text(
                            subtitle,
                            style:
                                Theme.of(context).textTheme.headline4?.copyWith(
                                      color: const Color(0xFF02569B),
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SocialMediaHandle(),
      ],
    );
  }
}
