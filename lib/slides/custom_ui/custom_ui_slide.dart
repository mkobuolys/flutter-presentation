import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';
import 'onboarding_app/onboarding_app.dart';

class CustomUiSlide extends StatelessWidget {
  const CustomUiSlide();

  @override
  Widget build(BuildContext context) {
    return const AppInAppTemplate(
      title: 'Custom UI',
      leftChild: SizedBox(),
      app: OnboardingApp(),
    );
  }
}
