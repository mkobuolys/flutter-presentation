import 'package:flutter/material.dart';

import 'screens/onboarding/onboarding.dart';

class OnboardingApp extends StatelessWidget {
  const OnboardingApp();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Let me introduce you to Flutter',
          home: Onboarding(
            screenHeight: constraints.maxHeight,
            screenWidth: constraints.maxWidth,
          ),
        );
      },
    );
  }
}
