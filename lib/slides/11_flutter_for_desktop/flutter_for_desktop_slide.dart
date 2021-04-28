import 'package:flutter/widgets.dart';

import '../../common/bullet_list.dart';
import '../../templates/templates.dart';

class FlutterForDesktopSlide extends StatelessWidget {
  const FlutterForDesktopSlide();

  @override
  Widget build(BuildContext context) {
    return SplitScreenTemplate(
      title: 'Flutter for Desktop',
      leftChild: const BulletList(
        items: [
          'Stable since March, 2021',
          'Windows, macOS and Linux',
          'Flutter - the default choice for future Ubuntu apps',
        ],
      ),
      rightChild: Image.asset('images/ubuntu_flutter_installer.jpeg'),
      leftFlex: 2,
      rightFlex: 3,
    );
  }
}
