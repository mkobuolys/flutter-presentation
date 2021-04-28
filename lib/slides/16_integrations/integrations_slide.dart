import 'package:flutter/material.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class IntegrationsSlide extends StatelessWidget {
  const IntegrationsSlide();

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'Flutter Integrations',
      leftChild: const BulletList(
        items: [
          'Cloud - Google Firebase, AWS Amplify',
          'Design - Rive, Supernova, Figma and Adobe XD plugins',
          'CI/CD - Codemagic, Bitrise, Appcircle, VS App Center',
          'FaaS - Dart Functions Framework'
        ],
      ),
      rightChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/awesome_flutter.png'),
          const SizedBox(height: 16.0),
          Text(
            'https://github.com/Solido/awesome-flutter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
