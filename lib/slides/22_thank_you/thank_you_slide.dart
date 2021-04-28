import 'package:flutter/widgets.dart';

import '../../templates/templates.dart';

class ThankYouSlide extends StatelessWidget {
  const ThankYouSlide();

  @override
  Widget build(BuildContext context) {
    return const TitleScreenTemplate(
      title: 'Thank you!',
      subtitle: "It's time for your questions.",
    );
  }
}
