import 'package:flutter/widgets.dart';

import '../../common/app_in_app_wrapper.dart';
import '../../templates/split_screen_template.dart';
import 'onboarding_app/onboarding_app.dart';

class CustomUiSlide extends StatelessWidget {
  const CustomUiSlide();

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'Custom UI',
      leftChild: const SizedBox(),
      rightChild: Container(
        margin: const EdgeInsets.all(32.0),
        alignment: Alignment.center,
        child: const AppInAppWrapper(app: OnboardingApp()),
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
