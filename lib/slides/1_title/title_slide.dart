import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class TitleSlide extends StatelessWidget {
  const TitleSlide();

  @override
  Widget build(BuildContext context) {
    return const TitleScreenTemplate(
      title: 'Let me introduce you to Flutter',
      subtitle:
          'Mangirdas Kazlauskas, Google Developer Expert for Flutter & Dart',
    );
  }
}
